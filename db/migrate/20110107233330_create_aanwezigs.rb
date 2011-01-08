class CreateAanwezigs < ActiveRecord::Migration
  def self.up
    create_table :aanwezigs do |t|
      t.integer :vak_id
      t.integer :student_id
      t.integer :aantal

      t.timestamps
    end
  end

  def self.down
    drop_table :aanwezigs
  end
end
