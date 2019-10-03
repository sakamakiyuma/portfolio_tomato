class RemoveTitleFromWorks < ActiveRecord::Migration[5.2]
  def change
    remove_column :works, :title, :string
  end
end
