class AddWorkTitleToWorks < ActiveRecord::Migration[5.2]
  def change
    add_column :works, :work_title, :string
  end
end
