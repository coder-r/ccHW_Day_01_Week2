# Model a Library as a class.
#
# Create a class for a Library that has an array of books. Each book should be a hash with a title, which is a string, and rental details, which is another hash with a student name and due date.
# This should look something like:
#
#   {
#     title: "lord_of_the_rings",
#     rental_details: {
#      student_name: "Jeff",
#      date: "01/12/18"
#     }
#   }

class Library
  attr_reader :books

  def initialize()
    @books = []
  end

  def add_book(book)
    @books.push(book)
  end



# Create a getter for the books

##Done

# Create a method that takes in a book title and returns all of the information about that book.

def find_by_title(title)
  for book in @books
    if book[:title] == title
      return book
    end
  end
end

# Create a method that takes in a book title and returns only the rental details for that book.

def get_rental_details(title)
  book = find_by_title(title)
  return book[:rental_details]
end



# Create a method that takes in a book title and adds it to our book list (add a new hash for the book with the student name and date being left as empty strings)

def add_book_by_title(name_of_book)
  book = {
    title: name_of_book,
    rental_details: {
      student_name: "",
      date: ""
    }
    }
    @books.push(book)
  end

# Create a method that changes the rental details of a book by taking in the title of the book, the student renting it and the date it's due to be returned.

  def change_rental_details(name_of_book, student_name, date)
    found_book = find_by_title(name_of_book)
    found_book[:rental_details][:student_name] = student_name
    found_book[:rental_details][:date] = date


  end



##class end##
end
