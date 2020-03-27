# frozen_string_literal: true

require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    @empty_user = User.new
    @alice = users(:alice)
    @alice_imposter = users(:alice_imposter)
    @truth = users(:truth)
  end

  test 'should have name' do
    @empty_user.valid?
    assert_includes(@empty_user.errors[:name], "can't be blank")
  end

  test 'should have email' do
    @empty_user.valid?
    assert_includes(@empty_user.errors[:email], "can't be blank")
  end

  test 'should have password' do
    @empty_user.valid?
    assert_includes(@empty_user.errors[:password_digest], "can't be blank")
  end

  test 'should have unique email' do
    @alice.valid?
    assert_includes(@alice.errors[:email], 'has already been taken')
  end

  test 'should have a correct email' do
    bad_user = users(:bad_email)
    bad_user.valid?
    assert_includes(bad_user.errors[:email], 'is invalid')
  end

  test "should be valid" do
    @truth.valid?
    assert_empty (@truth.errors)
  end
end
