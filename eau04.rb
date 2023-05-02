#Suite de Fibonacci

def find_fibonacci_number(element)
    array_fibonacci = [0,1,1,2]
    i = 3
    if element.to_i < 3
        puts array_fibonacci[element.to_i]
    else
        while i <= element.to_i
            next_number = array_fibonacci[i] + array_fibonacci[i-1]
            array_fibonacci.push(next_number)
            i += 1
        end
        puts array_fibonacci[element.to_i]
    end
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
            find_fibonacci_number(arguments[0])
        end
    end
end

check_argument(ARGV)