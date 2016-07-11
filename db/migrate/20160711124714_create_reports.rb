class CreateReports < ActiveRecord::Migration
  def change
    create_table :reports do |t|
      t.string :ver
      t.string :platform
      t.string :process_type
      t.string :guid
      t.string :app_ver
      t.string :minidump

      t.timestamps null: false
    end
  end
end
