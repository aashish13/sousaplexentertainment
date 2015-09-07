class CreatePosters < ActiveRecord::Migration
  def change
    create_table :posters do |t|
      t.string :movie_title
      t.string :movie_logline
      t.string :movie_synopsis
      t.integer :movie_budget_start
      t.integer :movie_budget_end
      t.timestamps null: false
    end
  end
end
