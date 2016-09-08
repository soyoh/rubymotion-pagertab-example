# -*- coding: utf-8 -*-
$:.unshift("/Library/RubyMotion/lib")
require 'motion/project/template/android'

begin
  require 'bundler'
  Bundler.require
rescue LoadError
end

Motion::Project::App.setup do |app|
  # Use `rake config' to see complete project settings.
  app.name = 'MyDemoApp'
  app.package = "com.mydemoapp.android.app"
  app.theme = "@style/Theme.MyTheme"

  app.main_activity = "MainActivity"

  app.api_version = "22"
  app.archs += ['x86']

  app.files += Dir.glob(File.join(app.project_dir, 'lib/**/*.rb'))

  app.permissions = [:internet]

  app.gradle do
  	dependency 'com.android.support:appcompat-v7:24.2.0'
    dependency 'com.android.support:design:24.2.0'
    dependency 'com.android.support:support-v13:24.2.0'
  end
end
