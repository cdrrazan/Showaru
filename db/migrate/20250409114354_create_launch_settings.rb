class CreateLaunchSettings < ActiveRecord::Migration[8.0]
  def change
    create_table :launch_settings do |t|
      t.timestamps
    end
  end
end
