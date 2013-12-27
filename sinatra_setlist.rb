module Setlist

  def self.dir_structure

    ["public", "models", "views"].each do |dir|
      Dir.mkdir("./#{dir}")
    end  
  end 

  def self.create_files
   
    ["app.rb", "Gemfile", "config.rb", "Rakefile"].each do |file|
      File.new(file, "a")
    end

    ["index.erb", "layout.erb"].each do |file|
      File.new("./views/#{file}", "a")
    end

    File.new("./public/styles.css", "a")
 
  end
end


