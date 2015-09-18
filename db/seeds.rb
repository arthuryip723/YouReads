# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
u1 = User.create(email: 'ripe@gmail.com', password: 'password')
u2 = User.create(email: 'thejamaicandave@gmail.com', password: 'password')
a1 = Author.create(name: 'Mark Twain')
a2 = Author.create(name: 'William Faulkner')
b1 = a1.books.create(title: 'The Adventures of Huckleberry Finn')
b2 = a1.books.create(title: 'The Adventures of Tom Sawyer')
b3 = a2.books.create(title: 'The Sound and the Fury')
b4 = a2.books.create(title: 'As I Lay Dying')
b1.reviews.create(content: 'A good book', user_id: 1, rating: 4)
b1.reviews.create(content: 'A good book, too', user_id: 2, rating: 3)
# b1.ratings.create(stars: 4, user_id: 1)
# b1.ratings.create(stars: 3, user_id: 2)
s1 = u1.shelves.create(category: "to_read", title: "To Read")
s2 = u1.shelves.create(category: "customized", title: "Cust Shelf")
s1.shelvings.create(book_id: 1)
s2.shelvings.create(book_id: 2)
