require './lib/player'

describe Player do
  it 'should be a player' do
    expect(subject).to be_a(Player)
  end

  describe '#name' do
    it 'should return the player name' do
      subject.name = 'Tim'
      expect(subject.name).to eq('Tim')
    end
  end

  describe '#score' do
    it 'should return the player score' do
      expect(subject.score).to eq(0)
    end
  end
end
