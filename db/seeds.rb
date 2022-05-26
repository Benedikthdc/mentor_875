# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
require 'faker'

User.destroy_all
Mentor.destroy_all

avatars = ["https://images.unsplash.com/photo-1633332755192-727a05c4013d?crop=entropy&cs=tinysrgb&fm=jpg&ixlib=rb-1.2.1&q=80&raw_url=true&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1180","https://images.unsplash.com/photo-1570295999919-56ceb5ecca61?crop=entropy&cs=tinysrgb&fm=jpg&ixlib=rb-1.2.1&q=60&raw_url=true&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8YXZhdGFyfGVufDB8MnwwfHw%3D&auto=format&fit=crop&w=800", "https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?crop=entropy&cs=tinysrgb&fm=jpg&ixlib=rb-1.2.1&q=60&raw_url=true&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8YXZhdGFyfGVufDB8MnwwfHw%3D&auto=format&fit=crop&w=800", "https://images.barrons.com/im-169834?width=1280&size=1", "https://images.unsplash.com/photo-1520078452277-0832598937e5?crop=entropy&cs=tinysrgb&fm=jpg&ixlib=rb-1.2.1&q=60&raw_url=true&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTd8fGJ1c2luZXNzJTIwbWVufGVufDB8MnwwfHw%3D&auto=format&fit=crop&w=800", "https://images.unsplash.com/photo-1630724725268-8272ac390de7?crop=entropy&cs=tinysrgb&fm=jpg&ixlib=rb-1.2.1&q=60&raw_url=true&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTA5fHxidXNpbmVzcyUyMG1lbnxlbnwwfDJ8MHx8&auto=format&fit=crop&w=800"]

expertise = ["tech", "finance", "consulting"]

name = ["Gary Vee", "Andrew Tate", "Michael Burry", "Jeremy Dimon", "John Doe", "Uli Hoeness","Markus Braun", "Florian Homm","Jordan Belfort", "Jan Marsalek"]

  gonzo = User.new(avatar: "https://media-exp1.licdn.com/dms/image/C4D03AQHt02253vRqpw/profile-displayphoto-shrink_800_800/0/1647509079772?e=1658966400&v=beta&t=Kj6_eLtdDcAihMjMc5DczebyoPZf6Y9DnZfCYF_Iuak", name: "gonzalito", email:"cryptogon@outlook.com", password: "123456")
  gonzo.save

  mentor = Mentor.new(title: "Batch Manager of LeWagon Madrid", expertise: "tech", description: "Fullstack bootcamp graduate from LeWagon, excited to see where the world of tech will get me one line of code at a time. Skilled in Client Focus, Photography, Translation, Foreign Languages, and Live Video Streaming. Active personality and logical thinker, always looking for new challenges.", price: 50, avaiability: "call")
  mentor.user = gonzo
  mentor.save

10.times do

  user = User.new(avatar: avatars.sample, name: name.sample, email: Faker::Internet.email, password: "123456")
  user.save
