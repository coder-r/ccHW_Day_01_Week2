require( 'minitest/autorun' )
require_relative( '../students' )

class TestStudents < MiniTest::Test
  def setup
    @student = Student.new("Rameez", "G7")
  end

  def test_name
    assert_equal("Rameez", @student.name())
  end

  def test_cohort
    assert_equal("G7", @student.cohort())
  end

  def test_set_name
    @student.set_name("Andrew")
    assert_equal("Andrew", @student.name)
  end

  def test_set_cohort
    @student.set_cohort("G9")
    assert_equal("G9", @student.cohort)
  end

end
