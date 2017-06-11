class AddLastActionToContacts < ActiveRecord::Migration[5.1]
  def change
    add_column :contacts, :last_action_type, :string
    add_column :contacts, :last_action_date, :datetime
  end
end
