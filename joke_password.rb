adjectives = ['sleepy', 'slow', 'smelly', 'wet', 'fat', 'red',
              'orange', 'yellow', 'green', 'blue', 'purple', 'fluffy',
              'white', 'proud', 'brave']

nouns = ['apple', 'dinosaur', 'ball',
         'toaster', 'goat', 'dragon',
         'hammer', 'duck', 'panda']

puts 'Welcome to Joke Password Generator!'

while true
adjective = adjectives.sample
noun = nouns.sample
number = rand(0...500)
# special_char = random.choice(string.punctuation)

password = adjective + noun + number.to_s # + special_char
puts "Your new password is: #{password}"

print 'Would you like another password? Type y or n: '
response = gets.chomp
break if response == 'n'
end
