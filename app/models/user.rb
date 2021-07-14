class User < ApplicationRecord
  acts_as_authentic do |c|
    c.crypto_provider = Authlogic::CryptoProviders::BCrypt
  end

  has_many :posts
end