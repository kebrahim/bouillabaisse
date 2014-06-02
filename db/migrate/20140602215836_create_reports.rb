class CreateReports < ActiveRecord::Migration
  def change
    create_table :reports do |t|
      t.belongs_to :fish, index: true
      t.string :photo_url
      t.belongs_to :user, index: true
      t.float :length
      t.float :weight
      t.belongs_to :location, index: true

      t.timestamps
    end
  end
end
