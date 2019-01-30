class AddUserAndPinToComment < ActiveRecord::Migration[5.2]
  def change
    add_reference :pins, :user, forgein_key: true
    add_reference :comments, :user, forgein_key: true
    add_reference :comments, :pin, forgein_key: true
  end
end
