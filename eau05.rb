#Next prime number
def verifyIfNumberFirst (number)
    x = number
    if x < 0
        puts "Can't be inferior to 0"
    elsif x < 3 
        puts "#{x} n'est pas un nombre premier"
    elsif x == 3
        puts "#{x} est un nombre premier"
    else
        i = 2
        result = ''
        while i <= Math.sqrt(x)
            if x % i == 0
                result = 'false'
                break
            else
                i += 1
                result = 'true'
            end
        end
        if result == 'false'
            find_next_prime_number(x + 1)
        else
            puts "#{x}"
        end
    end
end


def find_next_prime_number(element)
    x = element.to_i
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
            find_next_prime_number(arguments[0])
        end
    end
end

check_argument(ARGV)