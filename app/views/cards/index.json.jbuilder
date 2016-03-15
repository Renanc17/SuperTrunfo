json.array!(@cards) do |card|
  json.extract! card, :id, :url, :tipo, :nome, :forca, :velocidade, :habilidade, :equipamento, :inteligencia
  json.url card_url(card, format: :json)
end
