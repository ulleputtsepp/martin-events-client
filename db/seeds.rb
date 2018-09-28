# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Adding multiple categories
Category.create([{name: 'Muusika'}, {name: 'Teater' }])
# Adding one event
Event.create({
	name: "Lorem ipsum",
	short_description: "Lorem ipsum doloer sit amet, ...",
	long_description: "Lorem ipsum doloer sit amet, consectetur ...",
	price: 3000,
	date: Date.today + 3.weeks,
	location: "Tartu",
	category: Category.where(name: "Muusika").first
})

Event.create({
	name: "Lorem ipsum",
	short_description: "Lorem ipsum doloer sit amet, ...",
	long_description: "Lorem ipsum doloer sit amet, consectetur ...",
	price: 3000,
	date: Date.today + 3.days,
	location: "Tartu",
	category: Category.where(name: "Muusika").first
})

Event.create({
	name: "Lorem ipsum",
	short_description: "Lorem ipsum doloer sit amet, ...",
	long_description: "Lorem ipsum doloer sit amet, consectetur ...",
	price: 3000,
	date: Date.today + 3.years,
	location: "Tartu",
	category: Category.where(name: "Muusika").first
})

Event.create({
	name: "Lorem ipsum",
	short_description: "Lorem ipsum doloer sit amet, ...",
	long_description: "Lorem ipsum doloer sit amet, consectetur ...",
	price: 3000,
	date: Date.today - 3. years + 2.days,
	location: "Tartu",
	category: Category.where(name: "Muusika").first
})