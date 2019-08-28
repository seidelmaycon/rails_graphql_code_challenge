require 'rails_helper'

describe 'import:products' do
  before { Rails.application.load_tasks }
  context 'with valid file' do
    it 'creates products and images' do
      expect do
        Rake::Task['import:products'].invoke
      end.to  change { Product.count }.from(0).to(12)
         .and change { Image.count }  .from(0).to(14)
    end
  end
end
