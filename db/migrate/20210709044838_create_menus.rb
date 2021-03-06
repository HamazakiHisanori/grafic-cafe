class CreateMenus < ActiveRecord::Migration[6.0]
  def change
    create_table :menus do |t|
      t.string     :name,        null: false
      t.text       :description, null: false
      t.integer    :price,       null: false
      t.integer    :type_id,     null: false
      t.references :user,        null: false, foreign_key: true
      t.timestamps
    end
  end
end
