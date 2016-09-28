# == Schema Information
#
# Table name: conferences
#
#  id         :integer          not null, primary key
#  name       :string           not null
#  power_five :boolean          default(TRUE)
#  fbs        :boolean          default(TRUE)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'rails_helper'

RSpec.describe Conference, type: :model do
  it "has teams" do
    conference = FactoryGirl.create(:conference)
    FactoryGirl.create(:opponent, conference: conference)
    expect(conference.opponents.count).to eq(1)
  end
end
