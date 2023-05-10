class UserSubmission < ApplicationRecord
    validates :first_name, :last_name, :email, :website, :text, presence: true

    after_update :finish_processing

    def name
        "#{first_name} #{last_name}"
    end
    
    def finish_processing
        approve if self.status == "Approve"
        reject if self.status == "Reject"
    end

    def approve
      password = generate_password
      user = User.create(email: self.email, password: password)
      UserSubmissionMailer.approve(self, password).deliver
    end

    def reject
      UserSubmissionMailer.reject(self).deliver
    end

    def generate_password
      SecureRandom.hex(8)
    end
end
