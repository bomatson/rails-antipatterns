require 'spec_helper'

describe Order do
  subject { Order.new }

  describe '.find_purchased' do
    context 'when called' do
      it 'responds' do
        expect(Order.find_purchased).to eq 'finders'
      end
    end
  end

  describe '.simple_search' do
    context 'when called' do
      it 'responds' do
        expect(Order.simple_search('gary')).to eq 'searchers'
      end
    end
  end

  describe '#to_xml' do
    context 'when called' do
      it 'responds' do
        expect(subject.to_xml).to eq 'converting to xml'
      end
    end
  end
end
