# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib/', __FILE__)
$:.unshift lib unless $:.include?(lib)

require 'rubygems'

Gem::Specification.new do |s|
  s.name = 'prawn-arabic'
  s.version = '0.0.3'
  s.has_rdoc = true
  s.extra_rdoc_files = ['README.md', 'LICENSE']
  s.summary = 'Arabic language string helpers '
  s.description = 'Gem which improve workflow with arabic text'
  s.author = 'Dynamix Solutions'
  s.licenses = 'MIT'
  s.email = 'ahmed.nasser@dynamix-systems.com'
  s.homepage = 'https://github.com/ozeron/arabic-prawn'
  # s.executables = ['your_executable_here']
  s.files = %w(LICENSE README.md Rakefile) + Dir.glob("{bin,lib,spec}/**/*")
  s.require_path = "lib"
  s.bindir = "bin"
  s.add_runtime_dependency('iconv', '~> 1.0')
end
