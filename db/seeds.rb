puts 'Authors'
a1 = Author.create!(name: 'Roger Hargreaves')
a2 = Author.create!(name: 'Julia Donaldson')
a3 = Author.create!(name: 'Eric Carle')
a4 = Author.create!(name: 'Roald Dahl')

puts 'Genres'
g1 = Genre.create!(name: 'Fantasy')
g2 = Genre.create!(name: 'Funny')
g3 = Genre.create!(name: 'Hungry')

puts 'Books'
b1 = Book.create!(
  title: 'Mr Happy',
  description: 'A book about a happy man.',
  author: a1,
  genre: g2,
  height: 5,
  barcode: '*67bf9616-2*'
)

b2 = Book.create!(
  title: 'Mr Strong',
  description: 'A book about a strong man.',
  author: a1,
  genre: g2,
  height: 5,
  barcode: '*a1313529-3*'
)

b3 = Book.create!(
  title: 'Mr Tickle',
  description: 'A book about a man who likes to tickle people.',
  author: a1,
  genre: g2,
  height: 5,
  barcode: '*890180ec-9*'
)

b4 = Book.create!(
  title: 'The Gruffalo',
  description: "The story of a mouse's walk through the woods.",
  author: a2,
  genre: g1,
  height: 15,
  barcode: '*394aeaa4-8*'
)

b5 = Book.create!(
  title: 'The Very Hungry Catterpillar',
  description: 'It eats loads of things.',
  author: a3,
  genre: g3,
  height: 7,
  barcode: '*a17f7860-e*'
)

b6 = Book.create!(
  title: 'Matilda',
  description: 'Girl discoveres powers, gets her own back.',
  author: a4,
  genre: g1,
  height: 15,
  barcode: '*0c18acfb-b*'
)


puts 'Cards'
c1 = Card.create!(name: 'John Smith', barcode: '*5dbfaf95-b*')
c2 = Card.create!(name: 'Brian Jones', barcode: '*edb59f2b-5*')
c3 = Card.create!(name: 'Tony Ericson', barcode: '*bf4d991b-e*')
c4 = Card.create!(name: 'Alice Ericson', barcode: '*5004990c-5*')
c5 = Card.create!(name: 'Sonya Jump', barcode: '*097aa952-9*')

puts 'Loans'
Loan.create!(
  card: c1,
  book: b1,
  expiry_date: Date.today + 14.days,
  current: true
)

Loan.create!(
  card: c2,
  book: b4,
  expiry_date: Date.today - 2.days,
  current: true
)

Loan.create!(card: c2, book: b2, expiry_date: Date.today + 2.days, current: true)
Loan.create!(card: c3, book: b3, expiry_date: Date.today + 6.days, current: true)
Loan.create!(card: c4, book: b5, expiry_date: Date.today - 3.days, current: true)
Loan.create!(card: c1, book: b5, expiry_date: Date.today + 14.days, current: false)
Loan.create!(card: c1, book: b4, expiry_date: Date.today + 14.days, current: false)
