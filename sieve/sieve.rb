class Sieve
    def initialize(limit)
        @primes = sieve_up_to(limit)
    end

    def primes
        @primes
    end
    
    def sieve_up_to(limit)
        primes = []
        range = (2..limit).to_a

        while current_sieve = range.shift
            primes << current_sieve
            range.reject! {|number| number % current_sieve == 0}
        end
        
        @primes = primes
    end
end