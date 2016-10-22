require 'rails_helper'

RSpec.describe 'businesses/show', type: :view do
  before(:each) do
    @business = assign(:business, Business.create!(
                                    name: 'Name',
                                    description: 'MyText',
                                    email: 'Email',
                                    phone: 'Phone',
                                    address: 'Address',
                                    location: 'Location',
                                    user: nil,
                                    latitude: 2.5,
                                    longitude: 3.5
    ))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Phone/)
    expect(rendered).to match(/Address/)
    expect(rendered).to match(/Location/)
    expect(rendered).to match(//)
    expect(rendered).to match(/2.5/)
    expect(rendered).to match(/3.5/)
  end
end
