class Sieve
    def initialize(limit)
        @range = (2..limit).to_a
        @primes = []
    end

    def primes
        while current_sieve = @range.shift
            @primes << current_sieve
            @range.reject! {|number| number % current_sieve == 0}
        end
        @primes
    end
end