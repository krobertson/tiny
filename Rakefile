require 'rubygems'
require 'rake/gempackagetask'
require 'spec/rake/spectask'
require 'rake/testtask'

Spec::Rake::SpecTask.new do |t|
  t.warning = false
  t.rcov = false
end

Spec::Rake::SpecTask.new do |t|
  t.name="rcov"
  t.warning = false
  t.rcov = true
end

Rake::TestTask.new do |t|
  t.libs << "test"
  t.test_files = FileList['test/*test.rb']
  t.verbose = true
end


desc "run all tests"
task :default => [:spec]