# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'links/edit', type: :view do
  before(:each) do
    @link = assign(:link, Link.create!(url: 'https://stackoverflow.com/',
                                       token: 'TestN',
                                       clicks: 0))
  end

  it 'renders the edit link form' do
    render

    assert_select 'form[action=?][method=?]', link_path(@link), 'post' do
      assert_select 'input[name=?]', 'link[url]'
    end
  end
end
