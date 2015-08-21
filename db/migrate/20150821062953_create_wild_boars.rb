class CreateWildBoars < ActiveRecord::Migration
  def change
    create_table :wild_boars do |t|

      t.timestamps null: false
    end
  end
end
