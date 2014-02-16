require "sprockets_test"

class TestAssets < Sprockets::TestCase
  test 'replace define_module with define' do
    asset = new_environment['modules/another_module.js']
    refute asset.to_s.include? 'define_module(  '
    assert_includes asset.to_s, 'define('
  end

  test 'only modules under /modules get expanded' do
    asset = new_environment['test_module.js']
    assert_includes asset.to_s, 'define_module('
  end

  def new_environment
    Sprockets::Environment.new.tap do |env|
      env.append_path(fixture_path('sprockets-almond'))
    end
  end

end

