# frozen_string_literal: true

class CreateVisits < ActiveRecord::Migration[6.1]
  def change
    create_table :visits do |t|
      t.belongs_to :link, index: true, foreign_key: true
      t.string :ip

      t.timestamps
    end
  end
end
