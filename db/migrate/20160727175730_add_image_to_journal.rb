class AddImageToJournal < ActiveRecord::Migration
  def change
    add_column :journals, :image_uid,  :string
  end
end
