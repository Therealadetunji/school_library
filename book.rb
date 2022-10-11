class Book
  def initialize(title, author)
    @title = title
    @author = author
    @rentals = []
  end
  attr_accessor :title, :author
  attr_reader :rentals

  def add_rental(person, date)
    rental = Rental.new(person, date, self)
    @rentals.push(rental)
    person.rentals.push(rental)
  end
end
