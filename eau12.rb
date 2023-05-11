#smallest difference
def find_the_smallest_difference(element)
    i = 1
    j = element.size - 1

    sorted_array = element.sort
    smallest = sorted_array[1] - sorted_array[0]

    while i < j
        result = sorted_array[i+1] - sorted_array[i]

        if result < smallest
            smallest = result.abs
        end
        i += 1        
    end

    puts smallest
end

def check_arguments(arguments)
    if arguments.size < 2
        puts 'Not enough arguments'
    else
        for i in arguments do
            if !arguments[0].scan(/\d/).any?
                puts 'error'
                exit 1
            end
        end
        numbers = arguments.map(&:to_i)
        find_the_smallest_difference(numbers)
    end
end

check_arguments(ARGV)