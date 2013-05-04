require 'test_helper'
require 'fixtures/sample_email'

class MailFormTest < ActiveSupport::TestCase
  test 'sample mail has name and email as attributes' do
    sample = SampleMail.new
    sample.name = "User"
    assert_equal "User", sample.name
    sample.email = "user@example.com"
    assert_equal "user@example.com", sample.email
  end

  test "truth" do
    assert_kind_of Module, MailForm
  end
end
