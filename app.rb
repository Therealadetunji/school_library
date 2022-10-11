require './book'
require './person'
require './rental'
require './student'
require './teacher'
class App
  attr_accessor :rentals, :books, :persons

  def initialize
    @rentals = []
    @books = []
    @persons = []
  end

  def create_person
    puts 'Do you want to create a student (1) or a teacher (2)? [Input the number]:'
    person = gets.chomp.to_i
    case person
    when 1
      create_student
    when 2
      create_teacher
    else
      puts 'Please enter a valid command'
    end
  end

  def create_student
    print 'Age: '
    age = gets.chomp.to_i
    print 'Name: '
    name = gets.chomp
    print 'Has parent permission? [Y/N]: '
    parent_permission = gets.chomp.capitalize
    case parent_permission
    when 'Y'
      true
    when 'N'
      false
    else
      puts 'Please enter valid command'
    end

    student = Student.new(age, name, parent_permission: true)
    @person.push(student)
    puts 'Person created Successfully'
  end

  def create_teacher
    print 'Age: '
    age = gets.chomp.to_i
    print 'Name: '
    name = gets.chomp
    print 'Specialization: '
    specialization = gets.chomp

    teacher = Teacher.new(specialization, age, name, parent_permission: true)
    @person.push(teacher)
    puts 'Person created Successfully'
  end

  def list_people
    if @persons.length.positive?
      @persons.each do |_person|
        puts "[#{person.class}] Name: #{person.name}, Age: #{person.age}, ID: #{person.id}"
      end
    else
      puts 'No List of people'
    end
  end

  def create_a_book
    print 'Title: '
    title = gets.chomp
    print 'Author: '
    author = gets.chomp
    book = Book.new(title, author)
    @books.push(book)
    puts 'Book created Successfully'
  end

  def list_of_book
    if @books.length.positive?
      @books.each do |_book|
        puts "Title: #{book.title}, Author: #{book.author}"
      end
    else
      puts 'No list of books'
    end
  end

  def create_rental
    return unless @books.length.positive?

    puts 'Select a book from the following list by number'
    @books.each_index do |_book, _index|
      puts "#({index}) Title: #{book.title}, Author: #{book.author}"
    end
    book_choice = gets.chomp.to_i

    puts 'select a person from the following list by number (not id)'
    return unless @persons.length.positive?

    @persons.each_index do |person, _i|
      puts "#({i}) [#{person.class}] Name: #{person.name}, ID: #{person.id}, Age: #{person.age}"
    end
    person_choice = gets.chomp.to_i
    puts 'Date: '
    date_choice = gets.chomp
    rental = Rental.new(date_choice, @people[person_choice], @books[book_choice])
    @rentals.push(rental)
    puts 'Rental created successfully'
  end

  def list_rentals
    if @rentals.length.positive?
      print 'ID of person : '
      persons_id = gets.chomp.to_i
      @persons.each do |person|
        next unless person.id == persons_id

        person.rentals.each_with_index do |rental, _i|
          puts " \n Rentals: \n Date: #{rental.date}, Book \"#{rental.book.title}\" by #{rental.book.author}"
        end
      end

    else
      puts 'Rentals list is empty'
    end
  end
end
