class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :name
      t.integer :user_id
      t.string :position
      t.string :image_id
      t.text :introduction

      t.timestamps
    end
  end
end
