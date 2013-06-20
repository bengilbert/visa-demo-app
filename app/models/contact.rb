class Contact < ActiveRecord::Base
  validates_presence_of :first_name
  validates_presence_of :last_name
  validates_presence_of :email_address
  validates_presence_of :mobile_number

  def self.findByLastName(lastName)
    Contact.where(:last_name => lastName)
  end
end
