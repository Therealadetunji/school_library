class Rental
  def initialize(date, person, book)
    @date = date
    @person = person
    @book = book
    book.rentals.push(self)
    person.rentals.push(self)
  end

  attr_accessor :date, :person, :book
end
