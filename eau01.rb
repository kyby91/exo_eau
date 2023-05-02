#Combinaison
def combine_with_no_repeat()
    a = 0
    b = 0
    c = 0
    for a in 0..7
        for b in a+1..8
            for c in b+1..9
                puts "#{a}#{b}#{c}"
            end
        end
    end
end

combine_with_no_repeat()