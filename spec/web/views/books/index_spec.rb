require_relative '../../../../apps/web/views/books/index'

RSpec.describe Web::Views::Books::Index do
  let(:exposures) { Hash[foo: 'bar'] }
  let(:template)  { Hanami::View::Template.new('apps/web/templates/books/index.html.haml') }
  let(:view)      { described_class.new(template, exposures) }
  let(:rendered)  { view.render }

  #it 'exposes #foo' do
    #pending 'This is an auto-generated test. Edit it and add your own tests.'

    # Example
    #expect(view.foo).to eq exposures.fetch(:foo)
  #end
end
