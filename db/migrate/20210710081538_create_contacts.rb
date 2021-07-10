class CreateContacts < ActiveRecord::Migration[6.0]
  def change
    create_table :contacts do |t|
      t.string     :mail,         null: false
      t.string     :phone_number, null: false
      t.integer    :category_id,  null: false
      t.text       :content,      null: false
      t.timestamps
    end
  end
end
