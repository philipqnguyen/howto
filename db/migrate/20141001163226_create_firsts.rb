class CreateFirsts < ActiveRecord::Migration
  def change
    create_table :firsts do |t|
      t.text :body

      t.timestamps
    end
  end
end
