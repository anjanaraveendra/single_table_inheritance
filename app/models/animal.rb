class Animal < ActiveRecord::Base

  scope :lions, -> { where(race: 'Lion') } 
  scope :meerkats, -> { where(race: 'Meerkat') } 
  scope :wild_boars, -> { where(race: 'WildBoar') }
    belongs_to :tribe 
    self.inheritance_column = :race 

    # We will need a way to know which animals
    # will subclass the Animal model
    def self.races
      %w(Lion WildBoar Meerkat)
    end

    # def talk 
    #   raise 'Abstract Method' 
    # end
end

class Lion < Animal; end 
class Meerkat < Animal; end 
class WildBoar < Animal; end
