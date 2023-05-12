#Par ordre Ascii

def bubble_sort(array)
    loop do
        is_sort = false

        (array.length - 1).times do |i|
            if array[i] > array[i+1]
                array[i], array[i+1] = array[i+1], array[i]
                is_sort = true
            end
        end
        break if not is_sort
    end

    puts array
end

def check_arguments(arguments)
    if arguments.size < 2
        puts 'Not enough arguments'
    else
        bubble_sort(arguments)
    end
end

check_arguments(ARGV)
