class Contact < ActiveRecord::Base
  validates_presence_of :first_name
  validates_presence_of :last_name
  validates_presence_of :email_address
  validates_presence_of :mobile_number

  # not ideal, but allow mass assignment of all attributes, uesful as this model has been migrated from rails 3.0
  attr_accessible :first_name, :last_name, :email_address, :mobile_number, :landline_number, :twitter_account, :id, :created_at, :updated_at

  def self.findByLastName(lastName)
    Contact.where(:last_name => lastName)
  end
end
