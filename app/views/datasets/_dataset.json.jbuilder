json.extract! dataset, :id, :dataset_name, :dataset_owner, :dataset_owner_contact, :dataset_url, :dataset_date_imported, :dataset_update_continously, :dataset_last_update, :created_at, :updated_at
json.url dataset_url(dataset, format: :json)
