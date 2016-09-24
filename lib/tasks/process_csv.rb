# Processes a CSV play-by-play of a single game. Usage: process_csv.rb path/to/file.csv Opponent mm/dd/yyyy

def create_pass(row, game)
  play = create_play(row, game)
  play.pass_play = PassPlay.new(
    pass_concept: PassConcept.find_or_create_by(row[:Play]))
  if row[:Complete] == "T" || row[:Complete] == "F"
    play.pass_play.thrown = true
    play.pass_play.complete = row[:Complete] == "T"  
  end
  play.save
end

def create_play(row, game)
  Play.new(
    quarter: row[:Quarter],
    time: row[:time],
    line_of_scrimmage: row[:LOS],
    down: row[:Down],
    distance: row[:Distance],
    hash_mark: row[:Hash],
    game: game,
    formation: Formation.find_or_create_by(name: row[:Formation]),
    gain: row[:Gain],
    quarterback: Player.find_or_create_by(last_name: row[:Quarterback])
end

def create_run(row, game)
  play = create_play(row, game)
  play.run_play = RunPlay.new(
    ballcarrier: Player.find_or_create_by(last_name: row[:Ballcarrier]),
    run: Run.find_or_create_by(name: row[:Play]))
  play.save
end

file = ARGV[0]

game = Game.create(date: Date.parse(ARGV[2], season: Season.current, opponent: Opponent.find_or_create_by(name: ARGV[1])

current_drive_count  = 1
current_drive = Drive.create(game: game)
CSV.foreach(file) do |row|
  if row[:Drive] != current_drive
    current_drive = Drive.create(game: game)
  end
  if row[:PlayType] == "Run"
    create_run(row)
  elsif row[:PlayType] == "Pass"
    create_pass(row)
  end
end
