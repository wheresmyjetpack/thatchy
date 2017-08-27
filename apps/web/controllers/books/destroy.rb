module Web::Controllers::Books
  class Destroy
    include Web::Action

    def initialize(repo: BookRepository.new)
      @repo = repo
    end

    def call(params)
      repo.delete(params[:id])

      redirect_to routes.books_path
    end

    private

    attr_reader :repo
  end
end
