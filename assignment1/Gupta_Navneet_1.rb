#reverses a string and then compare it original to know
def palindrome?(string)
    str = string.downcase.gsub(/[^a-z0-9]/, '')
    str.reverse == str
end

puts palindrome?("A man, a plan, a canal -- Panama")  #=> true
puts palindrome?("Madam, I'm Adam!")  # => true
puts palindrome?("Abracadabra")  # => false (nil is also ok)
