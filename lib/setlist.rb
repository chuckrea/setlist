
class Setlist

  @default_files = ["app.rb", "Gemfile", "config.rb", "Rakefile"]
  @default_folders = ["public", "models", "views"]

  def self.dir_structure

    @default_folders.each do |dir|
      Dir.mkdir("./#{dir}")
    end  
  end 

  def self.create_files
   
    @default_files.each do |file|
      File.new(file, "a")
    end

    ["index.erb", "layout.erb"].each do |file|
      File.new("./views/#{file}", "a")
    end

    File.new("./public/styles.css", "a")
  end

  def self.delete_dir

    @default_files.each do |file|
      File.delete(file)
    end
  end

end


