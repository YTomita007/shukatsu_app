module UuidGenerator
  def self.included(klass)
    klass.before_create :generator_uuid
  end

  def generator_uuid
    self.id = loop do
      uuid = SecureRandom.uuid
      break uuid unless self.class.exists?(id: uuid)
    end
  end
end
