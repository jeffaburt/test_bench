class App < ActiveRecord::Base
  has_many :tests
  belongs_to :users
end
