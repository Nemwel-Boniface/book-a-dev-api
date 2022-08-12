# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Developer.create!([
  {name: "Nemwel Boniface", icon: "https://images.unsplash.com/photo-1531384441138-2736e62e0919?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80", location: "Nairobi, Kenya", email: "nemwelboniface@outlook.com", experience: 2, bio: "Some long text", hourly_rate: 25, tech_stack: ["React", "Rails"]},
  {name: "Isaac Lumato", icon: "https://images.unsplash.com/photo-1617244147030-8bd6f9e21d1e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8YmxhY2slMjBtYW4lMjBzbWlsaW5nfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60", location: "Dar Es saalam", email: "isakawilly10@gmail.com", experience: 4, bio: "Some very long text", hourly_rate: 35, tech_stack: ["Angular", "Django"]}
])
