# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Job.destroy_all

Job.create(
  location:'Santo Domingo',
  company:'Company 1', 
  position:'Designer',
  category:'Design'
)

Job.create(
  location:'Santiago',
  company:'Company 2', 
  position:'Designer',
  category:'Design'
)

Job.create(
  location:'Bonao',
  company:'Company 3', 
  position:'Programmer',
  category:'Programming'
)




