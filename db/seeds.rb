# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#Locations
locations = Location.create([
  {name: "Lorem ipsum dolor 1", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec scelerisque viverra ante, a ornare risus placerat quis. Nam dapibus metus ac velit sodales ornare.", longitude: 39.480653, latitude: -0.367741, address: "Lorem ipsum dolor sit amet, consectetur adipiscing elit."},
  {name: "Lorem ipsum dolor 2", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec scelerisque viverra ante, a ornare risus placerat quis. Nam dapibus metus ac velit sodales ornare.", longitude: -0.367741, latitude: 39.480653, address: "Lorem ipsum dolor sit amet, consectetur adipiscing elit."},
])

#Products
products = Product.create([
  {name: "Lorem ipsum dolor 1", stock: 100, price: 5.5},
  {name: "Lorem ipsum dolor 2", stock: 200, price: 10.5},
])

#Illnesses
illnesses = Illness.create([
  {name: "LOW", description: "Lorem ipsum dolor sit amet", priority: 0, treatment: "Lorem ipsum dolor sit amet, consectetur adipiscing elit."},
  {name: "MEDIUM", description: "Lorem ipsum dolor sit amet", priority: 1, treatment: "Lorem ipsum dolor sit amet, consectetur adipiscing elit."},
  {name: "HIGH", description: "Lorem ipsum dolor sit amet", priority: 2, treatment: "Lorem ipsum dolor sit amet, consectetur adipiscing elit."},
])

#Colonies
colonies = Colony.create([
  {name: "Lorem ipsum dolor 1", bio: "Lorem ipsum dolor sit amet, consectetur adipiscing", location_id: 1},
  {name: "Lorem ipsum dolor 2", bio: "Lorem ipsum dolor sit amet, consectetur adipiscing", location_id: 2},
])

#Cats
cats = Cat.create([
  {name: "Lorem ipsum dolor 1", bio: "Lorem ipsum dolor sit amet, consectetur adipiscing",
   avatar: "http://placekitten.com/200/300", birthdate_date: "1-1-2014", gender: 0, sterilized: 0, abandoned_date: "1-1-2013", document: "Lorem document", colony_id: 1},
  {name: "Lorem ipsum dolor 2", bio: "Lorem ipsum dolor sit amet, consectetur adipiscing",
   avatar: "http://placekitten.com/200/300", birthdate_date: "1-1-2014", gender: 1, sterilized: 1, abandoned_date: "1-1-2013", document: "Lorem document", colony_id: 2},
  {name: "Lorem ipsum dolor 3", bio: "Lorem ipsum dolor sit amet, consectetur adipiscing",
   avatar: "http://placekitten.com/200/300", birthdate_date: "1-1-2014", gender: 1, sterilized: 0, abandoned_date: "1-1-2013", document: "Lorem document", colony_id: 1},
  {name: "Lorem ipsum dolor 4", bio: "Lorem ipsum dolor sit amet, consectetur adipiscing",
   avatar: "http://placekitten.com/200/300", birthdate_date: "1-1-2014", gender: 1, sterilized: 1, abandoned_date: "1-1-2013", document: "Lorem document", colony_id: 2},

])

#Users
users = User.create([
  {username: "Lorem ADMIN", role: "admin", bio: "This is a ADMIN user", avatar: "http://placekitten.com/100/100", purrs: 0},
  {username: "Lorem VOLUNTEER", role: "volunteer", bio: "This is a VOLUNTEER user", avatar: "http://placekitten.com/100/100", purrs: 5},
  {username: "Lorem BASIC", role: "basic", bio: "This is a BASIC user", avatar: "http://placekitten.com/100/100", purrs: 10},
])

#Adoptions
adoptions = Adoption.create([
  {date: "1-1-2014", user_id: 2, cat_id: 2},
  {date: "1-1-2014", user_id: 3, cat_id: 1},
])

#Donations
donations = Donation.create([
  {amount: 5, date: "1-1-2014", user_id: 2},
  {amount: 15, date: "1-1-2014", user_id: 3},
])

#Posessions
posessions = Posession.create([
  {date: "1-1-2014", user_id: 2, product_id: 1},
  {date: "1-1-2014", user_id: 2, product_id: 2},
  {date: "1-1-2014", user_id: 3, product_id: 1},
  {date: "1-1-2014", user_id: 3, product_id: 2},
])

#Sponsors
sponsors = Sponsor.create([
  {start_date: "1-1-2018", last_payment_date: Date.today, amount: 5, renovate: true, user_id: 3, cat_id: 3},
  {start_date: "1-1-2018", last_payment_date: Date.today, amount: 5, renovate: true, user_id: 3, cat_id: 4},
])

#Task
tasks = Task.create([
  {name: "Lorem ipsum 1", description: "Lorem ipsum dolor sit amet, consectetur adipiscing"},
  {name: "Lorem ipsum 2", description: "Lorem ipsum dolor sit amet, consectetur adipiscing"},
])

#Assigments
assigments = Assignment.create([
  {colony_id: 1, task_id: 1},
  {colony_id: 2, task_id: 2},
])

#Sufferings
sufferings = Suffering.create([
  {diagnosis_date: "1-1-2017", notes: "Lorem ipsum 1", chronic: true, status: 0, cat_id: 1, illness_id: 1},
  {diagnosis_date: "1-1-2017", notes: "Lorem ipsum 2", chronic: true, status: 1, cat_id: 2, illness_id: 2},
  {diagnosis_date: "1-1-2017", notes: "Lorem ipsum 3", chronic: true, status: 2, cat_id: 3, illness_id: 1},
  {diagnosis_date: "1-1-2017", notes: "Lorem ipsum 4", chronic: true, status: 3, cat_id: 4, illness_id: 2},
  {diagnosis_date: "1-1-2017", notes: "Lorem ipsum 5", chronic: true, status: 4, cat_id: 1, illness_id: 1},
])

#Turns
turns = Turn.create([
  {start_date: "1-1-2018", end_date: Date.today, assignment_id: 1},
  {start_date: "1-1-2018", end_date: Date.today, assignment_id: 2},
])

#colonies_users
colonies_users = ColoniesUser.create([
  {user_id: 2, colony_id: 1},
  {user_id: 3, colony_id: 2},
])

#treatment_entries
treatment_entries = TreatmentEntry.create([
  {date: "1-1-2018", treatment: 0, notes: "Lorem ipsum 1", suffering_id: 1},
  {date: "1-1-2018", treatment: 1, notes: "Lorem ipsum 1", suffering_id: 2},
  {date: "1-1-2018", treatment: 2, notes: "Lorem ipsum 1", suffering_id: 3},
  {date: "1-1-2018", treatment: 3, notes: "Lorem ipsum 1", suffering_id: 4},
  {date: "1-1-2018", treatment: 4, notes: "Lorem ipsum 1", suffering_id: 5},
])

#turns_users
turns_users = TurnsUser.create([
  {user_id: 2, turn_id: 1},
  {user_id: 3, turn_id: 2},
])
