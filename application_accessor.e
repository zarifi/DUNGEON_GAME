note
	description: "[
	Summary description for {APPLICATION_ACCESSOR}.
	Shows singleton design as it creates one instance of the application class.
	]"
	author: "[
<<<<<<< HEAD
		Mohammad Hossein Zarifi (Student no:213320437 )
=======
		Mohammad Zarifi (Student no:213320437 )
>>>>>>> 7ea2e745366226ce2240e2958602030423f02dc3
		Rachel Chang (Student no: 213530266)
		Azade Farokhshahi (Student no: 213421706)
		]"
	date: "Aug 3, 2016"
	revision: "$Revision$"

class
	APPLICATION_ACCESSOR

feature{ANY} -- Initialization
	make: APPLICATION
		once
			create Result.make
		end

end --APPLICATION_ACCESSOR
