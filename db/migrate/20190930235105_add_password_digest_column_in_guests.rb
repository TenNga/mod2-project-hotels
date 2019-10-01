class AddPasswordDigestColumnInGuests < ActiveRecord::Migration[6.0]
  def change
    add_column :guests, :password_digest, :string
  end
end
