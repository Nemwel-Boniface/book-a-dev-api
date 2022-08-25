
User.create!([
  { name: "Nemwel Boniface", username: "nemwelB", email: "nemwelb@gmail.com", password: "222111" },
  { name: "Isaka Lumato", username: "Lumato10", email: "isakalumato@gmail.com", password: "212121" },
])

Developer.create!([
  { name: "Nemwel Boniface", icon: "https://avatars.githubusercontent.com/u/86318284?v=4", location: "Nairobi, Kenya", experience: 2, bio: "Experienced Full stack dveloper with 2 years of industry level experience working on rails annd react.", hourly_rate: 25, tech_stack: "Rails, React, Redux, Ruby, PostgresQL", github: "https://github.com/Nemwel-Boniface", twitter: "https://twitter.com/nemwel_bonie", linkedin: "https://www.linkedin.com/in/nemwel-nyandoro/", available: true, title: "Full-stack developer",  phone: "0752245265", user_id: 1 },
  { name: "Isaac Lumato", icon: "https://avatars.githubusercontent.com/u/75973193?v=4", location: "Dar Es saalam", experience: 4, bio: "Am an experienced web developer in rails and javascript. Am also a very fast learner", hourly_rate: 35, tech_stack: "Rails, React, Redux, Ruby", github: "https://github.com/isaka-lumato", twitter: "https://twitter.com/lumato_isaac", linkedin: "https://www.linkedin.com/in/isaka-william-90773020b/", available: true, title: "Full-stack developer", phone: "0752245265", user_id: 1 },
  { name: "Emmanuel Allan", icon: "https://avatars.githubusercontent.com/u/29913493?v=4", location: "Dar Es saalam", experience: 4, bio: "I am broadly skilled with multiple technologies and it does not take me time to add another in my arsenal", hourly_rate: 35, tech_stack: "Rails, React, Redux, Ruby, PostgresQL, Node, MongoDB, Javascript", github: "https://github.com/maxthestranger", twitter: "https://twitter.com/maxthestranger", linkedin: "https://www.linkedin.com/in/maxthestranger/", available: true, title: "Full-stack developer", phone: "0752245265", user_id: 1 },
  { name: "Ciragane Nicole", icon: "https://avatars.githubusercontent.com/u/72297212?v=4", location: "Dar Es saalam", experience: 4, bio: "Am an experienced front end developer who happens to be excellent at backend to...wait, i guess am full-stack. I speak ruby and Js", hourly_rate: 35, tech_stack: "Rails, React, Redux, Ruby, PostgresQL", github: "https://github.com/ciraganenicole", twitter: "https://twitter.com/CiraganeN", linkedin: "https://www.linkedin.com/in/ciraganenicole/", available: true, title: "Full-stack developer", phone: "0752245265", user_id: 1 },
])

Reservation.create!([
  { start_date: "2020-04-23", end_date: "2025-05-13", location: "mavurunza", developer_id: 2, user_id: 1 },

  { start_date: "2021-02-24", end_date: "2024-05-11", location: "kigogo", developer_id: 1, user_id: 2 },
])