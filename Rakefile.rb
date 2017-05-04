require 'data_mapper'
require './app/app'

task default: :greet

desc 'greets humans'
task :greet do
  puts "Hello, My name is Rake, what is my purpose you ask? The answer is much simpler than you think: to make your life hell !"
end


desc 'auto-upgrades database'
task :upgrade do
  puts 'Hello, my name is Rake, why do i exist?'
  DataMapper.auto_upgrade!
end

desc 'auto-migrates database'
task :migrate do
  puts 'Hello, my name is Rake, why do i exist?'
  DataMapper.auto_migrate!
end
