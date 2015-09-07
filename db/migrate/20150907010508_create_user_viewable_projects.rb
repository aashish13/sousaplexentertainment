class CreateUserViewableProjects < ActiveRecord::Migration
  def change
    create_table :user_viewable_projects do |t|
      t.timestamps null: false
    end
    add_reference :user_viewable_projects, :user
    add_reference :user_viewable_projects, :project
  end
end
