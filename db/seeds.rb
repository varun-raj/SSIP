# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Department.create(name: "Computer Science & Engineering", code: "CSE")
Department.create(name: "Information Technology", code: "IT")
Department.create(name: "Electronics and Communication Engineering", code: "ECE")
Department.create(name: "Electrical & Electronics Engineering", code: "EEE")
Department.create(name: "Mechanical Engineering", code: "MECH")
Department.create(name: "Civil Engineering", code: "CIVIL")



ComplaintType.create(title: "Electricals not working")
ComplaintType.create(title: "Water supply not proper")
ComplaintType.create(title: "Canteen food is not proper")
ComplaintType.create(title: "Lift not working")
ComplaintType.create(title: "Classrooms not clean")