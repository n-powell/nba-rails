class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |g|
      g.column :rating, :integer
      g.column :comment, :string

      g.integer :team_id
      g.timestamps
    end
  end
end
