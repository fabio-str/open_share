class UserSubmissionsController < ApplicationController
    def create
        UserSubmission.create!(user_submission_params)
        #redirect to a thank you page
        redirect_to root_path, notice: "We've received your application."
    end

    def user_submission_params
        params.require(:user_submission).permit(:first_name, :last_name, :email, :website, :text)
    end
end