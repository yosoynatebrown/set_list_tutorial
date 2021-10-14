require "rails_helper"

RSpec.describe Artist do
  it {should have_many :songs}

describe "instance methods" do
  describe '#average_song_length' do
    it 'returns the average song length' do
      
    end
  end
end
