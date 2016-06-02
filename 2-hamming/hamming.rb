VERSION = 2
class Hamming
    def self.compute(strand_a, strand_b)
        raise ArgumentError, "strands are not equal in length" if strand_a.length != strand_b.length
        strand_a.chars.zip(strand_b.chars).count do |s_a, s_b|
            s_a != s_b
        end
    end
end