class Character < ActiveRecord::Base
  belongs_to :actor
  belongs_to :show
  
  def say_that_thing_you_say
    character = self.name
    catchphrase = self.catchphrase
    "#{character} always says: #{catchphrase}"
  end
end