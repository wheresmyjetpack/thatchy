module Web::Views::Books
  class Edit
    include Web::View

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
