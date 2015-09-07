class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :movie_title
      t.string :movie_logline
      t.string :movie_synopsis
      t.string :movie_budget_start
      t.string :movie_budget_end
      t.float :funding_level
      t.timestamps null: false
    end
  end
end
