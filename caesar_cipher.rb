def caesar_ciper(string, cipher)
  # Convert string to array
  letters = string.split("")

  # Convert each character in string to ascii
  letters.map! { |letter| letter.ord}

  # Wrap letters to their case
  ciphered_letters = letters.map do |letter|
    if letter + cipher < 65 || (letter + cipher < 97 && letter >= 97)
      letter + cipher + 25
    elsif (letter + cipher > 90 && letter < 97) || letter + cipher > 122
      letter + cipher - 25
    else
      letter + cipher
    end
  end

  # Convert ascii to string and join together
  ciphered_letters.map! {|letter| letter.chr}
  return ciphered_letters.join()
end

p caesar_ciper("hello", 1)