class CreateProjectPosters < ActiveRecord::Migration
  def change
    create_table :posters_projects do |t|
      t.timestamps null: false
    end
    add_reference :posters_projects, :project
    add_reference :posters_projects, :poster
  end
end
