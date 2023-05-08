class UserSubmission < ApplicationRecord
    validates :first_name, :last_name, :email, :website, :text, :status, presence: true

    def name
        "#{first_name} #{last_name}"
    end
    
end
