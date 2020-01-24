require 'yaml_zlib_blowfish'

# IRB Tools
require 'irbtools/configure'
_ = YamlZlibBlowfish::VERSION.split('.')[0..1].join('.')
Irbtools.welcome_message = "### YamlZlibBlowfish(#{_}) ###"
require 'irbtools'
IRB.conf[:PROMPT][:YamlZlibBlowfish] = {
  PROMPT_I:    '> ',
  PROMPT_N:    '| ',
  PROMPT_C:    '| ',
  PROMPT_S:    '| ',
  RETURN:      "=> %s \n",
  AUTO_INDENT: true,
}
IRB.conf[:PROMPT_MODE] = :YamlZlibBlowfish
