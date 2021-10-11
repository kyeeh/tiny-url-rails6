# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'links/new', type: :view do
  before(:each) do
    assign(:link, Link.new(url: 'https://guides.rubyonrails.org'))
  end

  it 'renders new link form' do
    render

    assert_select 'form[action=?][method=?]', links_path, 'post' do
      assert_select 'input[name=?]', 'link[url]'
    end
  end
end
