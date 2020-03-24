# frozen_string_literal: true

class AddPosterUrlToStars < ActiveRecord::Migration[6.0]
  def change
    add_column :stars, :poster_url, :string
  end
end
