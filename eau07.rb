#Uppercase 1/2

def uppercase_one_on_two(element)
    i = 0
    j = element.size
    k = 1 #permet de gérer les caractères non lettres, éviter de faire un upcase dans le vide
    word_uppercase = ''

    while i < j
        if element[i].scan(/\w/).any?
            if k.odd?
                word_uppercase += element[i].upcase
                i += 1
                k += 1
            else
                word_uppercase += element[i]
                i += 1
                k += 1
            end
        else 
            word_uppercase += element[i]
            i += 1
        end
    end
    puts word_uppercase
end

def check_arguments(arguments)
    if arguments.size > 1 || arguments.size < 1
        puts 'error'
    elsif arguments[0].scan(/\d/).any?
        puts 'error'
    else
        word_array = arguments[0]
        uppercase_one_on_two(word_array)
    end        
end

check_arguments(ARGV)