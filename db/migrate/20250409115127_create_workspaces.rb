class CreateWorkspaces < ActiveRecord::Migration[8.0]
  def change
    create_table :workspaces do |t|
      t.timestamps
    end
  end
end
