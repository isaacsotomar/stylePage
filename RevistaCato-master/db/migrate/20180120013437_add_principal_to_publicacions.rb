class AddPrincipalToPublicacions < ActiveRecord::Migration[5.1]
  def change
    add_column :publications, :principal, :boolean, default: false
  end
end
