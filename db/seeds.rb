# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



Student.create(first_name: 'Roger', last_name: 'Smith', age: 20, education: "Highschool Diploma")
Student.create(first_name: 'Chris', last_name: 'Tobiasz', age: 30, education: "Master's Degree")
Student.create(first_name: 'Jane', last_name: 'Doe', age: 22, education: "Ph.D")
Student.create(first_name: 'John', last_name: 'Doe', age: 50, education: "Master's Degree")
Student.create(first_name: 'Kristen', last_name: 'Loopa', age: 40, education: "Highschool Diploma")


Instructor.create(first_name: 'Michael', last_name: 'Law', age: 20, salary: 250000, education: "Ph.D")
Instructor.create(first_name: 'Chris', last_name: 'Fernadez', age: 30, salary: 350000, education: "Ph.D")
Instructor.create(first_name: 'Roger', last_name: 'Clark', age: 22, salary: 150000, education: "Ph.D")
Instructor.create(first_name: 'Dan', last_name: 'Ortega', age: 50, salary: 30000, education: "Ph.D")
Instructor.create(first_name: 'Smith', last_name: 'Davidson', age: 40, salary: 950000, education: "Ph.D")
