# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Subject.destroy_all
file = File.read('CourseCatalog/app/json/subject.json')
data1 = JSON.parse(file)

data1.each do | subject |
  Subject.create!(name: subject['name'],
                  abbreviation: subject['abbreviation'],
                  identification: subject['id'].to_i)
end

Course.destroy_all
f = File.read('CourseCatalog/app/json/course.json')
data2 = JSON.parse(f)

data2.each do | course |
  len = data2[0]["subjects"][0]['id'].length
  id = data2[0]["subjects"][0]['id'][5,len].to_i
  Course.create!(independent_study: course['independent_study'],
                 name:  course['name'],
                 code:  course['code'],
                 credits: course['credits'],
                 description: course['description'],
                 requirements:  course['requirements'],
                 subject_id:  id)
end
