require_relative 'lib/interface'

interface = Interface.new
interface.help

puts 'Please, enter your name'
name = gets.chomp
interface.new_player(name)
puts "Good luck, #{interface.game.player.name}!"
# game should deal after creating new player
interface.game.deal

while (line = $stdin.gets.rstrip)
  case line
  when 'hit'
    interface.hit
  when 'stand'
    interface.stand
  when 'open'
    interface.open
  when 'help'
    interface.help
  when 'quit'
    interface.quit
  else
    puts 'Wrong command'
  end
end
