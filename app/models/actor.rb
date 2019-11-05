class Actor < ActiveRecord::Base
  has_many :characters
  has_many :show, through: :characters
  
  def full_name
    self.first_name + " " + self.last_name
  end
  
  def list_roles
    self.characters.map do |c|
      character = c.name
      show = c.show.name
      "#{character} - #{show}"
    end
  end
end