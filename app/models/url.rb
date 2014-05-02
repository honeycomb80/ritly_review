class Url < ActiveRecord::Base
  validates :link, presence: true
  validates :random_string, presence: true, uniqueness: true

  has_many :visits
end
