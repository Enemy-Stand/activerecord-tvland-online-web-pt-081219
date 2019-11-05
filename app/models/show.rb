class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network
  
  def actors_list
    list = []
    self.actors.map do |a|
      a.to_s
      list << a
    end
    list
  end
end