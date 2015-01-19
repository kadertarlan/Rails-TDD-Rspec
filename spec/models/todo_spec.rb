require 'rails_helper'

RSpec.describe Todo, :type => :model do
  context 'is invalid without' do
    it 'a user' do
      todo = Todo.new
      todo.title = 'kodlar refactor edilecek'
      expect(todo).to be_invalid
      todo.user = User.new(email: 'foo@example.com')
      expect(todo).to be_valid
    end

    it'a title' do
      todo = Todo.new
      todo.title = nil
      todo.user = User.new(email: 'foo@example.com')
      expect(todo).to be_invalid
    end

  end
end
