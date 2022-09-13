require 'count_words'

RSpec.describe 'count_words method' do
  it 'Returns 0 when an empty string is given' do
    result = count_words('')
    expect(result).to eq 0
  end

  it 'Returns the number of words when string of length is given' do
    result = count_words('hello world')
    expect(result).to eq 2
  end

  context 'number is given' do
    it 'throws an error' do
      expect { count_words(12) } raise_error 'Number provided instead of string'
    end
  end
end