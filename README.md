# YamlZlibBlowfish

* [VERSION 1.0.200124](https://github.com/carlosjhr64/yaml_zlib_blowfish/releases)
* [github](https://github.com/carlosjhr64/yaml_zlib_blowfish)
* [rubygems](https://rubygems.org/gems/yaml_zlib_blowfish)

## DESCRIPTION:

Have you ever wanted to YAML dump, Zlib compress, and Blowfish encrypt your data structures?
YOU HAVE!? Well...

## SYNOPSIS:

    require 'yaml_zlib_blowfish'
    # ...
    yzb = YamlZlibBlowfish.new('passphrase')
    data = yzb.load('./path_to/file.yzb')
    # ...
    yzb.dump('./path_to/file.yzb', data)

## INSTALL:

    $ gem install yaml_zlib_blowfish

## LICENSE:

(The MIT License)

Copyright (c) 2020 carlosjhr64

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
