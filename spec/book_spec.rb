

require'rails_helper'

RSpec.describe Book,"モデルに関するテスト", type: :model do
    describe '実際に保存してみる' do
        it "有効な投稿内容の場合は保存されるか" do
            expect(FactoryBot.build(:book)).to be_valid
        end
    end
    context "空白のバリデーションチェック" do
        it "titleが空白の場合にバリデーションチェクされ空白のエラーメッセージが帰ってきているか" do
            book = Book.new(title:'', body:'hoge')
            expect(book).to be_valid
            expect(book.errors[:title]).to include("can't be blank")
        end
        it ""
    end
end