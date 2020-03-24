# frozen_string_literal: true

class AddImdbIdToStars < ActiveRecord::Migration[6.0]
  def change
    add_column :stars, :imdb_id, :string
  end
end
