# Processes a CSV play-by-play of a single game. Usage: process_csv.rb path/to/file.csv Opponent mm/dd/yyyy
require 'csv'

puts Rails.env

def create_pass(row, drive)
  play = create_play(row, drive)
  play.pass_play = PassPlay.new(
    pass_concept: PassConcept.find_by(row["Play"]))
  if row["Complete"] == "T" || row["Complete"] == "F"
    play.pass_play.thrown = true
    play.pass_play.complete = row["Complete"] == "T"  
  end
  play.save
end

def create_play(row, drive)
  puts "Creating play"
  play = Play.new(
    quarter: row["Quarter"],
    time: row["Time"],
    line_of_scrimmage: row["LOS"],
    down: row["Down"],
    distance: row["Distance"],
    hash_mark: row["Hash"],
    drive: drive,
    formation: Formation.find_by(name: row["Formation"]),
    gain: row["Gain"],
    quarterback: Player.find_by(last_name: row["Quarterback"]),
    notes: row["Notes"],
    formation_strength: row["Strength"])
  play.valid?
  puts play.errors
  play.save
  play
end

def create_run(row, drive)
  play = create_play(row, drive)
  play.run_play = RunPlay.new(
    ballcarrier: Player.find_by(last_name: row["Ballcarrier"]),
    run: Run.find_by(name: row["Play"]),
    direction: row["Direction"])
  play.save
end

file = ARGV[0]

puts "Creating game"
puts ARGV

ActiveRecord::Base.transaction do
  game = Game.create(date: Date.parse(ARGV[2]), season: Season.current, opponent: Opponent.find_by(name: ARGV[1]))

  puts "Processing drive 1"
  current_drive_count  = 1
  current_drive = Drive.create(game: game)
  CSV.foreach(file, headers: true) do |row|
    puts row
    if row["Drive"].to_i != current_drive_count
      current_drive = Drive.create(game: game)
      current_drive_count += 1
      puts "Processing drive " + current_drive_count.to_s
    end
    if row["PlayType"] == "Run"
      create_run(row, current_drive)
    elsif row["PlayType"] == "Pass"
      create_pass(row, current_drive)
    end
  end
end
