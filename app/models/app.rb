class App < ActiveRecord::Base
  has_many :tests, :dependent => :destroy
  belongs_to :users
end
