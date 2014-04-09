class AddAppIdToTests < ActiveRecord::Migration
  def change
    add_column :tests, :app_id, :integer
  end
end
