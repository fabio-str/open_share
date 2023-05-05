class RemoveStatusFromUserSubmissions < ActiveRecord::Migration[7.0]
  def change
    remove_column :user_submissions, :status, :string
  end
end
