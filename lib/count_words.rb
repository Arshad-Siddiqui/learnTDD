def count_words(string)
  if string.is_a? number
    fail 'Number provided instead of string'
  end
  
  string.length
end