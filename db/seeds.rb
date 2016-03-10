# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

t = Teacher.create(name: "Bill Nye", email: "Billnye@scienceguy.com", password: "ScienceRules")

s = Student.create(name: "Bobby", email: "tables@mail.com", password: "password", teacher_id: 1)

p = Parent.create(name: "Bob", email: "Bob@mail.com", password: "password", student_id: 1)

g = Grade.create(score: 80.00, student_id: 1, name: 'volcano')
