class AddConstraintsToContactsTable < ActiveRecord::Migration
  def self.up
    change_column :contacts, :first_name,    :text, :null => false
    change_column :contacts, :last_name,     :text, :null => false
    change_column :contacts, :email_address, :text, :null => false
    change_column :contacts, :mobile_number, :text, :null => false
  end

  def self.down
    change_column :contacts, :first_name, :text, :null => true
    change_column :contacts, :last_name,     :text, :null => true
    change_column :contacts, :email_address, :text, :null => true
    change_column :contacts, :mobile_number, :text, :null => true
  end
end
