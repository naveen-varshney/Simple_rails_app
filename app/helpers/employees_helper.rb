module EmployeesHelper
	def status_text a
		if a
			'Deactivate'
		else
			'Activate'
		end
		
	end
end
