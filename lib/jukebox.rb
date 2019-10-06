songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapman - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help()
  puts "I accept the following commands:"
  puts"- help : displays this help message"

  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end



def list(array)
  array.each_with_index do |song, index|
    puts "#{index+1}. #{song}"
  end
end

def play(array)
  puts "Please enter a song name or number:"
  input = gets.strip
  p input
  count = 0
  while count < array.length do
    if input.to_i == count+1 || array.contains?(input)
      puts "Playing #{array[count]}"
    else
      puts "Invalid input, please try again"
    end
    count+=1
  end
end


def exit_jukebox()
  puts "Goodbye"
  prompt()
end

def prompt()
  puts "Please enter a command:"
  gets.strip
end


def run(my_songs)
  help()
  input = prompt()

  while input != "exit"
    if input == "list"
      list(my_songs)
      input = prompt()
    elsif input == "play"
      play(my_songs)
      input = prompt()
    elsif input == "help"
      help()
      input = prompt()
    else
      puts "Invalid command"
      help()
      input = prompt()
    end
  end
  exit_jukebox()
end
