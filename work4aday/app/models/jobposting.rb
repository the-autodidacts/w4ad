class Jobposting < ActiveRecord::Base
  validates :location, presence: true
  validates :user, presence: true
  belongs_to :user
end
