def start_app(app, choice)
  case choice
  when 1
    app.list_of_book
  when 2
    app.list_people
  when 3
    app.create_person
  when 4
    app.create_book
  when 5
    app.create_rental
  when 6
    app.list_rentals
  else
    puts 'Invalid choice'
  end
end
