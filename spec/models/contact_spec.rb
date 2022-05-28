require 'rails_helper'

RSpec.describe Contact, type: :model do
  let!(:user) { create(:user) }

    context 'emailと問い合わせ内容が存在する場合' do
      let!(:contact) { build(:contact) }

      it '保存される' do
        expect(contact).to be_valid
      end
    end

    context '問い合わせ内容が存在しない場合' do
      let!(:contact) { build(:contact, content: '') }

      before do
        contact.save
      end

      it '保存されない' do
        expect(contact.errors.messages[:content][0]).to eq('を入力してください')
      end
    end
    
    context 'emailが存在しない場合' do
      let!(:contact) { build(:contact, email: '') }

      before do
        contact.save
      end

      it '保存されない' do
        expect(contact.errors.messages[:email][0]).to eq('を入力してください')
      end
    end

    context 'emailの形式が異なる場合' do
      let!(:contact) { build(:contact, email: Faker::Lorem.characters(number: 10)) }

      before do
        contact.save
      end

      it '保存されない' do
        expect(contact.errors.messages[:email][0]).to eq('は不正な値です')
      end
    end

    context 'emailの文字数が256文字以上である場合' do
      let!(:contact) { build(:contact, email: Faker::Lorem.characters(number: 256)) }

      before do
        contact.save
      end

      it '保存されない' do
        expect(contact.errors.messages[:email][0]).to eq('は255文字以内で入力してください')
      end
    end
end
