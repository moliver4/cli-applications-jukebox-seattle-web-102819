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
  if (input.to_i).between?(1,9)
    puts "Playing #{array[input.to_i-1]}"
  elsif array.include?(input)
    puts "Playing #{input}"
  else
    puts "Invalid input, please try again"
  end
end


def exit_jukebox()
  puts "Goodbye"
end

def prompt()
  puts "Please enter a command:"
  gets.strip
end


def run(songs)
  help()
  puts "Please enter a command:"
  while true
    
    command = gets.chomp
    case command
      when "list"
        list(songs)
      when "play"
        play(songs)
      when "help"
        help
      when 'exit'
        exit_jukebox()
        break
    end
  end
end
