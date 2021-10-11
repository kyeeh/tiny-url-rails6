# frozen_string_literal: true

class CreateLinks < ActiveRecord::Migration[6.1]
  def change
    create_table :links do |t|
      t.string :url
      t.string :token
      t.integer :clicks, default: 0

      t.timestamps
    end
  end
end
