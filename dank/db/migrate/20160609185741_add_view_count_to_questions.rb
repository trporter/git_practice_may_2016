class AddViewCountToQuestions < ActiveRecord::Migration
  def change
    add_column :questions, :post_id, :integer
  end
end
