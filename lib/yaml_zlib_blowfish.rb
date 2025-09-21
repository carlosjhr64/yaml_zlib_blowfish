# Standard Libraries
require 'yaml'
require 'zlib'
require 'digest/sha2'
require 'openssl'
OpenSSL::Provider.load('legacy')

class YamlZlibBlowfish
  VERSION = '2.0.250921'

  # yzb = YamlZlibBlowfish.new(passphrase)
  def initialize(passphrase)
    # Blowfish takes a variable length key from 32 to 448 bits.
    # Here we create a 256 bit key based on the pass-phrase:
    @key = Digest::SHA256.digest(passphrase)
  end

  # encrypted_string = yzb.cipher(:encrypt, plain_string)
  # plain_string = yzb.cipher(:decrypt, encrypted_string)
  def cipher(mode, data)
    cipher         = OpenSSL::Cipher::BF.new(:CBC).send(mode)
    cipher.key_len = @key.length
    cipher.key     = @key
    cipher.update(data) + cipher.final
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
