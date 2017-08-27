module Web::Views::Books
  class Update
    include Web::View
    template 'books/edit'

    def submit_label
      'Update'
    end

    def form_action
      routes.book_path(book.id)
    end

    def form_opts
      {values: {book: book}, method: :patch}
    end
  end
end
