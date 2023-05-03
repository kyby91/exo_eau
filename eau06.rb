#String in string

def find_same_string(element)
    first_character_of_second_word = element[1].scan(/\w/)[0]
    first_word_array = element[0].scan(/\w/)

    puts first_word_array.index(first_character_of_second_word)
end

# def check_arguments(arguments)
#     if ARGV.length < 2
#         puts 'Not enough arguments'
#         exit(1)
#     elsif ARGV[0].to_i > 0
#         puts 'error'
#     else
#         ...
#     end
# end

# check_arguments(ARGV)

find_same_string(ARGV)