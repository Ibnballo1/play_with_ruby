@morse_character = {
  A: '.-', B: '-...', C: '-.-.', D: '-..', E: '.', F: '..-.', G: '--.',
  H: '....', I: '..', J: '.---', K: '-.-', L: '.-..', M: '--', N: '-.',
  O: '---', P: '.--.', Q: '--.-', R: '.-.', S: '...', T: '-', U: '..-',
  V: '...-', W: '.--', X: '-..-', Y: '-.--', Z: '--..', '1' => '.----',
  '2' => '..---', '3' => '...--', '4' => ' ....-', '5' => '.....',
  '6' => '-....', '7' => '--...', '8' => '---..', '9' => '----.',
  '10' => '-----'
}

# Create a method to decode a Morse code character, takes a string parameter,
# and return the corresponding character in uppercase (e.g. decode_char(".-") returns "A").

def decode_char(char)
  # get the value of the morse_character
  @morse_character.each do |key, value|
    print key.to_s if value == char
  end
end

# Create a method to decode an entire word in Morse code, takes a string parameter,
# and return the string representation. Every character in a word will be separated by a
# single space (e.g. decode_word("-- -.--") returns "MY").

def decode_word(word)
  new_word = ''
  # loop through the word
  word.split(' ').each do |char|
    new_word += decode_char(char).to_s
  end
end

# Create a method to decode the entire message in Morse code,
# takes a string parameter, and return the string representation.
# Every word will be separated by 3 spaces (e.g.
# decode("-- -.--   -. .- -- .") returns "MY NAME").

def decode_sentence(sentence)
  new_sentence = ''
  sentence.split('   ').each do |word|
    new_sentence += decode_word(word).to_s
  end
end

decode_char('.-')
puts ''
decode_word('-- -.--')
puts ''
decode_sentence('-- -.--   -. .- -- .')
