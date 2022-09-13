def make_snippet(string)
  words = string.split(' ')
  words.length > 5 ?
  words[0...5].join(' ') + '...'
  : string
end