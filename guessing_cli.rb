# Code your solution here!
def run_guessing_game
  puts "Guess a number between 1 and 6."
  n=rand(6)+1
  input = gets.chomp
  return exit_game if input = "exit"
end

def exit_game
  puts ""
end

def help
  puts """I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"""
end

def list(songs)
  songs.each_with_index do |el, i|
    puts "#{i+1}. #{el}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  input = gets.chomp
  if songs.include?(input)
    puts "Playing #{input}"
  elsif input >= "1" and input <= "9"
    puts "Playing #{songs[input.to_i-1]}"
  else
    
  end
  
  puts "Playing #{}"
  puts "Invalid input, please try again"
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  puts "Please enter a command:"
  input = gets.chomp
  return exit_jukebox if input = "exit"
  play(songs) if input = "play"
  list(songs) if input = "list"
  help if input = "help"
  run
end

def say_hello(name)
  "Hi #{name}!"
end
 
# puts "Enter your name:"
# users_name = gets.chomp
 
# puts say_hello(users_name)