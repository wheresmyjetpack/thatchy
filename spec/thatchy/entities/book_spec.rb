require 'spec_helper'

describe Book do
  let(:attributes) { {title: 'Foobar'} }
  
  it 'can be initialized with attributes' do
    expect(described_class.new(attributes).title).to eq('Foobar')
  end
end
