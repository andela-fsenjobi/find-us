require 'rails_helper'

RSpec.describe 'businesses/edit', type: :view do
  before(:each) do
    @business = assign(:business, Business.create!(
                                    name: 'MyString',
                                    description: 'MyText',
                                    email: 'MyString',
                                    phone: 'MyString',
                                    address: 'MyString',
                                    location: 'MyString',
                                    user: nil,
                                    latitude: 1.5,
                                    longitude: 1.5
    ))
  end

  it 'renders the edit business form' do
    render

    assert_select 'form[action=?][method=?]', business_path(@business), 'post' do
      assert_select 'input#business_name[name=?]', 'business[name]'

      assert_select 'textarea#business_description[name=?]', 'business[description]'

      assert_select 'input#business_email[name=?]', 'business[email]'

      assert_select 'input#business_phone[name=?]', 'business[phone]'

      assert_select 'input#business_address[name=?]', 'business[address]'

      assert_select 'input#business_location[name=?]', 'business[location]'

      assert_select 'input#business_user_id[name=?]', 'business[user_id]'

      assert_select 'input#business_latitude[name=?]', 'business[latitude]'

      assert_select 'input#business_longitude[name=?]', 'business[longitude]'
    end
  end
end
