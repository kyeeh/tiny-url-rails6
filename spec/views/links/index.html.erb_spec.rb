# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'links/index', type: :view do
  before(:each) do
    assign(:links, [
             Link.create!(url: 'https://google.com/'),
             Link.create!(url: 'https://guides.rubyonrails.org/')
           ])
  end

  it 'renders a list of links' do
    render
    assert_select 'tr>td', text: 'https://google.com/'.to_s, count: 1
    assert_select 'tr>td', text: 'https://guides.rubyonrails.org/'.to_s, count: 1
  end
end
