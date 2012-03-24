class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.text :description
      t.string :event_type
      t.datetime :date
      t.string :location
      t.string :tags

      t.timestamps
    end
  end
end
