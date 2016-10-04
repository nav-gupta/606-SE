module Enumerable
    def palindrome?()
        arr = self.to_a
        reverse = arr.reverse
        reverse == arr
    end
end
puts [1,2,3,2,1].palindrome?
