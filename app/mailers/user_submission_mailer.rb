class UserSubmissionMailer < ApplicationMailer
    default from: 'notifications@openshare.com'
  
    def approve(user_submission, password)
      @name = user_submission.name
      @email = user_submission.email
      @password = password
      mail(to: user_submission.email, subject: 'Congrats! You\'ve been accepted by OpenShare.')
    end

    def reject(user_submission)
        @name = user_submission.name
        mail(to: user_submission.email, subject: 'Sorry, you\'ve been rejected by OpenShare.')
      end
    
  end
  