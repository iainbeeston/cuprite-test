require 'rails_helper'

RSpec.describe 'Cuprite', type: :system do
  it 'loads the page' do
    visit 'pages/home'

    expect(page).to have_text('Find me in app/views/pages/home.html.erb')
  end

  it 'renders a react component' do
    visit 'pages/home'

    expect(find('tt')).to have_text('Hello from react-rails')
  end
end
