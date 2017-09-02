Hanami::Model.migration do
  change do
    add_column :users, :password_hash, String
  end
end
