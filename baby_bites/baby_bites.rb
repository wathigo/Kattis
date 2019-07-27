def count_words(bites, words)
  words.each_with_index do |word, index|
    return "something is fishy" if word != 'mumble' && index + 1 != word.to_i
  end
  "makes sense"
end

input_data = ARGF.read.split
length = input_data.shift
puts count_words(length, input_data)
