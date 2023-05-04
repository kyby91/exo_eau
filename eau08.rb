#Upcase

def start_with_upcase(element)
    i = 0
    j = element.size
    k = 0 #if = 0 = new word // put to 0 after a space, put tu 1 after a upcase
    new_sentence = ""

    while i < j
        if element[i] == " "
            new_sentence += element[i]
            k = 0
            i += 1
        else
            if k == 0
                new_sentence += element[i].upcase
                k = 1
                i += 1
            else
                new_sentence += element[i]
                i += 1
            end
        end
    end
    puts new_sentence
end

def check_arguments(arguments)
    if arguments.size > 1 || arguments.size < 1
        puts 'error'
    elsif arguments[0].scan(/\d/).any?
        puts 'error'
    else
        word_array = arguments[0]
        start_with_upcase(word_array)
    end        
end

check_arguments(ARGV)