#Eau : ok

def eau(element)
    if element.length >0
        result = ""
        for word in element
            result = result + word + " "
        end
        puts "J'ai terminé l'épreuve de la Eau et c'était #{result}" #motivant
    else
        puts "J'ai terminé l'épreuve de la Eau et c'était plus liquide que la terre"
    end
end

eau(ARGV)