
file = open('/usr/share/dict/words', 'r') 

file.each do |word|
  Word.create(word: word.chomp, sorted_word: word.chomp.downcase.split(//).sort.join)
end
