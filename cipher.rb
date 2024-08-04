def ceasar_cipher(word, key, encode = true)
  #Define the alphabet
  alphabet = ("a".."z").to_a
  key %= 26 # Normalize the key to be within 0-25

  key = -key unless encode

  # Convert the word to the cipher
  cipher_word = word.chars.map do |char|
    if alphabet.include?(char)

      # Find the current index of the character and calculate the new index
      current_index = alphabet.index(char)
      new_index = (current_index + key) % 26 # Calculate new index and wrap around if necessary
      alphabet[new_index]
    else
      char # Non-alphabet characters are returned as-is
    end
  end

  cipher_word.join
end
