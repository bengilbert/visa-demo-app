class CreateContactsTable < ActiveRecord::Migration

  def self.up
    create_table :contacts do |t|
      t.string :first_name
      t.string :last_name
      t.string :email_address
      t.string :mobile_number
      t.string :landline_number
      t.string :twitter_account

      t.timestamps
    end
  end

  def self.down
    drop_table :contacts
  end

end
