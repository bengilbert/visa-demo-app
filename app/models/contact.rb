class Contact < ActiveRecord::Base
  validates_presence_of :first_name
  validates_presence_of :last_name
  validates_presence_of :email_address
  validates_presence_of :mobile_number

  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "80x80>" }, :default_url => "/images/:style/missing.png"

  # not ideal, but allow mass assignment of all attributes, uesful as this model has been migrated from rails 3.0
  attr_accessible :first_name, :last_name, :email_address, :mobile_number, :landline_number, :twitter_account, :id, :created_at, :updated_at
  attr_accessible :avatar, :avatar_file_name, :avatar_content_type, :avatar_file_size, :avatar_updated_at

  def self.findByLastName(lastName)
    matchingContacts = []
    matchingContacts = Contact.find(:all, :conditions => ["lower(last_name) = ?", lastName.downcase]) if !lastName.blank?
    return matchingContacts
  end
end
