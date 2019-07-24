def count_words(bites, words)
  words.each_with_index do |word, index|
    return "something is fishy" if word != 'mumble' && index + 1 != word.to_i
  end
  "makes sense"
end

input_data = File.read("data/1.in").split
length = input_data.shift
puts count_words(length, input_data).split(" ") == File.read("data/1.ans").split(" ")

input_data = File.read("data/2.in").split
length = input_data.shift
puts count_words(length, input_data).split(" ") == File.read("data/2.ans").split(" ")

input_data = File.read("data/2.in").split
length = input_data.shift
puts count_words(length, input_data).split(" ") == File.read("data/2.ans").split(" ")
