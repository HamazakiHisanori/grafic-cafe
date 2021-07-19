class CreateContacts < ActiveRecord::Migration[6.0]
  def change
    create_table :contacts do |t|
      t.string     :name,        null: false
      t.string     :mail
      t.string     :phone_number
      t.integer    :category_id, null: false
      t.text       :content,     null: false
      t.integer    :reply_id,    null: false
      t.timestamps
    end
  end
end
