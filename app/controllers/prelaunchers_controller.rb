class PrelaunchersController < ApplicationController
	def new
		@prelauncher = Prelauncher.new
	end

	def create
		@prelauncher = Prelauncher.new(prelauncher_params)

		@prelauncher.email = @prelauncher.email + "@stanford.edu"

		@prelauncher.save
		redirect_to new_prelauncher_path
	end

private
	def prelauncher_params
		params.require(:prelauncher).permit(:email)
	end
end