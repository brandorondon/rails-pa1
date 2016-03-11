namespace :load_instructors do
  task task1: :environment do
    File.open('/Users/brandorondon/Dropbox/cosi166b_brando/CourseCatalog/json/instructor.json', 'r') do | file |
      file.each do | line |
        params = JSON.parse(line)
        #puts "#{params}"
        Instructor.create!(params)
      end
    end
  end
end
