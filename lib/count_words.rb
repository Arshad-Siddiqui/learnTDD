def count_words(string)
  if string.is_a? Numeric
    fail 'Number provided instead of string'
  end
  
  string.split(' ').length
end