class CreateOscillators < ActiveRecord::Migration[7.0]
  def change
    create_table :oscillators do |t|
      t.integer :frequency
      t.string :wave
      t.integer :detune

      t.timestamps
    end
  end
end
