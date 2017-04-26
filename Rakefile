$LOAD_PATH.unshift File.expand_path("../lib", __FILE__)

require 'rubygems'
require 'rake'
require 'rake/clean'
require 'rubygems/package_task'
require 'rake/testtask'
require 'rdoc/task'
require 'rspec/core/rake_task'

task :build do
  system "gem build arabic-prawn.gemspec"
end

task :console do
  begin
    require 'pry'
    gem_name = File.basename(Dir.pwd)
    sh %{pry -I lib -r #{gem_name}.rb}
  rescue LoadError => _
    sh %{irb -rubygems -I lib -r #{gem_name}.rb}
  end
end

RDoc::Task.new do |rdoc|
  files =['README', 'LICENSE', 'lib/**/*.rb']
  rdoc.rdoc_files.add(files)
  rdoc.main = "README" # page to start on
  rdoc.title = "Arabic-Prawn Docs"
  rdoc.rdoc_dir = 'doc/rdoc' # rdoc output folder
  rdoc.options << '--line-numbers'
end

Rake::TestTask.new do |t|
  t.test_files = FileList['test/**/*.rb']
end

RSpec::Core::RakeTask.new do |t|
  t.spec_files = FileList['spec/**/*.rb']
end
