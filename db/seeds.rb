awards = [
  "Created an account",
  "First meeting",
  "Lightning talk",
  "Asked a question",
  "Brought a friend",
  "Created new club"
]
awards.each do |name|
  Award.find_or_create_by_name(:name => name)
  puts "Initial award: #{name}"
end