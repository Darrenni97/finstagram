class CreateBaseTables < ActiveRecord::Migration[4.2]

  def change
    create_table :users do |t|
      t.string :username
      t.string :avatarUrl
      t.string :email
      t.string :password
      t.timestamps
    end

    create_table :finstagram_posts do |t|
      t.references :user
      t.string :photoUrl
      t.timestamps
    end

    create_table :comments do |t|
      t.references :user
      t.references :finstagramPost
      t.text :text
      t.timestamps
    end

    create_table :likes do |t|
      t.references :user
      t.references :finstagramPost
      t.timestamps
    end

  end

end