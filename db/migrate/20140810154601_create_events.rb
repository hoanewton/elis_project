class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
    	t.datetime :start
    	t.datetime :end
    	t.text :desciption
    	t.boolean :pooped
    	t.text :comment
    	t.timestamps
    end
  end
end
