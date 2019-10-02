class CreateNews < ActiveRecord::Migration[5.2]
  def change
    create_table :news do |t|
      t.text :image
      t.text :title
      t.text :text

      t.timestamps
    end
  end
end
