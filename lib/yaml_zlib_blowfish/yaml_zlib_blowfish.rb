YAML::ENGINE.yamler = 'psych'

class YamlZlibBlowfish

  attr_accessor :key
  def initialize(passphrase)
    @key = Digest::SHA256.digest(passphrase)
  end

  def cipher(mode, data)
    cipher = OpenSSL::Cipher::Cipher.new('bf-cbc').send(mode)
    cipher.key = @key
    cipher.update(data) << cipher.final
  end

  def decrypt(encrypted)
    YAML.load(Zlib::Inflate.inflate(cipher(:decrypt, encrypted)))
  end

  def encrypt(plain)
    cipher(:encrypt, Zlib::Deflate.deflate(YAML.dump(plain)))
  end

  def load(dumpfile)
    decrypt(File.read(dumpfile))
  end

  def dump(dumpfile, data)
    File.write(dumpfile, encrypt(data))
  end

end
