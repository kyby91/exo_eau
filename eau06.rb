#String in string

def find_same_string(array1, array2)
    first_character_of_second_word = array2[0]

    i = array1.index(first_character_of_second_word)
    j = 0
    k = array2.length

    if i == nil
        puts 'False'
        exit(1)
    else
        while j < k
            if array1[i] == array2[j]
                j += 1
                i += 1
            else 
                delete_first_same_character(array1, array2)
                exit(1)
            end
        end
        puts 'True'
    end
end

def delete_first_same_character(array1, array2)
    first_character_of_second_word = array2[0]
    x = array1.index(first_character_of_second_word)
    array1.delete_at(x)
    find_same_string(array1, array2)
end

def check_arguments(arguments)
    if ARGV.length < 2
        puts 'Not enough arguments'
        exit(1)
    elsif ARGV[0].to_i > 0
        puts 'error'
    else
        first_word_array = arguments[0].scan(/\w/)
        second_word_array = arguments[1].scan(/\w/)
        find_same_string(first_word_array, second_word_array)
    end
end

check_arguments(ARGV)

