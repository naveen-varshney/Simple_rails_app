class EmployeesController < ApplicationController
	def index
		@emps =Employee.all
	end
	def new
		@emps=Employee.new
	end

	def create
		@emps = Employee.new(emps_params)
		
		if @emps.save 
			redirect_to employees_path
		else
			render :action=> "new"
		end
	end
	
	def edit
		@emps = Employee.find(params[:id])

	end
	def update
		
		@emps = Employee.find(params[:id])
		
		if @emps.update(emps_params)
			redirect_to employees_path
		else
			redirect_to employees_path
		end
	end
	def destroy
		@emps = Employee.find(params[:id])
		@emps.destroy
		redirect_to employees_path

	end
	def show
		@emps = Employee.find(params[:id])
	end
	def status
		@emps = Employee.find(params[:id])
		@emps.update(status: (!@emps.status))
		redirect_to employees_path
	end

private
	def emps_params
		params.require(:employee).permit(:e_id,:name, :exp, :join_date,:status)
		
	end
end
