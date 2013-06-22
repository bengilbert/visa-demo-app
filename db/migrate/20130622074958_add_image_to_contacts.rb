class AddImageToContacts < ActiveRecord::Migration
  def change
    add_attachment :contacts, :avatar
  end
end
