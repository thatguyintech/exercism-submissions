module Complement
    VERSION=3
    def self.of_dna(strand)
        raise ArgumentError unless strand.chars.all? {|c| "CGTA".chars.include? c}
        strand.tr("CGTA", "GCAU")
    end
end
