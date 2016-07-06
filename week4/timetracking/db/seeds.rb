# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Seeding the database with test values....."

proj1 = Project.create(name: "Client X", description: "make a website")
proj2 = Project.create(name: "Valve", description: "make new landing page")
proj3 = Project.create(name: "SpaceX", description: "make custom app")
proj4 = Project.create(name: "Tesla", description: "create an ecommerce page")
proj5 = Project.create(name: "LV", description: "re-make their about page")
proj6 = Project.create(name: "Uber", description: "re-design homepage")
proj7 = Project.create(name: "NASA", description: "fix a bug in their webapp")
proj8 = Project.create(name: "Personal", description: "finish my project")
proj9 = Project.create(name: "Client Y", description: "make a website")
proj10 = Project.create(name: "Client Z", description: "make a webapp")

time1p1 = TimeEntry.create(project_id: proj1.id, hours: 0 , minutes: 45 , comments: "Planned my work" , date: Time.now )
time2p1 = TimeEntry.create(project_id: proj1.id, hours: 2 , minutes: 45 , comments: "Modified logo" , date: Time.now )
time1p2 = TimeEntry.create(project_id: proj2.id, hours: 1 , minutes: 45 , comments: "wrote the first front end layout" , date: Time.now )
time2p2 = TimeEntry.create(project_id: proj2.id, hours: 0 , minutes: 30 , comments: "decided what technologies to use" , date: Time.now )
time1p3 = TimeEntry.create(project_id: proj3.id, hours: 1 , minutes: 20 , comments: "Planned my work" , date: Time.now )
time1p4 = TimeEntry.create(project_id: proj4.id, hours: 1 , minutes: 0 , comments: "Wrote Js script" , date: Time.now )
time1p5 = TimeEntry.create(project_id: proj5.id, hours: 3 , minutes: 5 , comments: "Fixed critical bug" , date: Time.now )

puts "Seeding finished! The DB is now populated"