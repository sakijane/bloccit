require 'rails_helper'

RSpec.describe Answer, type: :model do
  let(:question) { Question.create!(title: "New Post Title", body: "New Post Body") }
  let(:answer) { Answer.create!(body: 'Answer Body', question: question) }

  describe "attributes" do
    it "should respond to question" do
      expect(answer).to respond_to(:question)
    end
  end
end
