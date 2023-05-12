#Tri par sélection

def my_select_sort(array) 
    puts array

    n = array.length - 1
    n.times do |i|
        min_index = i
        for j in (i + 1)..n
            min_index = j if array[j] < array[min_index]
        end
        array[i], array[min_index] = array[min_index], array[i] if min_index != i
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
        my_select_sort(numbers)
    end
end

check_arguments(ARGV)