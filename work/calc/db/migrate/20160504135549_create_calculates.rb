class CreateCalculates < ActiveRecord::Migration
  def change
    create_table :calculates do |t|
      t.float :f_no
      t.float :s_no
      t.float :result

      t.timestamps null: false
    end
  end
end
