# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

genres = Genre.create(
    [
        { name: 'Action' },
 	    { name: 'Adventure' },
		{ name: 'Animation' },
		{ name: 'Biography' },
		{ name: 'Comedy' },
		{ name: 'Crime' },
		{ name: 'Documentary' },
		{ name: 'Drama' },
		{ name: 'Family' },
		{ name: 'Fantasy' },
		{ name: 'Film Noir' },
		{ name: 'History' },
		{ name: 'Horror' },
		{ name: 'Music' },
		{ name: 'Musical' },
		{ name: 'Mystery' },
		{ name: 'Romance' },
		{ name: 'Sci-Fi' },
		{ name: 'Short Film' },
		{ name: 'Sport' },
		{ name: 'Superhero' },
		{ name: 'Thriller' },
		{ name: 'War' },
		{ name: 'Western' }
    ]
)
	