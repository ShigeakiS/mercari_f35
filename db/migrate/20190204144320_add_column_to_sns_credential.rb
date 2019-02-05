class AddColumnToSnsCredential < ActiveRecord::Migration[5.0]
  def change
    add_reference :sns_credentials, :user, foreign_key: true
  end
end
