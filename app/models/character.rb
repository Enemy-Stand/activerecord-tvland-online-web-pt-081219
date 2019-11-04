class Character < ActiveRecord::Base
  belongs_to :actor, :shows
end