class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :movie_title
      t.string :movie_logline
      t.string :movie_synopsis
      t.integer :movie_budget_start
      t.integer :movie_budget_end
      t.float :funding_level
      t.string :poster_url
      t.timestamps null: false
    end
  end
end
