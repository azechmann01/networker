class CreateContacts < ActiveRecord::Migration[5.0]
  def change
    create_table :contacts do |t|
      t.string :name
      t.integer :user_id
      t.integer :company_id

      t.timestamps

    end
  end
end
