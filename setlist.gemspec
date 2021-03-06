Gem::Specification.new do |s|
  s.name = "setlist"
  s.version = "0.0.4"
  s.date = "2013-12-27"
  s.summary = "Sinatra Setlist"
  s.description = "Builds simple directory structure for a Sinatra application"
  s.authors = ["Michael Tener", "Chuck Rea"]
  s.email = "michaeltener@gmail.com", "chuckr523@mac.com"
  s.homepage = "https://github.com/chuckrea/setlist"
  s.files = [
    "lib/setlist.rb",
    "bin/setlist",
    "bin/curtains"
  ]
  s.executables << 'setlist'
  s.executables << 'curtains'
  s.require_paths = ["lib"]
  s.license = "MIT"
end