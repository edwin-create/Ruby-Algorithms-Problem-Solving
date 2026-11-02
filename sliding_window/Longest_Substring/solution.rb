#Start with an empty chunk and a best length of 0

#For each letter in the string:
 # 1. If the letter is already in the chunk, then drop it plus any other letters to its left
 # 2. Add the letter to the right of the chunk
 # 3. If the chunk's length is bigger than the best length, then update best length

#When all letters are done, give back best length

def length_of_longest_substring(string)

  chunk = []
 best_length = 0
  
  string.each_char do |letter|
    if chunk.include?(letter)
     index = chunk.index(letter)
      chunk = chunk[(index + 1)..]
    end
    chunk << letter
    best_length = [best_length, chunk.length].max
  end
  best_length
end

#Start with an empty notebook, start = 0, best_length = 0

#For each letter (and its position):
 # 1. If the letter is in the notebook AND its old position is >= start,
    # then set start to old position + 1
 # 2. Write down the letter's current position in the notebook
 # 3. The chunk's length is (position - start + 1)
 #    If that is bigger than best_length, update best_length

#Give back best_length

def length_of_longest_substring(string)
  notebook = {}
  start = 0
  best_length = 0

 string.each_char.with_index do |letter, position|
   if notebook.key?(letter) && notebook[letter] >= start 
     start = notebook[letter] + 1
     notebook[letter] = position
  best_length = [best_length, position - start + 1].max
   else
      notebook[letter] = position
      best_length = [best_length, position - start + 1].max
   end
 end
 best_length
end