class Gif < ActiveRecord::Base
  belongs_to :category
has_many :favorites

  validates :search_terms, presence: true
  validates :url, presence: true, uniqueness: true

end
