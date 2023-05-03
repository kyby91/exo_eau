#Next prime number
def verifyIfNumberFirst (number)
    if number < 3 
        puts '3'
    else
        i = 2
        result = ''
        while i <= Math.sqrt(number)
            if number % i == 0
                result = 'false'
                break
            else
                i += 1
                result = 'true'
            end
        end
        if result == 'false'
            find_next_prime_number(number)
        else
            puts "#{number}"
            exit(1)
        end
    end
end

def find_next_prime_number(element)
    x = element + 1
    verifyIfNumberFirst(x)
end

def check_argument(arguments)
    if arguments.size > 1
        puts 'Too many arguments'
    elsif arguments.size < 1
        puts 'Need an argument'
    else
        if !arguments[0].scan(/^\d+$/).any? or arguments[0].to_i < 0
            puts '-1'
        else
            find_next_prime_number(arguments[0].to_i)
        end
    end
end

check_argument(ARGV)