class Sieve
    def initialize(limit)
        @numbers = (1..limit).to_a
        @limit = limit
    end

    def primes
        return [] if @numbers.size <= 1
        @numbers -= [1]
        @numbers.each do |sieve|
            @numbers.each do |number|
                unless sieve == number
                    if number % sieve == 0
                        @numbers -= [number]
                    end
                end
            end
        end

        @numbers
    end
end