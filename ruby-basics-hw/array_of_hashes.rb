# 'Jesse #{true}'
# "Jesse #{true}"
# :jesse

persons = [
  {
    id: 1,
    first_name: "Jesse",
    last_name: "Wolgamott",
    email: "jesse@comal.io",
    past_due: true
  },
  {
    id: 2,
    first_name: "James",
    last_name: "Wolgamott",
    email: "jesse@comal.io",
    past_due: false
  },
  {
    id: 3,
    first_name: "Amanda",
    last_name: "Wolgamott",
    email: "akirkpatrick100@gmail.com",
    past_due: true
  }
]

# print array
#
# [
#   {:first_name=>"Jesse", :last_name=>"Wolgamott", :email=>"jesse@comal.io"},
#   {:first_name=>"Amanda", :last_name=>"Wolgamott", :email=>"akirkpatrick100@gmail.com"}
# ]

# Jesse Wolgamott <jesse@comal.io>
# Amanda Wolgamott <akirkpatrick100@gmail.com>

# persons.each do |person|
#   puts "#{person[:first_name]} #{person[:last_name]} <#{person[:email]}>"
# end

# results = persons.select do |person|
#   person[:email].include? "comal.io"
# end
#
# results.each do |person|
#     puts "#{person[:first_name]} #{person[:last_name]} <#{person[:email]}>"
# end
#
# emails = persons.map do |person|
#   person[:email]
# end
#
# puts persons.inspect
# puts emails.inspect


# send an email to the delinquent accounts
# filter only the deliquent
# map to get an array of emails
# each to send the email

deliquent_accounts = persons.select do |person|
  person[:past_due] == true
end

deliquent_accounts = persons.select {|person| person[:past_due] == true }

emails = deliquent_accounts.map do |account|
  account[:email]
end

emails.each do |email|
  puts "SEND EMAIL TO #{email}"
end
# SEND EMAIL TO jesse@comal.io
# SEND EMAIL TO akirkpatrick100@gmail.com


persons
  .select {|person| person[:past_due] == true }
  .map { |account| account[:email] }
  .each { |email| puts "SEND EMAIL TO #{email}" }
