# -*- coding: utf-8 -*-
$:.unshift("/Library/RubyMotion/lib")
require 'motion/project/template/ios'

begin
  require 'bundler'
  require 'motion-cocoapods'
  require 'bubble-wrap/all'
  require 'sugarcube-gestures'
  Bundler.require
rescue LoadError
end

Motion::Project::App.setup do |app|
  # Use `rake config' to see complete project settings.
  app.name = 'MeuhMeuh'
  app.detect_dependencies = false
  # Add your provisioning profile file here & code certificate here
  app.frameworks += [ 'CoreAnimation', 'CoreData', 'CoreMotion' ]
end
