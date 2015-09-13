class AddPosterAttachement < ActiveRecord::Migration
  def change
    remove_column :posters, :poster_link
    change_table :posters do |t|
      t.attachment :poster_link
    end
  end
end
