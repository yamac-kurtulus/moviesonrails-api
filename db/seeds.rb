# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Genre.create(
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


  movies = Movie.create (
  [
    {
      title: 'Forrest Gump (1994)',
      imdb_id: 'tt0109830',
      imdb_rating: 8.8,
      poster_url: 'https://m.media-amazon.com/images/M/MV5BNWIwODRlZTUtY2U3ZS00Yzg1LWJhNzYtMmZiYmEyNmU1NjMzXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_UY268_CR1,0,182,268_AL_.jpg',
      plot: 'plot',
      genres: [
        Genre.find_by(name: 'Drama'),
        Genre.find_by(name: 'Romance')
      ]
    },
    {
      title: 'Cast Away (2000)',
      imdb_id: 'tt0162222',
      imdb_rating: 7.8,
      poster_url: 'https://m.media-amazon.com/images/M/MV5BN2Y5ZTU4YjctMDRmMC00MTg4LWE1M2MtMjk4MzVmOTE4YjkzXkEyXkFqcGdeQXVyNTc1NTQxODI@._V1_UX182_CR0,0,182,268_AL_.jpg',
      plot: 'plot',
      genres: [
        Genre.find_by(name: 'Adventure'),
        Genre.find_by(name: 'Drama'),
        Genre.find_by(name: 'Romance')
      ]
    },
    {
      title: 'As Good as It Gets (1997)',
      imdb_id: 'tt0119822',
      imdb_rating: 7.7,
      poster_url: 'https://m.media-amazon.com/images/M/MV5BNWMxZTgzMWEtMTU0Zi00NDc5LWFkZjctMzUxNDIyNzZiMmNjXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_UX182_CR0,0,182,268_AL_.jpg',
      plot: 'plot',
      genres: [
        Genre.find_by(name: 'Comedy'),
        Genre.find_by(name: 'Drama')
      ]
    },
    {
      title: 'The Departed (2006)',
      imdb_id: 'tt0407887',
      imdb_rating: 8.5,
      poster_url: 'https://m.media-amazon.com/images/M/MV5BMTI1MTY2OTIxNV5BMl5BanBnXkFtZTYwNjQ4NjY3._V1_UX182_CR0,0,182,268_AL_.jpg',
      plot: 'plot',
      genres: [
        Genre.find_by(name: 'Crime'),
        Genre.find_by(name: 'Drama')
      ]
    },
    {
      title: 'Good Will Hunting (1997)',
      imdb_id: 'tt0119217',
      imdb_rating: 8.3,
      poster_url: 'https://m.media-amazon.com/images/M/MV5BOTI0MzcxMTYtZDVkMy00NjY1LTgyMTYtZmUxN2M3NmQ2NWJhXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_UX182_CR0,0,182,268_AL_.jpg',
      plot: 'plot',
      genres: [
        Genre.find_by(name: 'Drama'),
        Genre.find_by(name: 'Romance')
      ]
    },
    {
      title: 'Gone Girl (2014)',
      imdb_id: 'tt2267998',
      imdb_rating: 8.1,
      poster_url: 'https://m.media-amazon.com/images/M/MV5BMTk0MDQ3MzAzOV5BMl5BanBnXkFtZTgwNzU1NzE3MjE@._V1_UX182_CR0,0,182,268_AL_.jpg',
      plot: 'plot',
      genres: [
        Genre.find_by(name: 'Drama'),
        Genre.find_by(name: 'Mystery')
      ]
    },
    {
      title: 'The Town (2010)',
      imdb_id: 'tt0840361',
      imdb_rating: 7.5,
      poster_url: 'https://m.media-amazon.com/images/M/MV5BMTcyNzcxODg3Nl5BMl5BanBnXkFtZTcwMTUyNjQ3Mw@@._V1_UX182_CR0,0,182,268_AL_.jpg',
      plot: 'plot',
      genres: [
        Genre.find_by(name: 'Crime'),
        Genre.find_by(name: 'Drama')
      ]
    },
    {
      title: 'Saving Private Ryan (1998)',
      imdb_id: 'tt0120815',
      imdb_rating: 8.6,
      poster_url: 'https://m.media-amazon.com/images/M/MV5BZjhkMDM4MWItZTVjOC00ZDRhLThmYTAtM2I5NzBmNmNlMzI1XkEyXkFqcGdeQXVyNDYyMDk5MTU@._V1_UY268_CR0,0,182,268_AL_.jpg',
      plot: 'plot',
      genres: [
        Genre.find_by(name: 'Drama'),
        Genre.find_by(name: 'War')
      ]
    },
    {
      title: 'The Wolf of Wall Street (2013)',
      imdb_id: 'tt0993846',
      imdb_rating: 8.2,
      poster_url: 'https://m.media-amazon.com/images/M/MV5BMjIxMjgxNTk0MF5BMl5BanBnXkFtZTgwNjIyOTg2MDE@._V1_UX182_CR0,0,182,268_AL_.jpg',
      plot: 'plot',
      genres: [
        Genre.find_by(name: 'Biography'),
        Genre.find_by(name: 'Crime')
      ]
    },
    {
      title: 'Twister (1996)',
      imdb_id: 'tt0117998',
      imdb_rating: 6.4,
      poster_url: 'https://m.media-amazon.com/images/M/MV5BODExYTM0MzEtZGY2Yy00N2ExLTkwZjItNGYzYTRmMWZlOGEzXkEyXkFqcGdeQXVyNDk3NzU2MTQ@._V1_UX182_CR0,0,182,268_AL_.jpg',
      plot: 'plot',
      genres: [
        Genre.find_by(name: 'Action'),
        Genre.find_by(name: 'Adventure')
      ]
    },
    {
      title: 'Chinatown 81974)',
      imdb_id: 'tt0071315',
      imdb_rating: 8.2,
      poster_url: 'https://m.media-amazon.com/images/M/MV5BOGMwYmY5ZmEtMzY1Yi00OWJiLTk1Y2MtMzI2MjBhYmZkNTQ0XkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_UX182_CR0,0,182,268_AL_.jpg',
      plot: 'plot',
      genres: [
        Genre.find_by(name: 'Drama'),
        Genre.find_by(name: 'Thriller')
      ]
    },
    {
      title: 'The Treasure of the Sierra Madre (1948)',
      imdb_id: 'tt0040897',
      imdb_rating: 8.2,
      poster_url: 'https://m.media-amazon.com/images/M/MV5BOTJlZWMxYzEtMjlkMS00ODE0LThlM2ItMDI3NGQ2YjhmMzkxXkEyXkFqcGdeQXVyMDI2NDg0NQ@@._V1_UX182_CR0,0,182,268_AL_.jpg',
      plot: 'plot',
      genres: [
        Genre.find_by(name: 'Adventure'),
        Genre.find_by(name: 'Drama')
      ]
    },
    {
      title: 'The Martian (2015)',
      imdb_id: 'tt3659388',
      imdb_rating: 8.0,
      poster_url: 'https://m.media-amazon.com/images/M/MV5BMTc2MTQ3MDA1Nl5BMl5BanBnXkFtZTgwODA3OTI4NjE@._V1_UX182_CR0,0,182,268_AL_.jpg',
      plot: 'plot',
      genres: [
        Genre.find_by(name: 'Adventure'),
        Genre.find_by(name: 'Drama')
      ]
    },
    {
      title: 'The Talented Mr. Ripley (1999)',
      imdb_id: 'tt0134119',
      imdb_rating: 7.4,
      poster_url: 'https://m.media-amazon.com/images/M/MV5BODA3NDhiZjYtYTk2NS00ZWYwLTljYTQtMjU0NzcyMGEzNTU2L2ltYWdlL2ltYWdlXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_UX182_CR0,0,182,268_AL_.jpg',
      plot: 'plot',
      genres: [
        Genre.find_by(name: 'Crime'),
        Genre.find_by(name: 'Drama')
      ]
    },
    {
      title: 'Inception (2010)',
      imdb_id: 'tt1375666',
      imdb_rating: 8.8,
      poster_url: 'https://m.media-amazon.com/images/M/MV5BMjAxMzY3NjcxNF5BMl5BanBnXkFtZTcwNTI5OTM0Mw@@._V1_UX182_CR0,0,182,268_AL_.jpg',
      plot: 'plot',
      genres: [
        Genre.find_by(name: 'Action'),
        Genre.find_by(name: 'Adventure')
      ]
    },
    {
      title: 'Argo (2012)',
      imdb_id: 'tt1024648',
      imdb_rating: 7.7,
      poster_url: 'https://m.media-amazon.com/images/M/MV5BNzljNjY3MDYtYzc0Ni00YjU0LWIyNDUtNTE0ZDRiMGExMjZlXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_UX182_CR0,0,182,268_AL_.jpg',
      plot: 'plot',
      genres: [
        Genre.find_by(name: 'Biography'),
        Genre.find_by(name: 'Drama')
      ]
    },
    {
      title: 'Trumbo (2015)',
      imdb_id: 'tt3203606',
      imdb_rating: 7.5,
      poster_url: 'https://m.media-amazon.com/images/M/MV5BMjM1MDc2OTQ3NV5BMl5BanBnXkFtZTgwNzQ0NjQ1NjE@._V1_UX182_CR0,0,182,268_AL_.jpg',
      plot: 'plot',
      genres: [
        Genre.find_by(name: 'Biography'),
        Genre.find_by(name: 'Drama')
      ]
    },
    {
      title: 'Last Flag Flying (2017)',
      imdb_id: 'tt6018306',
      imdb_rating: 6.9,
      poster_url: 'https://m.media-amazon.com/images/M/MV5BMjI3MDAxNTg1OF5BMl5BanBnXkFtZTgwMzMzMDM1MzI@._V1_UX182_CR0,0,182,268_AL_.jpg',
      plot: 'plot',
      genres: [
        Genre.find_by(name: 'Comedy'),
        Genre.find_by(name: 'Drama')
      ]
    },
    {
      title: 'The Matrix (1999)',
      imdb_id: 'tt0133093',
      imdb_rating: 8.7,
      poster_url: 'https://m.media-amazon.com/images/M/MV5BNzQzOTk3OTAtNDQ0Zi00ZTVkLWI0MTEtMDllZjNkYzNjNTc4L2ltYWdlXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_UX182_CR0,0,182,268_AL_.jpg',
      plot: 'plot',
      genres: [
        Genre.find_by(name: 'Action'),
        Genre.find_by(name: 'Sci-Fi')
      ]
    },
    {
      title: 'The Matrix Reloaded (2003)',
      imdb_id: 'tt0234215',
      imdb_rating: 7.2,
      poster_url: 'https://m.media-amazon.com/images/M/MV5BODE0MzZhZTgtYzkwYi00YmI5LThlZWYtOWRmNWE5ODk0NzMxXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_UX182_CR0,0,182,268_AL_.jpg',
      plot: 'plot',
      genres: [
        Genre.find_by(name: 'Action'),
        Genre.find_by(name: 'Sci-Fi')
      ]
    },
    {
      title: 'Fight Club (1999)',
      imdb_id: 'tt0137523',
      imdb_rating: 8.8,
      poster_url: 'https://m.media-amazon.com/images/M/MV5BMmEzNTkxYjQtZTc0MC00YTVjLTg5ZTEtZWMwOWVlYzY0NWIwXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_UX182_CR0,0,182,268_AL_.jpg',
      plot: 'plot',
      genres: [
        Genre.find_by(name: 'Drama')
      ]
    },
    {
      title: 'Contagion (2011)',
      imdb_id: 'tt1598778',
      imdb_rating: 6.7,
      poster_url: 'https://m.media-amazon.com/images/M/MV5BMTY3MDk5MDc3OV5BMl5BanBnXkFtZTcwNzAyNTg0Ng@@._V1_UX182_CR0,0,182,268_AL_.jpg',
      plot: 'plot',
      genres: [
        Genre.find_by(name: 'Action'),
        Genre.find_by(name: 'Drama')
      ]
    },
    {
      title: 'The Lord of the Rings: The Fellowship of the Ring (2001)',
      imdb_id: 'tt0120737',
      imdb_rating: 8.8,
      poster_url: 'https://m.media-amazon.com/images/M/MV5BN2EyZjM3NzUtNWUzMi00MTgxLWI0NTctMzY4M2VlOTdjZWRiXkEyXkFqcGdeQXVyNDUzOTQ5MjY@._V1_UX182_CR0,0,182,268_AL_.jpg',
      plot: 'plot',
      genres: [
        Genre.find_by(name: 'Action'),
        Genre.find_by(name: 'Adventure')
      ]
    },
    {
      title: 'The Big Lebowski (1998)',
      imdb_id: 'tt0118715',
      imdb_rating: 8.1,
      poster_url: 'https://m.media-amazon.com/images/M/MV5BMTQ0NjUzMDMyOF5BMl5BanBnXkFtZTgwODA1OTU0MDE@._V1_UX182_CR0,0,182,268_AL_.jpg',
      plot: 'plot',
      genres: [
        Genre.find_by(name: 'Comedy'),
        Genre.find_by(name: 'Crime')
      ]
    },
    {
      title: "Charlie's Angels (2019)",
      imdb_id: 'tt5033998',
      imdb_rating: 4.5,
      poster_url: 'https://m.media-amazon.com/images/M/MV5BN2VkMjQwZWMtMzc1NC00ZjJiLWJlNTMtNmRjOTE2ZTJmYzUwXkEyXkFqcGdeQXVyMjUxMTY3ODM@._V1_UY268_CR7,0,182,268_AL_.jpg',
      plot: 'plot',
      genres: [
        Genre.find_by(name: 'Comedy'),
        Genre.find_by(name: 'Action')
      ]
    }
  ]
)

    Star.create (
    [
      {
        name: 'Tom Hanks',
        imdb_id: 'nm0000158',
        poster_url: 'https://m.media-amazon.com/images/M/MV5BMTQ2MjMwNDA3Nl5BMl5BanBnXkFtZTcwMTA2NDY3NQ@@._V1_UY317_CR2,0,214,317_AL_.jpg',
        movies: [
          Movie.find_by(title: 'Forrest Gump (1994)'),
          Movie.find_by(title: 'Cast Away (2000)'),
          Movie.find_by(title: 'Saving Private Ryan (1998)')
        ]
      },
    {
      name: 'Helen Hunt',
      imdb_id: 'nm0000166',
      poster_url: 'https://m.media-amazon.com/images/M/MV5BMTM1OTk1ODIwMV5BMl5BanBnXkFtZTcwMTA0MTIwOQ@@._V1_UY317_CR14,0,214,317_AL_.jpg',
      movies: [
        Movie.find_by(title: 'Cast Away (2000)'),
        Movie.find_by(title: 'As Good as It Gets (1997)'),
        Movie.find_by(title: 'Twister (1996)')
      ]
    },
    {
      name: 'Jack Nicholson',
      imdb_id: 'nm0000197',
      poster_url: 'https://m.media-amazon.com/images/M/MV5BMTQ3OTY0ODk0M15BMl5BanBnXkFtZTYwNzE4Njc4._V1_UY317_CR7,0,214,317_AL_.jpg',
      movies: [
        Movie.find_by(title: 'As Good as It Gets (1997)'),
        Movie.find_by(title: 'The Departed (2006)')
      ]
    },
    {
      name: 'Leonardo DiCaprio',
      imdb_id: 'nm0000138',
      poster_url: 'https://m.media-amazon.com/images/M/MV5BMjI0MTg3MzI0M15BMl5BanBnXkFtZTcwMzQyODU2Mw@@._V1_UY317_CR10,0,214,317_AL_.jpg',
      movies: [
        Movie.find_by(title: 'The Departed (2006)'),
        Movie.find_by(title: 'The Wolf of Wall Street (2013)'),
        Movie.find_by(title: 'Inception (2010)')
      ]
    },
    {
      name: 'Matt Damon',
      imdb_id: 'nm0000354',
      poster_url: 'https://m.media-amazon.com/images/M/MV5BMTM0NzYzNDgxMl5BMl5BanBnXkFtZTcwMDg2MTMyMw@@._V1_UY317_CR11,0,214,317_AL_.jpg',
      movies: [
        Movie.find_by(title: 'The Departed (2006)'),
        Movie.find_by(title: 'Good Will Hunting (1997)'),
        Movie.find_by(title: 'Saving Private Ryan (1998)'),
        Movie.find_by(title: 'The Martian (2015)'),
        Movie.find_by(title: 'The Talented Mr. Ripley (1999)')
      ]
    },
    {
      name: 'Ben Affleck',
      imdb_id: 'nm0000255',
      poster_url: 'https://m.media-amazon.com/images/M/MV5BMTI4MzIxMTk0Nl5BMl5BanBnXkFtZTcwOTU5NjA0Mg@@._V1_UX214_CR0,0,214,317_AL_.jpg',
      movies: [
        Movie.find_by(title: 'Gone Girl (2014)'),
        Movie.find_by(title: 'Good Will Hunting (1997)'),
        Movie.find_by(title: 'The Town (2010)')
      ]
    },
    {
      name: 'John Huston',
      imdb_id: 'nm0001379',
      poster_url: 'https://m.media-amazon.com/images/M/MV5BMjI0OTcyMDcxMF5BMl5BanBnXkFtZTcwNDY0MjE3Mw@@._V1_UY317_CR12,0,214,317_AL_.jpg',
      movies: [
        Movie.find_by(title: 'The Treasure of the Sierra Madre (1948)')
      ]
    },
    {
      name: 'Bryan Cranston',
      imdb_id: 'nm0186505',
      poster_url: 'https://m.media-amazon.com/images/M/MV5BMTA2NjEyMTY4MTVeQTJeQWpwZ15BbWU3MDQ5NDAzNDc@._V1_UX214_CR0,0,214,317_AL_.jpg',
      movies: [
        Movie.find_by(title: 'Argo (2012)'),
        Movie.find_by(title: 'Trumbo (2015)'),
        Movie.find_by(title: 'Last Flag Flying (2017)')
      ]
    },
    {
      name: 'Laurence Fishburne',
      imdb_id: 'nm0000401',
      poster_url: 'https://m.media-amazon.com/images/M/MV5BMTc0NjczNDc1MV5BMl5BanBnXkFtZTYwMDU0Mjg1._V1_UX214_CR0,0,214,317_AL_.jpg',
      movies: [
        Movie.find_by(title: 'Last Flag Flying (2017)'),
        Movie.find_by(title: 'The Matrix Reloaded (2003)'),
        Movie.find_by(title: 'The Matrix (1999)')
      ]
    },
    {
      name: 'Brad Pitt',
      imdb_id: 'nm0000093',
      poster_url: 'https://m.media-amazon.com/images/M/MV5BMjA1MjE2MTQ2MV5BMl5BanBnXkFtZTcwMjE5MDY0Nw@@._V1_UX214_CR0,0,214,317_AL_.jpg',
      movies: [
        Movie.find_by(title: 'Fight Club (1999)')
      ]
    },
    {
      name: 'Jude Law',
      imdb_id: 'nm0000179',
      poster_url: 'https://m.media-amazon.com/images/M/MV5BMTMwOTg5NTQ3NV5BMl5BanBnXkFtZTcwNzM3MDAzNQ@@._V1_UY317_CR6,0,214,317_AL_.jpg',
      movies: [
        Movie.find_by(title: 'Contagion (2011)'),
        Movie.find_by(title: 'The Talented Mr. Ripley (1999)')
      ]
    },
    {
      name: 'Elijah Wood',
      imdb_id: 'nm0000704',
      poster_url: 'https://m.media-amazon.com/images/M/MV5BMTM0NDIxMzQ5OF5BMl5BanBnXkFtZTcwNzAyNTA4Nw@@._V1_UX214_CR0,0,214,317_AL_.jpg',
      movies: [
        Movie.find_by(title: 'The Lord of the Rings: The Fellowship of the Ring (2001)')
      ]
    },
    {
      name: 'Jeff Bridges',
      imdb_id: 'nm0000313',
      poster_url: 'https://m.media-amazon.com/images/M/MV5BNTU1NjM4MDYzMl5BMl5BanBnXkFtZTcwMjIwMjMyMw@@._V1_UY317_CR11,0,214,317_AL_.jpg',
      movies: [
        Movie.find_by(title: 'The Big Lebowski (1998)')
      ]
    },
    {
      name: 'Kristen Stewart',
      imdb_id: 'nm0829576',
      poster_url: 'https://m.media-amazon.com/images/M/MV5BMTQxMjUyOTY0Ml5BMl5BanBnXkFtZTcwNjI2MjA2Mw@@._V1_UY317_CR7,0,214,317_AL_.jpg',
      movies: [
        Movie.find_by(title: "Charlie's Angels (2019)")
      ]
    },
    {
      name: 'Julianne Moore',
      imdb_id: 'nm0000194',
      poster_url: 'https://m.media-amazon.com/images/M/MV5BMTM5NDI1MjE2Ml5BMl5BanBnXkFtZTgwNDE0Nzk0MDE@._V1_UY317_CR7,0,214,317_AL_.jpg',
      movies: [
        Movie.find_by(title: 'The Big Lebowski (1998)')
      ]
    },
    {
      name: 'Naomi Scott',
      imdb_id: 'nm4305463',
      poster_url: 'https://m.media-amazon.com/images/M/MV5BMzQ5YWRlYjktZDM5My00N2YwLTg4N2ItYmY2ZDQ4ZGYwMzBkXkEyXkFqcGdeQXVyNDU1NjUxOTc@._V1_UY317_CR27,0,214,317_AL_.jpg',
      movies: [
        Movie.find_by(title: "Charlie's Angels (2019)")
      ]
    },
    {
      name: 'Orlando Bloom',
      imdb_id: 'nm0089217',
      poster_url: 'https://m.media-amazon.com/images/M/MV5BMjE1MDkxMjQ3NV5BMl5BanBnXkFtZTcwMzQ3Mjc4MQ@@._V1_UY317_CR8,0,214,317_AL_.jpg',
      movies: [
        Movie.find_by(title: 'The Lord of the Rings: The Fellowship of the Ring (2001)')
      ]
    },
    {
      name: 'Ian McKellen',
      imdb_id: 'nm0005212',
      poster_url: 'https://m.media-amazon.com/images/M/MV5BMTQ2MjgyNjk3MV5BMl5BanBnXkFtZTcwNTA3NTY5Mg@@._V1_UY317_CR10,0,214,317_AL_.jpg',
      movies: [
        Movie.find_by(title: 'The Lord of the Rings: The Fellowship of the Ring (2001)')
      ]
    }
  ]
)



  Movie.find_by(imdb_id: 'tt0109830').stars << Star.find_by(imdb_id: 'nm0000158') << Star.find_by(imdb_id: 'nm0000158')
  Movie.find_by(imdb_id: 'tt0162222').stars << Star.find_by(imdb_id: 'nm0000166')
  Movie.find_by(imdb_id: 'tt0119822').stars << Star.find_by(imdb_id: 'nm0000166') << Star.find_by(imdb_id: 'nm0000197')
  Movie.find_by(imdb_id: 'tt0407887').stars << Star.find_by(imdb_id: 'nm0000197') << Star.find_by(imdb_id: 'nm0000138') << Star.find_by(imdb_id: 'nm0000354')
  Movie.find_by(imdb_id: 'tt0119217').stars << Star.find_by(imdb_id: 'nm0000354') << Star.find_by(imdb_id: 'nm0000255')
  Movie.find_by(imdb_id: 'tt2267998').stars << Star.find_by(imdb_id: 'nm0000255')
  Movie.find_by(imdb_id: 'tt0840361').stars << Star.find_by(imdb_id: 'nm0000255')
  Movie.find_by(imdb_id: 'tt0120815').stars << Star.find_by(imdb_id: 'nm0000158') << Star.find_by(imdb_id: 'nm0000354')
  Movie.find_by(imdb_id: 'tt0993846').stars << Star.find_by(imdb_id: 'nm0000138')
  Movie.find_by(imdb_id: 'tt0117998').stars << Star.find_by(imdb_id: 'nm0000166')
  Movie.find_by(imdb_id: 'tt0071315').stars << Star.find_by(imdb_id: 'nm0001379') << Star.find_by(imdb_id: 'nm0000197')
  Movie.find_by(imdb_id: 'tt0040897').stars << Star.find_by(imdb_id: 'nm0001379')
  Movie.find_by(imdb_id: 'tt3659388').stars << Star.find_by(imdb_id: 'nm0000354')
  Movie.find_by(imdb_id: 'tt0134119').stars << Star.find_by(imdb_id: 'nm0000354') << Star.find_by(imdb_id: 'nm0000179') << Star.find_by(imdb_id: 'nm0005212')
  Movie.find_by(imdb_id: 'tt1375666').stars << Star.find_by(imdb_id: 'nm0000138')
  Movie.find_by(imdb_id: 'tt1024648').stars << Star.find_by(imdb_id: 'nm0186505')
  Movie.find_by(imdb_id: 'tt3203606').stars << Star.find_by(imdb_id: 'nm0186505')
  Movie.find_by(imdb_id: 'tt6018306').stars << Star.find_by(imdb_id: 'nm0186505') << Star.find_by(imdb_id: 'nm0000401')
  Movie.find_by(imdb_id: 'tt0133093').stars << Star.find_by(imdb_id: 'nm0000401')
  Movie.find_by(imdb_id: 'tt0234215').stars << Star.find_by(imdb_id: 'nm0000401')
  Movie.find_by(imdb_id: 'tt0137523').stars << Star.find_by(imdb_id: 'nm0000093')
  Movie.find_by(imdb_id: 'tt1598778').stars << Star.find_by(imdb_id: 'nm0000179')
  Movie.find_by(imdb_id: 'tt0120737').stars << Star.find_by(imdb_id: 'nm0000704') << Star.find_by(imdb_id: 'nm0089217')
  Movie.find_by(imdb_id: 'tt5033998').stars << Star.find_by(imdb_id: 'nm0829576') << Star.find_by(imdb_id: 'nm4305463')
  Movie.find_by(imdb_id: 'tt0118715').stars << Star.find_by(imdb_id: 'nm0000313') << Star.find_by(imdb_id: 'nm0000194')