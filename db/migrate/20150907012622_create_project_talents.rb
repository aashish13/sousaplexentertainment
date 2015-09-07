class CreateProjectTalents < ActiveRecord::Migration
  def change
    create_table :project_talents do |t|
      t.timestamps null: false
    end
    add_reference :project_talents, :project
    add_reference :project_talents, :talent
  end
end
