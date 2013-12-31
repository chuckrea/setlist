

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

  def self.gemfile_template
    if File.exists?("Gemfile")
      File.open("Gemfile", "a") { |file| file.write("source 'https://rubygems.org'") }
    end
  end

  def self.layout_template
    if File.exists?("./views/layout.erb") 
      File.open("./views/layout.erb", "a") do |file|
        file.puts("<!doctype html>")
        file.puts("<html lang='en'>")
        file.puts("<head>")
        file.puts("  <meta charset='UTF-8'>")
        file.puts("  <link rel='stylesheet' type='text/css' href='styles.css'>")
        file.puts("  <title></title>")
        file.puts("</head>")
        file.puts("<body>")
        file.puts("  <%= yield %>")
        file.puts("</body>")
        file.puts("</html>")
      end
    end
  end

  def self.app_template
    if File.exists?("app.rb")
      File.open("app.rb", "a") do |file|
        file.puts("require 'bundler/setup'")
        file.puts("Bundler.require(:default)")
      end
    end
  end

  def self.delete_files

    @default_files.each do |file|
      File.delete(file)
    end
  end

end


