require 'test_helper'

describe 'How To page' do
  it 'should make how to' do
    visit root_path

    click_on 'New How To'
    fill_in 'Title', with: 'How to save money'
    click_on 'Create How To'

    page.must_have_content 'was successfully created.'
  end
end

describe 'Task page' do
  before do
    visit root_path

    click_on 'New How To'
    fill_in 'Title', with: 'How to use the web browser'
    click_on 'Create How To'

    page.must_have_content 'was successfully created.'

    visit root_path
  end

  it 'should make task' do
    click_on 'Show'

    page.click_on 'New Task'
    fill_in 'Task', with: 'Turn on the computer'
    click_on 'Create Task'

    page.must_have_content 'was successfully created.'
  end
end
