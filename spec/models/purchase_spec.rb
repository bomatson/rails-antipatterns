require 'spec_helper'

describe Purchase do
  context 'given a list of purchases' do
    let(:purchases) { FactoryGirl.create_list(:purchase, 3) }

    context 'when one is submitted' do
      let(:submitted_purchase) { FactoryGirl.create(:purchase, status: :submitted) }
      before { purchases << submitted_purchase }

      it '.all_submitted? returns only the submitted purchase' do
        expect(Purchase.all_submitted.first).to eq submitted_purchase
      end

      it '#submitted? returns only the submitted purchase' do
        expect(submitted_purchase.submitted?).to be_true
      end
    end
  end
end
