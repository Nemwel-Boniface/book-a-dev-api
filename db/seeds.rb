# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.create!([
  { name: "Nemwel Boniface", username: "nemwelB", email: "nemwelb@gmail.com", password: "222111" },
  { name: "Isaka Lumato", username: "Lumato10", email: "isakalumato@gmail.com", password: "212121" },
])

Developer.create!([
  { name: "Nemwel Boniface", icon: "https://images.unsplash.com/photo-1531384441138-2736e62e0919?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80", location: "Nairobi, Kenya", experience: 2, bio: "Some long text", hourly_rate: 25, tech_stack: "rails, react", github: "https://github.com/Nemwel-Boniface", twitter: "https://twitter.com/nemwel_bonie", linkedin: "https://www.linkedin.com/in/nemwel-nyandoro/", available: true, title: "front-end developer",  phone: "0752245265", user_id: 1 },
  { name: "Isaac Lumato", icon: "https://images.unsplash.com/photo-1617244147030-8bd6f9e21d1e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8YmxhY2slMjBtYW4lMjBzbWlsaW5nfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60", location: "Dar Es saalam", experience: 4, bio: "Some very long text", hourly_rate: 35, tech_stack: "rails, react", github: "https://github.com/isaka-lumato", twitter: "https://twitter.com/lumato_isaac", linkedin: "https://www.linkedin.com/in/isaka-lumato/", available: true, title: "back-end developer", phone: "0752245265", user_id: 1 },
])

Reservation.create!([
  { start_date: "2020-04-23", end_date: "2025-05-13", location: "mavurunza", developer_id: 2, user_id: 1 },
  { start_date: "2020-04-23", end_date: "2025-05-13", location: "mavurunza", developer_id: 2, user_id: 1 },

  { start_date: "2020-04-23", end_date: "2025-05-13", location: "mavurunza", developer_id: 2, user_id: 1 },

  { start_date: "2021-02-24", end_date: "2024-05-11", location: "kigogo", developer_id: 1, user_id: 2 },
])