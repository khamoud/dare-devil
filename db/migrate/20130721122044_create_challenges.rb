class CreateChallenges < ActiveRecord::Migration
  def change

    create_table :challenges do |t|
      t.references :dare
      t.references :challeng_sender
      t.references :challenge_reciever

      t.timestamps
    end
    add_index :challenges, :dare_id
    add_index :challenges, :challeng_sender_id
    add_index :challenges, :challenge_reciever_id
  end
end
