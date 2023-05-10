class UserSubmission < ApplicationRecord
    validates :first_name, :last_name, :email, :website, :text, presence: true

    after_update :send_application_email

    def name
        "#{first_name} #{last_name}"
    end
    
    def send_application_email
        if self.status == "Approve"
            UserSubmissionMailer.approve(self).deliver_now
          elsif self.status == "Reject"
            UserSubmissionMailer.reject(self).deliver_now
          end
    end
end
