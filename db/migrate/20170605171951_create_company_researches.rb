class CreateCompanyResearches < ActiveRecord::Migration[5.0]
  def change
    create_table :company_researches do |t|
      t.string :article_link
      t.integer :company_id
      t.integer :user_id

      t.timestamps

    end
  end
end
