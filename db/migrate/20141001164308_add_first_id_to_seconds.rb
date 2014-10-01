class AddFirstIdToSeconds < ActiveRecord::Migration
  def change
    add_column :seconds, :first_id, :integer
  end
end
