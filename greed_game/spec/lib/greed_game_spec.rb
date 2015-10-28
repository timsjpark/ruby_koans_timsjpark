require './lib/greed_game'

### Write some damn tests!

describe GreedGame do
  it 'should be a game' do
    expect(subject).to be_a(GreedGame)
  end

  describe '#players' do
    let(:subject) { GreedGame.new }

    context 'if no players have been added yet' do
      it 'should return an empty array' do
        expect(subject.players).to eq([])
      end
    end

    context 'if two players have been added' do
      it 'should return an array of two players' do
        subject.add_player('Tim', 'Nate')
        expect(subject.players).to eq(['Tim', 'Nate'])
      end
    end
  end

  describe '#add_player' do
    # it 'should require you to add at least 2 players to the game' do
    #   # Raise an Exception
    #   expect(subject.add_player('Tim')).to raise_error(
    #     GreedGame::InsufficientPlayersError,
    #     'You must start the game with at least 2 players!'
    #   )
    # end
    it 'should add the new player name to @players' do
      subject.add_player('Tim', 'Nate')
      expect(subject.players).to eq(['Tim', 'Nate'])
    end
  end

  describe '#scoresheet' do
    before(:each) do
      subject.add_player('Tim', 'Nate')
    end

    it 'should return a hash of all player scores' do
      expect(subject.scoresheet).to eq({ 'Tim' => 0, 'Nate' => 0 })
    end
  end
end
