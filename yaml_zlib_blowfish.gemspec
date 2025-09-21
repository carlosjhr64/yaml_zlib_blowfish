Gem::Specification.new do |s|

  s.name     = 'yaml_zlib_blowfish'
  s.version  = '2.0.250921'

  s.homepage = 'https://github.com/carlosjhr64/yaml_zlib_blowfish'

  s.author   = 'CarlosJHR64'
  s.email    = 'carlosjhr64@gmail.com'

  s.date     = '2025-09-21'
  s.licenses = ['MIT']

  s.description = <<DESCRIPTION
Have you ever wanted to YAML dump, Zlib compress, and Blowfish encrypt your data structures?
YOU HAVE!? Well...

BUT BLOWFISH IS DEPRECATED!  .·°՞(¯□¯)՞°·.
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
  s.required_ruby_version = '>= 3.3'

end
