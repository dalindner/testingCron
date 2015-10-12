class ProjectController < ApplicationController
	def new 
		@project = Project.new
 	end
 	def create 
 		@project = Project.new(params[:project])
 		if @movie.save
 			redirect_to new_project_path
 		end
 	end		
end

