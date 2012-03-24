class CreateInvitations < ActiveRecord::Migration
  def change
    create_table :invitations do |t|
      t.string :email
      t.boolean :confirm
	  t.references :event

      t.timestamps
    end
	add_index :invitations, :event_id
  end
end
