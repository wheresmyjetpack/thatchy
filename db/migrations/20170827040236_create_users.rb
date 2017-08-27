Hanami::Model.migration do
  change do
    create_table :users do
      primary_key :id

      column :username, String, null: false
      column :first_name, String, null: false
      column :last_name, String, null: false
      column :email, String, null: false
      column :created_at, DateTime, null: false
      column :updated_at, DateTime, null: false
    end
  end
end
