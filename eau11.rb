#find index

def find_index(element)
    i = 0
    j = element.size - 1
    word_to_compare = element[j]
    element.delete_at(j)

    while i <= j
        if word_to_compare == element[i]
            puts i
            break
        else 
            if i == j
                puts -1
                break
            else 
                i += 1
            end            
        end
    end
end

def check_arguments(arguments)
    if arguments.size < 2
        puts -10
    else
        find_index(arguments)
    end
end

check_arguments(ARGV)