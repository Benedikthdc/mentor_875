# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
require 'faker'

User.destroy_all
Mentor.destroy_all

avatars = ["https://images.unsplash.com/photo-1645830166230-187caf791b90?crop=entropy&cs=tinysrgb&fm=jpg&ixlib=rb-1.2.1&q=60&raw_url=true&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTN8fGF2YXRhciUyMG1hbGV8ZW58MHx8MHx8&auto=format&fit=crop&w=900","https://images.unsplash.com/photo-1508835277982-1c1b0e205603?crop=entropy&cs=tinysrgb&fm=jpg&ixlib=rb-1.2.1&q=60&raw_url=true&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8YXZhdGFyJTIwbWFsZSUyMHN1aXR8ZW58MHx8MHx8&auto=format&fit=crop&w=900", "https://images.unsplash.com/photo-1534030347209-467a5b0ad3e6?crop=entropy&cs=tinysrgb&fm=jpg&ixlib=rb-1.2.1&q=60&raw_url=true&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjB8fGF2YXRhciUyMG1hbGUlMjBzdWl0fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=900", "https://media.istockphoto.com/photos/executive-businessman-studio-portrait-picture-id1283710598?b=1&k=20&m=1283710598&s=170667a&w=0&h=IV8QK9yFAdmn0VgxWVqLXK0ZZxICwn3YpP7QN6kdZpo=", "https://images.unsplash.com/photo-1529586691389-2d3d4132856c?crop=entropy&cs=tinysrgb&fm=jpg&ixlib=rb-1.2.1&q=60&raw_url=true&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjR8fG1hbGUlMjBzdWl0fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=900", "https://images.unsplash.com/photo-1578988254323-e1e7dd471706?crop=entropy&cs=tinysrgb&fm=jpg&ixlib=rb-1.2.1&q=60&raw_url=true&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mzh8fG1hbGUlMjBzdWl0fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=900", "https://images.unsplash.com/photo-1578988254323-e1e7dd471706?crop=entropy&cs=tinysrgb&fm=jpg&ixlib=rb-1.2.1&q=60&raw_url=true&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mzh8fG1hbGUlMjBzdWl0fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=900", "https://media.istockphoto.com/photos/successful-construction-site-worker-thinking-picture-id1346124841?b=1&k=20&m=1346124841&s=170667a&w=0&h=stkSRtB-qOucjAQq8tk0QieY8i1Nq91IoBjb9c9fJ8M=", "https://media.istockphoto.com/photos/mature-businessman-smiling-over-white-background-picture-id685132245?b=1&k=20&m=685132245&s=170667a&w=0&h=H84m1hrH8bSDnucIox4mFQwQ6UySjJTwWrb5RBOhAJQ=", "https://images.unsplash.com/photo-1453396450673-3fe83d2db2c4?crop=entropy&cs=tinysrgb&fm=jpg&ixlib=rb-1.2.1&q=60&raw_url=true&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTd8fG1hbGUlMjBidXNpbmVzcyUyMG1hbnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=900", "https://images.unsplash.com/photo-1525054974-849f88188c3e?crop=entropy&cs=tinysrgb&fm=jpg&ixlib=rb-1.2.1&q=60&raw_url=true&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OTh8fG1hbGV8ZW58MHx8MHx8&auto=format&fit=crop&w=900"]

expertise = ["tech", "finance", "consulting"]

name = ["Gary Vee", "Andrew Tate", "Michael Burry", "Jeremy Dimon", "John Doe", "Uli Hoeness","Markus Braun", "Florian Homm","Jordan Belfort", "Jan Marsalek"]


10.times do
  user = User.new(avatar: avatars.sample, name: name.sample, email: Faker::Internet.email, password: "123456")
  user.save
end

mentor = Mentor.new(title: "Finance Manager at HSBC", expertise: "finance", description: "I have worked at several banks and ended up as Finance Manager at HSBC")
mentor.user = User.all.sample
mentor.save

mentor = Mentor.new(title: "CFO at Goldman Sachs", expertise: "finance", description: "I started my career as analyst at Morgan Stanley. After that I got hired as CFO at Goldman Sachs")
mentor.user = User.all.sample
mentor.save

mentor = Mentor.new(title: "Chairman of Morgan Stanley", expertise: "finance", description: "I started as an analyst at Morgan Stanley and worked my way all the way up. For the last 2 years I became the Chairman at Morgan Stanley")
mentor.user = User.all.sample
mentor.save

mentor = Mentor.new(title: "Project Manager at PWC", expertise: "consulting", description: "I typically provide oversight and leadership in executing projects from planning to completion. My daily tasks can include managing budgets, resources and relationships to achieve organizational objectives, as well as planning, developing and executing schedules to ensure timely completion of projects.")
mentor.user = User.all.sample
mentor.save

mentor = Mentor.new(title: "Senior Consultant at KPMG", expertise: "consulting", description: "I started as a Junior Consultant and worked my way all the until I became Senior Consultant. My job is to improve the overall business model, client or employee relations, or other facets of day-to-day operations.")
mentor.user = User.all.sample
mentor.save

mentor = Mentor.new(title: "Junior Consultant at EY", expertise: "consulting", description: "I am a Junior Consultant at EY since 2011, I work with clients on a project or program related to their specialization.")
mentor.user = User.all.sample
mentor.save

mentor = Mentor.new(title: "Tech Developer at Apple", expertise: "tech", description: "I offer development services in various spaces, including software, web development, and even app development")
mentor.user = User.all.sample
mentor.save

mentor = Mentor.new(title: "Fullstack Developer at Microsoft", expertise: "tech", description: "I handle all the work of databases, servers, systems engineering, and clients.")
mentor.user = User.all.sample
mentor.save

mentor = Mentor.new(title: "Blockchain Engeneer at Meta Platforms", expertise: "tech", description: "I perform the operations, designing, development, analyzing, implementing, and supporting a distributed blockchain network")
mentor.user = User.all.sample
mentor.save

mentor = Mentor.new(title: "Analyst at BlackRock", expertise: "finance", description: "I gather, interpret, and use complex data to develop actionable steps that will improve processes and optimize results")
mentor.user = User.all.sample
mentor.save
