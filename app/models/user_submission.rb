class UserSubmission < ApplicationRecord
    validates :first_name, :last_name, :email, :website, :text, presence: true
end
