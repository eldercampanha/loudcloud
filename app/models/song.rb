class Song < ActiveRecord::Base
has_many :like 
has_many :comment

end
