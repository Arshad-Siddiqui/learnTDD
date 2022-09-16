require 'letter_counter'

RSpec.describe LetterCounter do
  describe '#calculate_most_common' do
    it 'returns most common letter' do
      letter_counter = LetterCounter.new('Digital Punk')
      expect(letter_counter.calculate_most_common).to eq [2, 'i']
    end

    it 'returns another letter' do
      letter_counter = LetterCounter.new('dank memes dank memes dank memes')
      expect(letter_counter.calculate_most_common).to eq [6, 'm']
    end
  end
end