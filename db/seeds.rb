awards = [
  "Created an account",
  "First meeting"
]
awards.each do |name|
  Award.create(:name => name)
  puts "Initial award: #{name}"
end