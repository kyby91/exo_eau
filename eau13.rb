#Tri à bulle

def my_bubble_sort(array)
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
        i = 0
        loop do 
            if !arguments[i].scan(/\d/).any?
                puts 'error'
                exit 1
            else 
                i += 1
                break if i >= arguments.size 
            end
        end
        numbers = arguments.map(&:to_i)
        my_bubble_sort(numbers)
    end
end

check_arguments(ARGV)
