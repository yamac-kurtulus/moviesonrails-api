# frozen_string_literal: true

ENV['RAILS_ENV'] ||= 'test'
require_relative '../config/environment'
require 'rails/test_help'

class ActiveSupport::TestCase
  # Run tests in parallel with specified workers
  parallelize(workers: :number_of_processors)

  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all

  # Add more helper methods to be used by all tests here...

  # ###
  # For some weird reason, spaces in title strings are not equal ()

  # normally:
  # puts e  => "Whiplash (2014)"
  # puts a  => "Whiplash (2014)"
  # And assert_equals a, e fails

  # when year is deleted without a space:
  # e = expected_model.attributes[key].delete_suffix('(2014)')
  # a = actual_model.attributes[key].delete_suffix('(2014)')
  # puts e  => "Whiplash "
  # puts a  => "Whiplash "
  # assert_equals a, e fails

  # when year is deleted with a space:
  # e = expected_model.attributes[key].delete_suffix(' (2014)')
  # a = actual_model.attributes[key].delete_suffix(' (2014)')
  # puts e  => "Whiplash (2014)"
  # puts a  => "Whiplash"
  # assert_equals a, e
  # ###
  def assert_equal_model(expected_model, actual_model)
    flag = true
    excluded_instance_fields = {
      'created_at' => true,
      'updated_at' => true,
      'id' => true,
      'title' => true
    }

    expected_model.attributes.each do |key, value|
      unless excluded_instance_fields.key? key
        # use the flag to have a single assertion
        flag = actual_model.attributes[key] == value
      end
      break unless flag
    end
    assert flag
  end
end
