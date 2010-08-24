class CreateSettings < ActiveRecord::Migration
  class Setting < ActiveRecord::Base;
  end

  def self.up
    create_table :settings do |t|
      t.string :business_name
      t.string :business_number
      t.string :business_slogan
      t.text :address
      t.string :city
      t.string :state
      t.string :zip
      t.string :phone
      t.string :fax
      t.string :email
      t.text :billing_address
      t.string :billing_city
      t.string :billing_state
      t.string :billing_zip
      t.string :billing_phone
      t.string :billing_fax
      t.string :billing_email
      t.string :default_credit_terms
      t.integer :default_credit_amount
      t.string :business_contact_name
      t.string :business_contact_phone
      t.string :business_contact_email
      t.string :default_from_email
      t.string :default_no_reply_email
      t.string :language
      t.text :terms_and_conditions
      t.text :privacy_policy
      t.text :invoice_message
      t.boolean :enable_textarea_html_editor
      t.boolean :enable_google_calendar
      t.boolean :enable_google_maps
      t.boolean :enable_paymate
      t.boolean :enable_cash
      t.boolean :enable_voucher
      t.integer :default_voucher_valid_days
      t.string :paymate_username
      t.string :paymate_password
      t.decimal :paymate_transaction_fee, :null => false, :default => 0, :limit => 10, :precision => 10, :scale => 2
      t.boolean :enable_paypal
      t.string :paypal_username
      t.decimal :paypal_transaction_fee, :null => false, :default => 0, :limit => 10, :precision => 10, :scale => 2
      t.boolean :enable_credit_card
      t.boolean :enable_direct_deposit
      t.string :direct_deposit_bank_number
      t.string :direct_deposit_bank_name
      t.integer :direct_deposit_bank_account
      t.string :direct_deposit_bank_account_name
      t.string :direct_deposit_instructions
      t.boolean :enable_cheque
      t.string :cheque_payable_to
      t.boolean :enable_tax
      t.decimal :default_tax, :null => false, :default => 0, :limit => 10, :precision => 10, :scale => 2
      t.string :default_tax_name
      t.boolean :business_open_sunday
      t.boolean :business_open_monday
      t.boolean :business_open_tuesday
      t.boolean :business_open_wednesday
      t.boolean :business_open_thursday
      t.boolean :business_open_friday
      t.boolean :business_open_saturday
      t.string :business_open_sunday_from
      t.string :business_open_sunday_to
      t.boolean :business_open_monday
      t.string :business_open_monday_from
      t.string :business_open_monday_to
      t.boolean :business_open_tuesday
      t.string :business_open_tuesday_from
      t.string :business_open_tuesday_to
      t.boolean :business_open_wednesday
      t.string :business_open_wednesday_from
      t.string :business_open_wednesday_to
      t.boolean :business_open_thursday
      t.string :business_open_thursday_from
      t.string :business_open_thursday_to
      t.boolean :business_open_friday
      t.string :business_open_friday_from
      t.string :business_open_friday_to
      t.boolean :business_open_saturday
      t.string :business_open_saturday_from
      t.string :business_open_saturday_to


      t.timestamps
    end
    @setting = Setting.create :business_name => "MyIT CRM",
                              :business_slogan => "Free and Open Source Repair Shop CRM Software!",
                              :address => "45 Smith Street",
                              :city => "Sydney",
                              :state => "NSW",
                              :zip => "2000",
                              :phone => "02 9888 9888",
                              :email => "support@example.com",
                              :default_from_email => "no-reply@example.com",
                              :default_no_reply_email => "no-reply@example.com",
                              :default_tax => "0",
                              :default_tax_name => "GST",
                              :language => "en_AU",
                              :invoice_message => "Thankyou for your business",
                              :paymate_transaction_fee => "0",
                              :paypal_transaction_fee => "0",
                              :enable_cash => true


  end

  def self.down
    drop_table :settings
  end
end
