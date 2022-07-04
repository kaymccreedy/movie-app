require "http"
require "tty-prompt"

prompt = TTY::Prompt.new

data = HTTP.get("http://localhost:3000/movies").parse

titles = []
data.each do |movie|
  titles << "#{movie["title"]}"
end

movies = []
movies << data.each

puts "\nMovies\n\n"

while true

  choice = prompt.select("Choose a page", ["See All Movies", "Select a Movie", "Exit"])

  if choice == "See All Movies"
    puts
    titles.each do |title|
      puts title
    end
    puts

  elsif choice == "Select a Movie"
    a = 1
    while a == 1
      puts
      choice = prompt.select("Select a Movie", [titles])
      x = titles.index(choice) + 1
      info = HTTP.get("http://localhost:3000/movies/#{x}").parse
      puts
      puts "Title: #{info["title"]}"
      puts "Year: #{info["year"]}"
      puts "Plot: #{info["plot"]}"
      puts
      choice = prompt.select("Pick Another Film?", ["Yes", "No"])
      if choice == "No"
        a = 0
      end
    end
    puts

  elsif choice == "Exit"
    break

  end

end