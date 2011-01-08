class CreateLijsts < ActiveRecord::Migration
  def self.up
    create_table :lijsts do |t|
      t.string :naam

      t.timestamps
    end
  end

  def self.down
    drop_table :lijsts
  end
end
