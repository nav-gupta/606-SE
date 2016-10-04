class String
    def palindrome?()
        str = self.downcase.gsub(/[^a-z0-9]/, '')
        str.reverse == str
    end
end
puts "foo".palindrome?
puts "aba".palindrome?
