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
      puts "playing #{song}"
    elsif choice.to_i == num
      puts "playing #{song}"
    end
  end
end

def exit_jukebox
  puts "Goodbye"
  return
end

def run
  puts "Please enter a commands:"
  command = gets.strip
end
