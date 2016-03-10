task :import_courses do
  File.open(/Users/brandorondon/Dropbox/cosi166b_brando/CourseCatalog/json/courses.json)
    file.each do | line |
      params = JSON.parse(line)
      Course.create!(params)
    end
  end
end
