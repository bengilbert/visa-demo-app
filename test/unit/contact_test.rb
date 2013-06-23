require 'test_helper'

class ContactTest < ActiveSupport::TestCase

  test "Empty contacts dont save" do
    contact = Contact.new
    assert !contact.save
  end

  test "Mandatory fields are required before a contact can be saved" do
    contact = Contact.new
    contact.first_name = "bob"
    contact.last_name = "henry"
    contact.email_address = "my@email.com"
    contact.mobile_number = "0788844433"
    assert contact.save
  end

  test "searching for an unknown last_name results empty list" do
    assert_blank Contact.findByLastName("unknown")
  end

  test "searching for a valid name results an array of matches" do
    assert_present Contact.findByLastName("gilbert")
  end
end