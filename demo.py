class Book:
    def __init__(self, title, author):
        self.title = title
        self.author = author

class Member:
    def __init__(self, name, member_id):
        self.name = name
        self.member_id = member_id
        self.borrowed = []  # instance-level list

    def borrow_book(self, book):
        self.borrowed.append(book)

    def return_book(self, book):
        if book in self.borrowed:
            self.borrowed.remove(book)

    def __str__(self):
        borrowed_titles = [book.title for book in self.borrowed]
        return f"Member: {self.name}, Borrowed Books: {borrowed_titles}"

# Example Usage
b1 = Book("Harry Potter", "J.K. Rowling")
b2 = Book("1984", "George Orwell")

m1 = Member("Alice", 101)
m1.borrow_book(b1)
m1.borrow_book(b2)

print(m1)  # Member: Alice, Borrowed Books: ['Harry Potter', '1984']

m1.return_book(b1)
print(m1)  # Member: Alice, Borrowed Books: ['1984']
