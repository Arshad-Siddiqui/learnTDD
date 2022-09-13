require 'make_snippet'

RSpec.describe 'make_snippet method' do
  it 'returns the same string if 5 words long' do
    result = make_snippet('a sentence long as 5')
    expect(result).to eq 'a sentence long as 5'
  end

  it 'returns the same string if less than 5 words long' do
    result = make_snippet('not longer than 5')
    expect(result).to eq 'not longer than 5'
  end

  context 'more than 5 words' do
    it 'truncates the string to 5 words long and adds "..." at the end' do
      result = make_snippet('a sentence absolutely longer than 5 words long, in fact its 12')
      expect(result).to eq 'a sentence absolutely longer than...'
    end
  end
end