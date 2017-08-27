module Web::Views::Books
  class New
    include Web::View

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
