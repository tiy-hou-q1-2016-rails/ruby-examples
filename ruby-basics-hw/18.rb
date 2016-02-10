hsh = {}
puts hsh.inspect
hsh[:name] = 'Fido'
puts hsh[:name]

puts hsh.inspect
hsh[:age] = '99'
puts hsh.inspect
print "18. "
puts  hsh[:name] == 'Fido'


print "21. "
puts hsh.merge(special: 'Dog') == { name: 'Fido', age: '99', special: 'Dog' }
