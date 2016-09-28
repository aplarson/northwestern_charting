# == Schema Information
#
# Table name: opponents
#
#  id            :integer          not null, primary key
#  name          :string           not null
#  conference_id :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

require 'rails_helper'

RSpec.describe Opponent, type: :model do
  it "has games" do
    opponent = FactoryGirl.create(:opponent)
    FactoryGirl.create(:game, opponent: opponent)
    expect(opponent.games.count).to eq(1)  
  end

  it "can have a conference" do
    opponent = FactoryGirl.create(:opponent, conference: FactoryGirl.create(:conference))
    expect(opponent.conference.name).to eq("Big Ten")
  end

  it "can be independent" do
    opponent = FactoryGirl.create(:opponent)
    expect(opponent.independent?).to be(true)
  end
end
