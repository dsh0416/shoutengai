Sequel.migration do
  transaction
  change do
    create_table(:products) do
      primary_key :id
      Boolean :visible, null: false, default: true
      Integer :active, null: true
      Integer :stock, null: false, default: 0
    end

    create_table(:snapshots) do
      primary_key :id
      DateTime :created_at, null: false
      foreign_key :product_id, :products, key: [:id]
      Integer :price, null: false, default: 0
      String :name, text: true, null: false
      String :description, text: true, null: false
      String :atoms, text: true, null: false, default: '{}'
      String :meta, text: true, null: false, default: '{}'
    end

    create_table(:categories) do
      primary_key :id
      DateTime :created_at, null: false
      String :name, text: true, null: false
      String :meta, text: true, null: false, default: '{}'
      foreign_key :user_id, :users, key: [:id]
    end

    create_table(:categories_products) do
      primary_key :id
      foreign_key :category_id, :categories, key: [:id]
      foreign_key :product_id, :products, key: [:id]
    end

    create_table(:users) do
      primary_key :id
      DateTime :created_at, null: false
    end

    create_table(:orders) do
      primary_key :id
      String :snapshots, text: true, null: false, default: '[]'
      Integer :price, null: false, default: 0
      String :meta, text: true, null: false, default: '{}'
      foreign_key :user_id, :users, key: [:id]
      DateTime :created_at, null: false
      DateTime :updated_at, null: false
    end
  end
end
