class AddImageAndMultipleTalentType < ActiveRecord::Migration
  def change
    change_table :talents do |t|
      t.attachment :talent_image
    end
  end
end
