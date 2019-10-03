class AddGalleryTitleToGallery < ActiveRecord::Migration[5.2]
  def change
    add_column :galleries, :gallery_title, :string
  end
end
