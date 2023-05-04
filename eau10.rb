#Entre min and max

def show_numbers_between(min, max)
    while min < max
        puts min
        min = min + 1
    end
end

def find_order(element)
    x = element[0].to_i
    y = element[1].to_i
    if x < y
        min = x
        max = y
    else
        min = y
        max = x
    end
    show_numbers_between(min, max)
end

def check_arguments(arguments)
    if arguments.size > 2 || arguments.size < 2
        puts 'error'
    elsif !arguments[0].scan(/\d/).any? || !arguments[1].scan(/\d/).any?
        puts 'error'        
    else
        find_order(arguments)
    end        
end

check_arguments(ARGV)