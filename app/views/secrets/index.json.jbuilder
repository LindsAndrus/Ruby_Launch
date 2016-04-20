json.array!(@secrets) do |secret|
  json.extract! secret, :id, :secret
  json.url secret_url(secret, format: :json)
end
