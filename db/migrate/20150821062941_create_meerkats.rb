class CreateMeerkats < ActiveRecord::Migration
  def change
    create_table :meerkats do |t|

      t.timestamps null: false
    end
  end
end
