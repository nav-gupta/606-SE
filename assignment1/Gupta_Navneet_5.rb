def combine_anagrams(words)
    hash_table = {}
# for each of the word, downcase and sort the chars in it to form a hash(key)
# for each hash, store all the corresponding words as value in key,value pair
    words.each do |word|
        hash = word.downcase.chars.sort.join
        if hash_table[hash]
                hash_table[hash].push(word)
        else
                hash_table[hash] = [word]
        end
    end
    anagrams = []
    hash_table.each do |key,value|
        anagrams.push(value)
    end
    return anagrams
end

input = ['cars', 'for', 'potatoes', 'racs', 'four','scar', 'creams', 'scream']
p combine_anagrams(input)
