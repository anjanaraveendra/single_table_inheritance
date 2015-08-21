class CreateLions < ActiveRecord::Migration
  def change
    create_table :lions do |t|

      t.timestamps null: false
    end
  end
end
