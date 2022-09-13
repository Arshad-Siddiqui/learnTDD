def make_snippet(string)
  words = string.split(' ')
  if words.length > 5
    words[0...5].join(' ') + '...'
  else
    string
  end
end