class RemoveJobRoleFromUserSubmissions < ActiveRecord::Migration[7.0]
  def change
    remove_column :user_submissions, :job_role, :string
  end
end
