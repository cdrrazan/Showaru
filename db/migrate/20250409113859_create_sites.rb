class CreateSites < ActiveRecord::Migration[8.0]
  def change
    create_table :sites do |t|
      t.timestamps
    end
  end
end
