module Raindrops
    VERSION=1
    
    def Raindrops.convert(num)
        raindrops = ""
        # Using << or .concat is faster than += for string concatenation
        if num%3==0 then raindrops << "Pling" end 
        if num%5==0 then raindrops << "Plang" end
        if num%7==0 then raindrops << "Plong" end
        raindrops.empty? ? num.to_s : raindrops
    end
end