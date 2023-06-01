class AddIndexToQuiz < ActiveRecord::Migration[7.0]
  def change
    add_index :quizzes, :game_id, unique: true
  end
end
