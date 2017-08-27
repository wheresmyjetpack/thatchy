module Web::Controllers::Books
  module SetBook
    def self.included(action)
      action.class_eval do
        before :set_book
      end
    end

    private

    def set_book
      @book = BookRepository.new.find(params[:id])
      halt 404 if @book.nil?
    end
  end
end
