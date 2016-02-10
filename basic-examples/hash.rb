jwo = {
  name: "jesse",
  height: '5.10',
  lastname: "wolgamott",
  email: "jesse@theironyard.com",
  password: "12345678"
}
awo = {
  name: "Amanda",
  height: '5.6',
  lastname: "wolgamott",
  email: "akirkpatrick100@gmail.com",
  password: "12345678"
}

wos = [jwo, awo]


# gets the value
email =  jwo[:email]
puts "the email is: " + email

# assign the value
jwo[:shirt] = "lannister"

puts jwo[:shirt]
