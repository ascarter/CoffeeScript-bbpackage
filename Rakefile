BUILD_DIR = 'build'.freeze
COFFEESCRIPT_BBPKG = 'CoffeeScript.bbpackage'.freeze
TARGET = File.join(BUILD_DIR, COFFEESCRIPT_BBPKG)
COFFEESCRIPT_BBPKG_CONTENTS = File.join(TARGET, 'Contents')

task :default => :build

desc 'Clean CoffeeScript.bbpackage'
task :clean do
  rm_rf TARGET
end

desc 'Build CoffeeScript.bbpackage'
task :build do
  mkdir_p COFFEESCRIPT_BBPKG_CONTENTS
  cp_r Dir.glob('src/*'), COFFEESCRIPT_BBPKG_CONTENTS
end

desc 'Install CoffeeScript.bbpackage'
task :install => :build do
  sh "open #{TARGET}"
end

