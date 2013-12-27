Gem::Specification.new do |s|
  s.name = "Setlist"
  s.version = "0.0.2"
  s.date = "2013-12-27"
  s.summary = "Sinatra Setlist"
  s.description = "Builds simple directory structure for building a Sinatra application"
  s.authors = ["Michael Tener", "Chuck Rea"]
  s.email = "michaeltener@gmail.com", "chuckr523@mac.com"
  s.files = [
    "lib/setlist.rb",
    "bin/setlist"
  ]
  s.executables << 'setlist'
  s.require_paths = ["lib"]
end