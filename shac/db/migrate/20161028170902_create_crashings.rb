class CreateCrashings < ActiveRecord::Migration
  def change
    create_table :crashings do |t|
    	t.datetime :date
    	t.string :exchange
    	t.integer :host_id 
    	t.integer :crasher_id 

    	t.timestamps
    end
  end
end
