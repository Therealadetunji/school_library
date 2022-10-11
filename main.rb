require './app'
require './refactor'
def main
  app = App.new
  puts 'Welcome to school library App'
  loop do
    puts 'Please choose an option by entering a number:'
    puts '1 - List all books'
    puts '2 - List all people'
    puts '3 - Create a person'
    puts '4 - Create a book'
    puts '5 - Create a rental'
    puts '6 - List all rentals for a given person id'
    puts '7 - Exit'
    choice = gets.chomp.to_i
    if choice == 7
      puts 'Thank you for using our library'
      break
    end
    start_app(app, choice)
  end
end

main
