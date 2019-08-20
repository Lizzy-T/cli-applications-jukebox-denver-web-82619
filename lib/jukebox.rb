def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list (songs)
  songs.each_with_index {|song, index|
    num = index + 1
    puts "#{num}. #{song}"
  }
end

def play (songs)
  puts "Please enter a song name or number:"
  choice = gets.strip
  
  songs.each_with_index do |song, index|
    num = index + 1
    if song == choice
      valid_song =  "playing #{song}"
    elsif choice.to_i == num
      valid_song = "playing #{song}"
    end
  end
  if valid_song
    puts valid_song
  else 
    puts "Invalid input, please try again"
end

def exit_jukebox
  puts "Goodbye"
  return
end

def run
  puts "Please enter a commands:"
  command = gets.strip
end
