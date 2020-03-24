# frozen_string_literal: true

class CreateMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :imdb_id
      t.decimal :imdb_rating
      t.text :poster_url
      t.text :plot

      t.timestamps
    end
  end
end
