puts 'Authors'
a1 = Author.create!(name: 'Roger Hargreaves')
a2 = Author.create!(name: 'Julia Donaldson')

puts 'Genres'
g1 = Genre.create(name: 'Fantasy')
g2 = Genre.create(name: 'Funny')

puts 'Books'
b1 = Book.create!(
  title: 'Mr Happy',
  description: 'A book about a happy man.',
  author: a1,
  genre: g2,
  height: 5
)

Book.create!(
  title: 'Mr Strong',
  description: 'A book about a strong man.',
  author: a1,
  genre: g2,
  height: 5
)

Book.create!(
  title: 'Mr Tickle',
  description: 'A book about a man who likes to tickle people.',
  author: a1,
  genre: g2,
  height: 5
)

b2 = Book.create!(
  title: 'The Gruffalo',
  description: "The story of a mouse's walk through the woods.",
  author: a2,
  genre: g1,
  height: 15
)

puts 'Cards'
c1 = Card.create!(name: 'John Smith')
Card.create!(name: 'Brian Jones')
c2 = Card.create!(name: 'Tony Ericson')
Card.create!(name: 'Alice Ericson')
Card.create!(name: 'Sonya Jump')

puts 'Loans'
Loan.create!(
  card: c1,
  book: b1,
  expiry_date: Date.today + 14.days,
  current: true
)

Loan.create!(
  card: c2,
  book: b2,
  expiry_date: Date.today - 2.days,
  current: true
)