#!/usr/bin/env ruby
# frozen_string_literal: false

# Przykładowa zaszyfrowana wiadomość
input = %(
Hi rcb dsrfc, gndwsu n Yfowbm Rsgnqnckqck. Irozc aw gws
nzcyozwnckoq awsxgqs ikwsnwsbwo Boxkmngnsuc Rsgnqnckqo.
Bokwonozsa n bwaw ycbhoyh, ozs hfirbc psrnws wqv kmrcghoq
n ufcri Yfoyo. Hfnspo cdfoqckoq pofrnc rcpfm dzob iqwsqnyw.
)

ONE_LETTERS = %w[a i o u w z].freeze
TWO_LETTERS = %w[
  aż bo by iż ni że do ku na od po we za ze
  co se ja ty ci on mu go oń ją my wy im je
  ma mą me ów ta tę tą to te tu je ma są mi
].freeze

# Przykładowa funkcja szyfrująca / deszyfrująca
def crypt(character, code, start_character = 'a')
  return character unless ('a'..'z').cover? character

  start_number = start_character.ord
  number = character.ord - start_number + code
  number %= 26
  number += start_number
  number.chr
end

def list_of_n_letter_words(input, size)
  input.split(/[^\w]/).keep_if { |word| word.size == size }
end

# Generowanie wszystkich kombinacji rozwiązań
combinations = []
(1..26).each do |code|
  combinations[code] = ''
  input.downcase.each_char do |character|
    combinations[code] << crypt(character, code)
  end
end

# Eliminacja rozwiązań z wykorzystaniem słowników słów
results = combinations.map do |decrypted|
  next if decrypted.nil?

  one_letter_words = list_of_n_letter_words(decrypted, 1)
  one_letter_words -= ONE_LETTERS
  next unless one_letter_words.empty?

  two_letter_words = list_of_n_letter_words(decrypted, 2)
  two_letter_words -= TWO_LETTERS
  next unless two_letter_words.empty?

  decrypted
end.compact

puts 'Znalezione możliwe rozwiązania:'
results.each do |result|
  puts result
end
