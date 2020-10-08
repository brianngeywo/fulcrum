class CreatePayments < ActiveRecord::Migration[6.0]
  def change
    create_table :payments, id: :uuid do |t|
      t.integer :amount
      t.string :phone_number
      t.string :response
      t.boolean :state, default: false
      t.string :CheckoutRequestID
      t.string :MerchantRequestID
      t.string :code

      t.timestamps
    end
  end
end
