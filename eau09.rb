#number only

def numbers_only(element)
    i = 0
    j = element.size
    result = ''
    while i < j
        if element[i].to_i > 0
            i +=1
            result = 'True'
        else
            result = 'False'
            break
        end
    end
    puts result
end

def check_arguments(arguments)
    if arguments.size > 1 || arguments.size < 1
        puts 'error'
    else
        numbers_only(arguments[0])
    end        
end

check_arguments(ARGV)