module BookKeeping
    VERSION = 2
end

class Pangram
    def self.is_pangram?(str)
        return true if ( ("a".."z").to_a - str.downcase.chars ).empty? else false
    end
end