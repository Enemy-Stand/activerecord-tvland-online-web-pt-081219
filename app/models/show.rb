class Show < ActiveRecord::Base
  has_many :actors, :characters
end