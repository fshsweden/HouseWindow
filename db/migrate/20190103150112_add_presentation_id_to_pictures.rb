class AddPresentationIdToPictures < ActiveRecord::Migration[5.2]
  def change
    add_column :pictures, :presentation_id, :integer
  end
end
