# Standard Libraries
require 'yaml'
require 'zlib'
require 'openssl'
require 'digest/sha2'

class YamlZlibBlowfish
  VERSION = '1.0.200124'

  # yzb = YamlZlibBlowfish.new(passphrase)
  def initialize(passphrase)
    key = Digest::SHA256.digest(passphrase)
    @cipher = OpenSSL::Cipher::BF.new(:CBC)
    @cipher.key_len = key.length
    @cipher.key = key
  end

  # encrypted_string = yzb.cipher(:encrypt, plain_string)
  # plain_string = yzb.cipher(:decrypt, encrypted_string)
  def cipher(mode, data)
    cipher = @cipher.send(mode)
    cipher.update(data) << cipher.final
  end

  # plain_structure = yzb.decrypt(encrypted_compressed_dump)
  def decrypt(encrypted)
    YAML.load(Zlib::Inflate.inflate(cipher(:decrypt, encrypted)))
  end

  # encrypted_compressed_dump = yzb.encrypt(plain_structure)
  def encrypt(plain)
    cipher(:encrypt, Zlib::Deflate.deflate(YAML.dump(plain)))
  end

  # plain_structure = yzb.load(filename)
  def load(dumpfile)
    decrypt(File.read(dumpfile))
  end

  # yzb.dump(filename, plain_structure)
  def dump(dumpfile, data)
    File.write(dumpfile, encrypt(data))
  end
end

# Requires:
#`ruby`
