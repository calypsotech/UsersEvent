class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :firstName
      t.string :lastName
      t.string :email
      t.string :andrewID
      t.date :graduationYear
      t.string :positionTitle
      t.string :deptName
      t.date :creationDate
      t.string :userName
      t.string :password
      t.date :lastActive
      t.string :personStatus

      t.timestamps
    end
  end
end
