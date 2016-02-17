require 'csv'
require 'erb'
require './contact' # require a file in the current directory

# read

html = File.read("index.html.erb")

id = 1
# replace
contacts = []
CSV.foreach("contacts.csv", headers: true) do |row|
  contact_hash = row.to_hash

  contact = Contact.new
  contact.id = id
  contact.first_name = contact_hash["First Name"]
  contact.last_name = contact_hash["Last Name"]
  contact.email = contact_hash["Email"]
  contact.company_name = contact_hash["Company Name"]
  contact.phone_number = contact_hash["Phone Number"]
  contact.photo_url = contact_hash["Photo Url"]
  contacts << contact
  id += 1
end

# sort contacts by last name
contacts = contacts.sort {|x, y| x.last_name <=> y.last_name }


new_html = ERB.new(html).result(binding)

# write

File.open("site/index.html", "wb") do |file|
  file.write(new_html)
  file.close
end


contacts.each do |contact|
  # read
  html = File.read("detail.html.erb")
  # replace
  new_html = ERB.new(html).result(binding)
  # write
  File.open("site/#{contact.id}.html", "wb") do |file|
    file.write(new_html)
    file.close
  end
end
