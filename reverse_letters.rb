def reverse_letters(word)
    length = word.length
    backwards = Array.new(length)
    word.each_with_index {
        |letter, index|
        backwards[length - index -1] = letter
        }  
    backwards
end
