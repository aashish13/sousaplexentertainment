class CreatePosters < ActiveRecord::Migration
  def change
    create_table :posters do |t|
      t.string :poster_name
      t.string :poster_link
      t.timestamps null: false
    end
  end
end
