require 'faker'
require 'csv'
require './contact'


contacts = []
500.times do
  faked = Contact.new
  faked.first_name = Faker::Name.first_name
  faked.last_name = Faker::Name.last_name
  faked.email = Faker::Internet.email(faked.first_name)
  faked.company_name = Faker::Company.name
  faked.phone_number = Faker::PhoneNumber.cell_phone
  faked.photo_url = Faker::Avatar.image(faked.first_name, "500x500")
  contacts << faked
end

CSV.open("contacts.csv", "wb") do |csv|
  csv << ["First Name", "Last Name", "Email", "Company Name", "Phone Number", "Photo Url"]
  contacts.each do |contact|
    csv << [contact.first_name, contact.last_name, contact.email, contact.company_name, contact.phone_number, contact.photo_url]
  end

end
