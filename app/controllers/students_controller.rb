class StudentsController < ApplicationController
	def index
		@studs =Student.all
		@subs =Subject.all 
		

	end
	def new
		@studs=Student.new
		@studs.subjects.build

	
		
	end
	def create
		@studs = Student.new(studs_params)
		
		if @studs.save 
			redirect_to students_path
		else
			render :action=> "new"
		end
	end
	
	def edit
		@stud = Student.find(params[:id])

	end
	def update
		
		@stud = Student.find(params[:id])
		
		if @stud.update(studs_params)
			redirect_to students_path
		else
			redirect_to students_path
		end
	end
	def destroy
		@studs = Student.find(params[:id])
		@studs.destroy
		redirect_to students_path

	end
	def show
		@studs = Student.find(params[:id])
		
		@subs = Subject.all
	end
	def status
		@studs = Student.find(params[:id])
		@studs.update(status: (!@studs.status))
		redirect_to students_path
	end

private
	def studs_params
		params.require(:student).permit(:id,:name, :age, :course,:dob, :subjects_attributes => [:id, :sub_name])
		
	end
	
end
