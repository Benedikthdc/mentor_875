# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
require 'faker'

User.destroy_all
Mentor.destroy_all

avatars = ["https://images.unsplash.com/photo-1633332755192-727a05c4013d?crop=entropy&cs=tinysrgb&fm=jpg&ixlib=rb-1.2.1&q=80&raw_url=true&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1180","https://images.unsplash.com/photo-1570295999919-56ceb5ecca61?crop=entropy&cs=tinysrgb&fm=jpg&ixlib=rb-1.2.1&q=60&raw_url=true&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8YXZhdGFyfGVufDB8MnwwfHw%3D&auto=format&fit=crop&w=800", "https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?crop=entropy&cs=tinysrgb&fm=jpg&ixlib=rb-1.2.1&q=60&raw_url=true&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8YXZhdGFyfGVufDB8MnwwfHw%3D&auto=format&fit=crop&w=800", "https://images.barrons.com/im-169834?width=1280&size=1", "https://images.unsplash.com/photo-1520078452277-0832598937e5?crop=entropy&cs=tinysrgb&fm=jpg&ixlib=rb-1.2.1&q=60&raw_url=true&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTd8fGJ1c2luZXNzJTIwbWVufGVufDB8MnwwfHw%3D&auto=format&fit=crop&w=800", "https://images.unsplash.com/photo-1630724725268-8272ac390de7?crop=entropy&cs=tinysrgb&fm=jpg&ixlib=rb-1.2.1&q=60&raw_url=true&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTA5fHxidXNpbmVzcyUyMG1lbnxlbnwwfDJ8MHx8&auto=format&fit=crop&w=800"]

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
