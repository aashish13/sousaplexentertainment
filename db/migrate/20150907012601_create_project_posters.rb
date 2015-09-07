class CreateProjectPosters < ActiveRecord::Migration
  def change
    create_table :project_posters do |t|
      t.timestamps null: false
    end
    add_reference :project_posters, :project
    add_reference :project_posters, :poster
  end
end
