json.array!(@active_classes) do |active_class|
  json.extract! active_class, :id, :name, :number, :user
  json.url active_class_url(active_class, format: :json)
end
