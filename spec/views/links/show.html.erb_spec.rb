# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'links/show', type: :view do
  before(:each) do
    @link = assign(:link, Link.create!(
                            url: 'https://guides.rubyonrails.org',
                            token: 'TestM',
                            clicks: 2
                          ))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(/Url/)
    expect(rendered).to match(/Token/)
    expect(rendered).to match(/2/)
  end
end
