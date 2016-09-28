# == Schema Information
#
# Table name: plays
#
#  id                 :integer          not null, primary key
#  quarter            :integer          not null
#  time               :string           not null
#  line_of_scrimmage  :integer          not null
#  down               :integer          not null
#  hash_mark          :string           not null
#  gain               :integer          not null
#  notes              :text
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  distance           :integer          not null
#  formation_id       :integer          not null
#  drive_id           :integer          not null
#  quarterback_id     :integer          not null
#  formation_strength :string
#

require 'rails_helper'

RSpec.describe Play, type: :model do
  it "can be successful" do
    p = Play.create(quarter: 1, time: "15:00", line_of_scrimmage: 25, down: 1, distance: 10, hash_mark: "R", gain: 4)
    expect(p.success?).to be false
    p.update(gain: 5)
    expect(p.success?).to be true
    p.update(down: 2, gain: 6)
    expect(p.success?).to be false
    p.update(gain: 7)
    expect(p.success?).to be true
    p.update(down: 3, gain: 9)
    expect(p.success?).to be false
    p.update(gain: 10)
    expect(p.success?).to be true
    p.update(down: 4, gain: 9)
    expect(p.success?).to be false
    p.update(gain: 10)
    expect(p.success?).to be true
  end
end
