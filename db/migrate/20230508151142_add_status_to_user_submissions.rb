class AddStatusToUserSubmissions < ActiveRecord::Migration[7.0]
  def change
    add_column :user_submissions, :status, :string
  end
end
