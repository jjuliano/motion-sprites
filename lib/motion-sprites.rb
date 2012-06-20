require "motion_sprites/version"
require "motion_sprites/motion_sprites"

unless defined?(Motion::Project::Config)
  raise "This file must be required within a RubyMotion project Rakefile."
end

Motion::Project::App.setup do |app|
  Dir.glob(File.join(File.dirname(__FILE__), 'motion_sprites/**/*.rb')).each do |file|
    app.files.unshift(file)
  end
end