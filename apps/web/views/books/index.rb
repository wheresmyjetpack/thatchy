module Web::Views::Books
  class Index
    include Web::View

    def destroy_link(id)
      url = routes.book_path(id)
      form_for :book, url, method: :delete, class: 'form-inline' do
        submit 'Delete Book', class: 'btn btn-danger'
      end
    end
  end
end
