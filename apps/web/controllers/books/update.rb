module Web::Controllers::Books
  class Update
    include Web::Action

    expose :book

    params do
      required(:book).schema do
        required(:title).filled(:str?)
        required(:author).filled(:str?)
      end
    end

    def initialize(repo: BookRepository.new)
      @repo = repo
    end

    def call(params)
      if params.valid?
        repo.update(params[:id], params[:book])

        redirect_to routes.books_path
      else
        self.status = 422
      end
    end

    private

    attr_reader :repo
  end
end
