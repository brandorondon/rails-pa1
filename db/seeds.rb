# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Instructor.destroy_all
ins_file = File.read('app/json/instructor.json')
data = JSON.parse(ins_file)

data.each do | instructor |
  Instructor.create!(first: instructor['first'],
                     last: instructor['last'],
                     middle: instructor['middle'],
                     email: instructor['email'])
end


Subject.destroy_all
file = File.read('app/json/subject.json')
data1 = JSON.parse(file)

data1.each do | subject |
  len = subject['id'].length
  id = subject['id'][5,len].to_i
  Subject.create!(name: subject['name'],
                  abbreviation: subject['abbreviation'],
                  identification: id)
end

Course.destroy_all
f = File.read('app/json/course.json')
data2 = JSON.parse(f)

data2.each do | course |
  len = course["subjects"][0]['id'].length
  id = course["subjects"][0]['id'][5,len].to_i
  Course.create!(independent_study: course['independent_study'],
                 name:  course['name'],
                 code:  course['code'],
                 credits: course['credits'],
                 description: course['description'],
                 requirements:  course['requirements'],
                 subject_id:  id)
end
