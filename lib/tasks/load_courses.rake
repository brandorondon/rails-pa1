namespace :load_courses do
  desc "TODO"
  task task1: :environment do
    File.open('/Users/brandorondon/Dropbox/cosi166b_brando/CourseCatalog/json/course.json', 'r') do | file |
      file.each do | line |
        params = JSON.parse(line)
        puts "#{params}"
        Course.create!(params)
      end
    end
  end
end
