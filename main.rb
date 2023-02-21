require_relative 'lib/interface'

interface = Interface.new
interface.help
interface.new_player

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
