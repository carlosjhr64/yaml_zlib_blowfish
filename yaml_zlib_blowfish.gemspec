Gem::Specification.new do |s|

  s.name     = 'yaml_zlib_blowfish'
  s.version  = '1.0.200124'

  s.homepage = 'https://github.com/carlosjhr64/yaml_zlib_blowfish'

  s.author   = 'carlosjhr64'
  s.email    = 'carlosjhr64@gmail.com'

  s.date     = '2020-01-24'
  s.licenses = ['MIT']

  s.description = <<DESCRIPTION
Have you ever wanted to YAML dump, Zlib compress, and Blowfish encrypt your data structures?
YOU HAVE!? Well...
DESCRIPTION

  s.summary = <<SUMMARY
Have you ever wanted to YAML dump, Zlib compress, and Blowfish encrypt your data structures?
YOU HAVE!? Well...
SUMMARY

  s.require_paths = ['lib']
  s.files = %w(
README.md
lib/yaml_zlib_blowfish.rb
  )

  s.requirements << 'ruby: ruby 2.7.0p0 (2019-12-25 revision 647ee6f091) [x86_64-linux]'

end
