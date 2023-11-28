lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "mysql/version"

Gem::Specification.new do |spec|
  spec.name          = "mysql"
  spec.version       = Mysql::GemVersion::VERSION
  spec.homepage      = "https://github.com/geome/mysql-gem"
  spec.license       = "Private"
  spec.files         = ["COPYING",
                        "COPYING.ja",
                        "History.txt",
                        "Manifest.txt",
                        "README.txt",
                        "Rakefile",
                        "ext/mysql_api/extconf.rb",
                        "ext/mysql_api/mysql.c",
                        "extra/README.html",
                        "extra/README_ja.html",
                        "extra/tommy.css",
                        "lib/mysql.rb",
                        "lib/mysql/version.rb",
                        "tasks/gem.rake",
                        "tasks/native.rake",
                        "tasks/vendor_mysql.rake",
                        "test/test_mysql.rb",
                        ".gemtest"]
  spec.test_files = "test/test_mysql.rb"
  spec.require_paths = "lib"
  spec.extensions = "ext/mysql_api/extconf.rb"

  spec.add_development_dependency "rdoc", "~> 3.10"
  spec.add_development_dependency "rake-compiler", "0.8.1"
  spec.add_development_dependency "hoe", "~> 3.5"
end
