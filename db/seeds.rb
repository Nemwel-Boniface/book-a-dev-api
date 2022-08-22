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
  { name: "Nemwel Boniface", icon: "https://avatars.githubusercontent.com/u/86318284?v=4", location: "Nairobi, Kenya", experience: 2, bio: "Some long text", hourly_rate: 25, tech_stack: "Rails, React, Redux, Ruby, PostgresQL", github: "https://github.com/Nemwel-Boniface", twitter: "https://twitter.com/nemwel_bonie", linkedin: "https://www.linkedin.com/in/nemwel-nyandoro/", available: true, title: "Full-stack developer",  phone: "0752245265", user_id: 1 },
  { name: "Isaac Lumato", icon: "https://avatars.githubusercontent.com/u/75973193?v=4", location: "Dar Es saalam", experience: 4, bio: "Some very long text", hourly_rate: 35, tech_stack: "Rails, React, Redux, Ruby", github: "https://github.com/isaka-lumato", twitter: "https://twitter.com/lumato_isaac", linkedin: "https://www.linkedin.com/in/isaka-william-90773020b/", available: true, title: "Full-stack developer", phone: "0752245265", user_id: 1 },
  { name: "Emmanuel Allan", icon: "https://avatars.githubusercontent.com/u/29913493?v=4", location: "Dar Es saalam", experience: 4, bio: "Some very long text", hourly_rate: 35, tech_stack: "Rails, React, Redux, Ruby, PostgresQL, Node, MongoDB, Javascript", github: "https://github.com/maxthestranger", twitter: "https://twitter.com/maxthestranger", linkedin: "https://www.linkedin.com/in/maxthestranger/", available: true, title: "Full-stack developer", phone: "0752245265", user_id: 1 },
  { name: "Ciragane Nicole", icon: "https://avatars.githubusercontent.com/u/29913493?v=4", location: "Dar Es saalam", experience: 4, bio: "Some very long text", hourly_rate: 35, tech_stack: "Rails, React, Redux, Ruby, PostgresQL", github: "https://github.com/ciraganenicole", twitter: "https://twitter.com/CiraganeN", linkedin: "https://www.linkedin.com/in/ciraganenicole/", available: true, title: "Full-stack developer", phone: "0752245265", user_id: 1 },
])

Reservation.create!([
  { start_date: "2020-04-23", end_date: "2025-05-13", location: "mavurunza", developer_id: 2, user_id: 1 },
  { start_date: "2020-04-23", end_date: "2025-05-13", location: "mavurunza", developer_id: 2, user_id: 1 },

  { start_date: "2020-04-23", end_date: "2025-05-13", location: "mavurunza", developer_id: 2, user_id: 1 },

  { start_date: "2021-02-24", end_date: "2024-05-11", location: "kigogo", developer_id: 1, user_id: 2 },
])