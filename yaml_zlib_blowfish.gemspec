Gem::Specification.new do |s|

  s.name     = 'yaml_zlib_blowfish'
  s.version  = '0.0.1'

  s.homepage = 'https://github.com/carlosjhr64/yaml_zlib_blowfish'

  s.author   = 'carlosjhr64'
  s.email    = 'carlosjhr64@gmail.com'

  s.date     = '2015-01-13'
  s.licenses = ['MIT']

  s.description = <<DESCRIPTION
Have you ever wanted to YAML dump, Zlib compress, and Blowfish encrypt your data structures?
YOU HAVE!? Well...
DESCRIPTION

  s.summary = <<SUMMARY
Have you ever wanted to YAML dump, Zlib compress, and Blowfish encrypt your data structures?
YOU HAVE!? Well...
SUMMARY

  s.extra_rdoc_files = ['README.rdoc']
  s.rdoc_options     = ["--main", "README.rdoc"]

  s.require_paths = ["lib"]
  s.files = %w(
README.rdoc
lib/yaml_zlib_blowfish.rb
lib/yaml_zlib_blowfish/version.rb
lib/yaml_zlib_blowfish/yaml_zlib_blowfish.rb
  )

  s.requirements << 'ruby: ruby 2.2.0p0 (2014-12-25 revision 49005) [x86_64-linux]'

end
