songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help 
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : lets you choose a song to play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(my_songs)
 my_songs.each{ |song, location| puts song }
end

def play(my_songs)
puts "Please enter a song name or number:"
user_response = gets.chomp
valid = false 
my_songs.each_with_index do  |song, location|
  if user_response.to_i - 1 == location 
  puts "Playing #{songs[index]}"
  valid = true 
  elsif (user_response == song)
  puts "Playing #{choice}"
  valid = true 
  end
end 
puts "Invalid input, please try again" if valid == false
end


def exit_jukebox
puts "Goodbye"
end

def run(my_songs)
puts "Please enter a command:"
user_response = gets.chomp 
while user_response != "exit"
case user_response
when "help"
help 
puts "Please enter a command:"
user_response = gets.chomp
when "list"
list(my_songs)
puts "Please enter a command:"
user_response = gets.chomp
when "play"
play(my_songs)
puts "Please enter a command:"
user_response = gets.chomp
when "exit"
exit_jukebox
else 
puts "Invalid input, please try again:"
user_response = gets.chomp
end
end
end
