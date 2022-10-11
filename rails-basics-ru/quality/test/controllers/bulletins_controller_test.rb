require 'test_helper'

class BulletinsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bulletin = bulletins(:one)
  end

  test 'can open index page' do
    get bulletins_url
    assert_response :success
    assert_select 'h1', 'Bulletins'
    assert_select 'li', 'Title 1'
  end

  test 'should show bulletin' do
    get bulletin_path(@bulletin)
    assert_response :success
    assert_select 'h1', 'Title 1'
    assert_select 'p', 'Description 1'
    assert_select 'p', 'true'
  end
end
