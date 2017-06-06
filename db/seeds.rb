a1 = Author.create!(name: 'Roger Hargreaves')
a2 = Author.create!(name: 'Julia Donaldson')

g1 = Genre.create(name: 'Fantasy')
g2 = Genre.create(name: 'Funny')

Book.create!(
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

Book.create!(
  title: 'The Gruffalo',
  description: "The story of a mouse's walk through the woods.",
  author: a2,
  genre: g1,
  height: 15
)

Card.create!(name: 'John Smith')
Card.create!(name: 'Brian Jones')
Card.create!(name: 'Tony Ericson')
Card.create!(name: 'Alice Ericson')
Card.create!(name: 'Sonya Jump')

