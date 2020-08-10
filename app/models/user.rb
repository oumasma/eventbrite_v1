class User < ApplicationRecord

	#has_many :attendances
	#has_many :events, foreign_key: 'admin_id', class_name: "Event"

	has_many :events, through: :attendances 
    has_many :events, foreign_key: 'admin_id', class_name: "User"
   
end

# Un utilisateur peut participer à plusieurs événements au travers des participations. 
# Un utilisateur peut administrer plusieurs événements.
