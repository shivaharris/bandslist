class CreateBandnames < ActiveRecord::Migration
  def change
    create_table :bandnames do |t|
      t.string :bandname
      t.string :albumname

      t.timestamps
    end
  end
end
