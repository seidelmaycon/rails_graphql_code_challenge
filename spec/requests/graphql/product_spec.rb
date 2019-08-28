require 'rails_helper'

RSpec.describe 'GraphQL products', type: :request do
  before do
    Product.create!(name: 'Nike Free RN', category: 'Shoes', price: 49.90)
    Product.create!(name: 'Nike Flyknit', category: 'Shoes', price: 69.90)
  end

  context 'without any filter' do
    let(:expected_response) do
      { 'data' => { 'products' => [{ 'id' => '1' }, { 'id' => '2' }] } }
    end
    it 'returns all products' do
      post '/graphql', params: { 'query' => "{\n  products {\n    id\n  }\n}" }

      expect(JSON.parse(response.body)).to eq(expected_response)
    end
  end

  context 'filtred by id' do
    let(:expected_response) do
      { 'data' => { 'product' => { 'id' => '1' } } }
    end
    it 'returns filtred product' do
      post '/graphql', params: { 'query' => "{\n  product(id: 1) {\n    id\n  }\n}" }

      expect(JSON.parse(response.body)).to eq(expected_response)
    end
  end
end
