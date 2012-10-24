require File.dirname(__FILE__) + '/../test_helper'

class ResponseMapTest < ActiveSupport::TestCase
  fixtures :response_maps, :participants #include the two fixtures

  # Replace this with your real tests.

  test "test_get_assessments_for_with_students_with_assingments" do
    for i in 1..4
    @participant = participants(:"par#{i}")
    #debugger
    responses = FeedbackResponseMap.get_assessments_for(@participant)
    assert_equal responses, @participant.get_feedback
    end
  end

  #test "test_get_assessments_for with students with courses" do
    #for i in 5..8
    #  @participant = participants(:"par#{i}")
    #   responses = FeedbackResponseMap.get_assessments_for(@participant)
    #   print responses
    #end
  #end

  test "test_get_assessments_for_with_students_with_assingments_review" do
    for i in 9..12
      @participant = participants(:"par#{i}")
      #debugger
      responses = FeedbackResponseMap.get_assessments_for(@participant)
      assert_equal responses, @participant.get_feedback
    end
  end

  test "Cannot_call_test_get_assessments_for_with_empty_Participant" do
    u = Participant.new
    assert !u.invalid?
  end

  #test "test_get_assessments_for admin" do
  #    @participant = participants(:admin_test)
  #    #debugger
  #    responses = FeedbackResponseMap.get_assessments_for(@participant)
  #    print responses
  #end
end
