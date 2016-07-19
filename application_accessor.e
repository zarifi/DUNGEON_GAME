note
	description: "Summary description for {APPLICATION_ACCESSOR}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	APPLICATION_ACCESSOR

feature{ANY} -- Initialization
	make: APPLICATION
		once
			create Result.make
		end

end --APPLICATION_ACCESSOR
