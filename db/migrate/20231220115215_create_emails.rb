class CreateEmails < ActiveRecord::Migration[7.0]
  def change
    create_table :emails do |t|
      t.string :name
      t.string :email
      t.text :message

      t.timestamps
    end
  end
end
