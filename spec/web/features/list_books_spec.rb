require 'features_helper'

describe 'List books' do
  let(:repository) { BookRepository.new }

  before do
    repository.clear
    repository.create(title: 'Foundation', author: 'Isaac Asimov')
    repository.create(title: 'Do Androids Dream of Electric Sheep',
                      author: 'Phillip K. Dick')
  end

  it 'displays each book on a page' do
    visit '/books'

    within '#books' do
      expect(page).to have_css('.book', count: 2), 'Expected to find two books'
    end
  end
end
