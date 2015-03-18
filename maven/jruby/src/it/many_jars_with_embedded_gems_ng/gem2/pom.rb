#-*- mode: ruby -*-

gemfile

id 'org.rubygems:gem2', '2'

jruby_plugin! :gem, :includeRubygemsInResources => true

execute 'jrubydir', 'initialize' do |ctx|
  require 'jruby/commands'
  JRuby::Commands.generate_dir_info( ctx.project.build.directory.to_pathname + '/rubygems' )
end
