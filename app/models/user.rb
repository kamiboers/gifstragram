class User < ActiveRecord::Base
has_secure_password
has_many :favorites
has_many :favorite_gifs, through: :favorites, source: :favorited, source_type: 'Gif'

  validates :username,  presence: true, 
                        uniqueness: true

  enum role: %w(default admin)
end
