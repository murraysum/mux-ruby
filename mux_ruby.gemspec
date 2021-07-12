# -*- encoding: utf-8 -*-

=begin
#Mux API

#Mux is how developers build online video. This API encompasses both Mux Video and Mux Data functionality to help you build your video-related projects better and faster than ever before.

The version of the OpenAPI document: v1
Contact: devex@mux.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.0.1

=end

$:.push File.expand_path("../lib", __FILE__)
require "mux_ruby/version"

Gem::Specification.new do |s|
  s.name        = "mux_ruby"
  s.version     = MuxRuby::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Mux"]
  s.email       = ["devex@mux.com"]
  s.homepage    = "https://docs.mux.com"
  s.summary     = "Mux API Ruby Gem"
  s.description = "The Ruby client for Mux Data and Mux Video."
  s.license     = "MIT"
  s.required_ruby_version = ">= 2.4"

  s.add_runtime_dependency 'typhoeus', '~> 1.0', '>= 1.0.1'

  s.add_development_dependency 'rspec', '~> 3.6', '>= 3.6.0'

  s.files         = `find *`.split("\n").uniq.sort.select { |f| !f.empty? }
  s.test_files    = `find spec/*`.split("\n")
  s.executables   = []
  s.require_paths = ["lib"]
end
