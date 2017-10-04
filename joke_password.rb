adjectives = %w[
  sleepy slow smelly wet fat red
  orange yellow green blue purple fluffy
  white proud brave
]

nouns = %w[
  apple dinosaur ball
  toaster goat dragon
  hammer duck panda
  telephone banana teacher
]

puts 'Welcome to Joke Password Generator!'
print 'Do you get your own securable password? If you need it type y: '
okay = gets.chomp
if okay == 'y'
  while true
    3.times do
      adjective = adjectives.sample
      noun = nouns.sample
      number = rand(0...500) + 1
      special_char = (' '..'?').to_a.sample
      password = adjective + noun + number.to_s + special_char.to_s
      puts "Maybe this password is: #{password}"
    end
    print 'Would you like another password? Type y or n: '
    response = gets.chomp
    break if response == 'n'
  end
else
  puts "And you didn't need your own securable password. Bye!"
end
