require 'CSV'

CSV.foreach("data.csv", headers: true) do |row|
  print row.to_hash.inspect
end


awo = {
  "name"=>"Amanda",
  "email"=>"akirkaptrick100@gmail.com",
  "height"=>"5’6”",
  "password"=>"12345678"
}
jwo = {
  "name"=>"Jesse",
  "email"=>"jesse@theironyard.com",
  "height"=>"5’10\"",
  "password"=>"12345678"
}
