#Reverse Argument

def reverse_argument(arguments)
    i = arguments.length - 1
    new_sentence = ""
    while i >= 0
        new_sentence = "#{new_sentence} #{arguments[i]}"
        i -= 1
    end
    puts new_sentence.strip
end

def checking_arguments(element)
    if element.length < 1
        puts "You need to provide at least 2 arguments"
        exit
    else 
        reverse_argument(element)
    end
end

checking_arguments(ARGV)