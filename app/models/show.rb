class Show < ActiveRecord::Base
    has_many :characters
    has_many :actors, through: :characters
    belongs_to :network
    def actors_list
        self.actors.all.map {|a| a.full_name}
    end


end