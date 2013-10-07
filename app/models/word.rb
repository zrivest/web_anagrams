class Word < ActiveRecord::Base
  # Remember to create a migration!
  def self.anagrams(word)
    @source_word = word
    @sorted_source_word = word.chomp.downcase.split('').sort.join
    Word.select(:word).find_all_by_sorted_word(@sorted_source_word)
  end
end