end

  mentor = Mentor.new(title: "Finance Manager at HSBC", expertise: "finance", description: "I am Germany's best-known hedge fund manager.
    In his career, he was awarded three times as Europe's hedge fund manager of the year, was the best US special fund manager, several times the best Europafonds and Germany fund manager.

    I worked as an analyst, nostro trader and fund manager at Merrill Lynch, Fidelity, Tweedy, Browne and Bankhaus Julius Baer, among others, before becoming a US dollar billionaire as a financial entrepreneur and hedge fund manager.

    His positive, absolute, relative and tested performance in the stock market crashes 1987, 2002 as well as in the corrections 1990 and 1994 is unique in Europe. His successful bearish speculations at Bremen Vulkan, MLP and WCM are well documented.", price: 50, avaiability: "call")
  mentor.user = User.where.not(id: gonzo.id)[0]
  mentor.save

  mentor = Mentor.new(title: "Chairman of the Board", expertise: "finance", description: "I became Chairman of the Board on December 31, 2006, and has been Chief Executive Officer and President since December 31, 2005. He had been President and Chief Operating Officer since JPMorgan Chase's merger with Bank One Corporation in July 2004. At Bank One he had been Chairman and Chief Executive Officer since March 2000. Prior to joining Bank One, I had extensive experience at Citigroup Inc., the Travelers Group, Commercial Credit Company and American Express Company. Mr. Dimon graduated from Tufts University in 1978 and received an MBA from Harvard Business School in 1982. He is a director of The College Fund/UNCF and serves on the Board of Directors of The Federal Reserve Bank of New York, The National Center on Addiction and Substance Abuse, Harvard Business School and Catalyst. He is also on the Board of Trustees of New York University School of Medicine. I do not serve on the board of any publicly traded company other than JPMorgan Chase.", price: 50, avaiability: "call")
  mentor.user = User.where.not(id: gonzo.id)[1]
  mentor.save

  mentor = Mentor.new(title: "Chairman of Morgan Stanley", expertise: "finance", description: "I started as an analyst at Morgan Stanley and worked my way all the way up. For the last 2 years I became the Chairman at Morgan Stanley", price: 50, avaiability: "call")
  mentor.user = User.where.not(id: gonzo.id)[2]
  mentor.save

  mentor = Mentor.new(title: "Project Manager at PWC", expertise: "consulting", description: "I typically provide oversight and leadership in executing projects from planning to completion. My daily tasks can include managing budgets, resources and relationships to achieve organizational objectives, as well as planning, developing and executing schedules to ensure timely completion of projects.", price: 50, avaiability: "call")
  mentor.user = User.where.not(id: gonzo.id)[3]
  mentor.save

  mentor = Mentor.new(title: "Chairman at EY", expertise: "consulting", description: "I am the Global Chairman and CEO for EY, one of the largest professional services organizations in the world, which in the last fiscal year achieved US$40 billion in revenues and today has over 310,000 people serving clients in more than 150 countries, as well as one million alumni. Prior to being elected to my current post, I served as EY Global Managing Partner – Client Service, leading the execution of EY’s global strategy and its four geographical areas and four service lines.

    I've spearheaded EY's innovation efforts, managing a US$1 billion investment in new technology solutions over a two-year timeframe announced in August 2018. By creating the EY Global Innovation team, we’re enabling EY to redefine how we use technology to both transform existing services and create new solutions. Additionally, by executing our acquisitions and alliances strategy, we are expanding EY offerings in a wide range of new and emerging fields.

    Since joining EY in 1985, I served as an Advisory and Assurance partner for many of our largest financial services accounts. Over the course of my career, I held several leadership positions at EY, including Chair of the Global Financial Services Markets Executive and Regional Managing Partner for the Americas Financial Services Organization (FSO), where I started EY Risk Management and Regulatory Services.

    I'm originally from Italy and emigrated with my family to the United States when I was three years old. I was the first in my family to graduate from college, earning a BA in Chemistry from Colgate University, and an MBA from New York University’s Stern School of Business.

    I also serve on the boards of the Foundation for Empowering Citizens with Autism and Family Promise, and I'm a member of the Board of Trustees of Colgate University.

    On the link below you can discover more about my career and current roles.", price: 50, avaiability: "call")
  mentor.user = User.where.not(id: gonzo.id)[4]
  mentor.save

  mentor = Mentor.new(title: "Junior Consultant at EY", expertise: "consulting", description: "I am a Junior Consultant at EY since 2011, I work with clients on a project or program related to their specialization.", price: 50, avaiability: "call")
  mentor.user = User.where.not(id: gonzo.id)[5]
  mentor.save

  mentor = Mentor.new(title: "Co Founder LeWagon", expertise: "tech", description: "I am the cofounder and CEO of Le Wagon, founded in 2013 in Paris with my brother Romain Paillard and Sébastien Saunier to disrupt tech education.

    After studying applied mathematics and engineering, I worked 3 years in a bank before changing career and learning to code on my own. Passionate about education, I decided to teach these skills to the greatest number of people through transformative in-person bootcamps.

    Le Wagon teaches people the skills they need to change their lives. Since 2013, we have been teaching Web Development and Data Science in 43 cities and 25 countries, and have helped more than 10,000 graduates kick-start their tech career, up skill in their job, or launch their own startup.

    Le Wagon is the world's most acclaimed coding bootcamp according to student reviews on Switchup and Coursereport.
    ", price: 50, avaiability: "call")
  mentor.user = User.where.not(id: gonzo.id)[6]
  mentor.save

  mentor = Mentor.new(title: "Fullstack Developer at Microsoft", expertise: "tech", description: "I handle all the work of databases, servers, systems engineering, and clients.", price: 50, avaiability: "call")
  mentor.user = User.where.not(id: gonzo.id)[7]
  mentor.save

  mentor = Mentor.new(title: "Blockchain Engeneer at Meta", expertise: "tech", description: "I perform the operations, designing, development, analyzing, implementing, and supporting a distributed blockchain network", price: 50, avaiability: "call")
  mentor.user = User.where.not(id: gonzo.id)[8]
  mentor.save

  mentor = Mentor.new(title: "Analyst at BlackRock", expertise: "finance", description: "I gather, interpret, and use complex data to develop actionable steps that will improve processes and optimize results", price: 50, avaiability: "call")
  mentor.user = User.where.not(id: gonzo.id)[9]
  mentor.save
