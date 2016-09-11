require_relative './config/environment'
require 'rake'
require 'rspec/core/rake_task'
puts "Welcome to The TRIANGULABTASTICULAR LAB!!! MOUNT UP"

def reload!
  load_all './lib'
  load_all '../spec'
  load './lib/triangle.rb'
  load './lib/triangle_spec.rb'
  load '../spec/spec_helper.rb'

end

desc "A console"
task :console do
  Pry.start
end