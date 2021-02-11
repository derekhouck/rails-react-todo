require 'rails_helper'

RSpec.describe Todoitem, type: :model do
  describe 'ToDoItem' do
    it 'is valid with a name' do
      todo = Todoitem.create!(name: 'Test to-do item')
      expect(todo.valid?).to be true
      expect(todo.active).to be true
    end

    it 'is not valid if there is no name' do
      todo = Todoitem.create
      expect(todo.valid?).to be false
    end
  end
end
