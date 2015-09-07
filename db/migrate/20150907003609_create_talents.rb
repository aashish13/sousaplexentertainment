class CreateTalents < ActiveRecord::Migration
  def change
    create_table :talents do |t|
      t.string :first_name
      t.string :last_name
      t.string :status
      t.string :talent_type
      t.boolean :main_team
      t.timestamps null: false
    end
  end
end
