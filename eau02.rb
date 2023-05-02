#Combine of 2 numbers

def all_the_combine_of_two_numbers()
    a = 0
    b = 0
    c = 0
    d = 1
    for a in 0..9
        for b in 0..9
            for c in 0..9
                for d in 0..9
                    first_number = "#{a}#{b}".to_i
                    second_number = "#{c}#{d}".to_i
                    if first_number < second_number
                        puts "#{a}#{b} #{c}#{d}"
                    end
                end
            end
        end
    end
end

all_the_combine_of_two_numbers()