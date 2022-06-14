def substrings(words, dictionary)
  # Break down string into array of words
  words_array = words.split(" ")

  # Create hash to store values
  appearances = Hash.new(0)

  # Loop for one word in words
  for dict_word in dictionary do
    for word in words_array do
      if word.downcase.include?(dict_word.downcase)
        appearances[dict_word] += 1
      end
    end
  end
  puts appearances

  # Check if each word is in the dictionary
  # Nested loop - first the words then the dictionary
  # Check whether the words are in the dictionary or the dictionary word is in words
  # Add to new hash/hash counter if it is - words is the key 


end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
substrings("below", dictionary)
substrings("Howdy partner, sit down! How's it going?", dictionary)