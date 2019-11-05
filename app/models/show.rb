class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network
  
  def actors_list
    list = []
    self.actors.map do |a|
      list << a.full_name
    end
    list
  end
end