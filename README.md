# YamlZlibBlowfish

* [VERSION 2.0.250921](https://github.com/carlosjhr64/yaml_zlib_blowfish/releases)
* [github](https://github.com/carlosjhr64/yaml_zlib_blowfish)
* [rubygems](https://rubygems.org/gems/yaml_zlib_blowfish)

## DESCRIPTION:

Have you ever wanted to YAML dump, Zlib compress, and Blowfish encrypt your data structures?
YOU HAVE!? Well...

BUT BLOWFISH IS DEPRECATED!  .·°՞(¯□¯)՞°·.

## SYNOPSIS:
```ruby
require 'yaml_zlib_blowfish'
conf0 = [ 1, 2.0, 'Three', :four, {five: 'Cinco'}]
yzb = YamlZlibBlowfish.new('Secret PaSspHrase!')
yzb.dump('./tmp/dump.yzb', conf0)
conf1 = yzb.load('./tmp/dump.yzb')
conf1 == conf0 #=> true
# ...
```
## INSTALL:

    $ gem install yaml_zlib_blowfish

## LICENSE:

(The MIT License)

Copyright (c) 2025 CarlosJHR64

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
'Software'), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
