class CreateAwardUsers < ActiveRecord::Migration
  def self.up
    create_table :award_users do |t|
      t.references :award
      t.references :user

      t.timestamps
    end
  end

  def self.down
    drop_table :award_users
  end
end
