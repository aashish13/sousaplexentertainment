class CreateProjectTalents < ActiveRecord::Migration
  def change
    create_table :projects_talents do |t|
      t.timestamps null: false
    end
    add_reference :projects_talents, :project
    add_reference :projects_talents, :talent
  end
end
