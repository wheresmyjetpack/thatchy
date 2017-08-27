module Web::Views::Books
  class Create
    include Web::View
    template 'books/new'

    def submit_label
      'Create'
    end

    def form_action
      routes.books_path
    end

    def form_opts
      {}
    end
  end
end
