def count_words(string)
# splitting over any non-word characters
    words = string.downcase.split(/\W+/)
    word_count = {}
    words.each do |word|
        if word_count[word]
            word_count[word] += 1
        else
            word_count[word] = 1
        end
    end
    word_count 
end

puts count_words("A man, a plan, a canal -- Panama")
# => {'a' => 3, 'man' => 1, 'canal' => 1, 'panama' => 1, 'plan' => 1}
puts count_words "Doo bee doo bee doo"  # => {'doo' => 3, 'bee' => 2}
