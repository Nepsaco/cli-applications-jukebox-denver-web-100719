require 'pry'

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
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def play(songs)
  puts "Please enter a song name or number:"
  user_input = gets.strip
      #binding.pry
  songs.each do |song_name|
    if user_input == song_name 
      puts "Playing #{song_name}"
    elsif user_input >= 1 && user_input <= 9
      user_input -= 1
      puts "Playing #{song_name[user_input]}"
    end
    puts "Invalid input, please try again"
  end
end

def list(songs)
  songs.each_with_index{|item, index| 
    puts "#{index + 1} item" 
  } 
end

def exit_jukebox
end

def run(songs)
  play(songs)
end