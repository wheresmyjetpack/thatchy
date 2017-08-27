module Web::Controllers::Books
  class New
    include Web::Action

    expose :book

    def call(params)
      @book = Book.new
    end
  end
end
