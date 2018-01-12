require 'sinatra'
require 'bci'
require 'csv'
require 'rdiscount'

BCI = Bci::Client.new({ key: ENV['BCI_API_KEY'] })

get '/' do
  markdown File.read("README.md")
end

get '/indicadores.csv' do
  kpi = BCI.stats.indicators['kpis']
  if kpi.any?
    CSV.generate do |csv|
      csv << ["# Indicadores",""]
      kpi.each do |kpi|
        csv << [kpi['title'], kpi['price']]
      end
    end
  end
end

get '/*.csv' do |path|
  kpi = BCI.stats.indicators['kpis']
  if kpi.any?
    CSV.generate do |csv|
      kpi.each do |kpi|
        if kpi['title'].downcase == path.downcase
          csv << [kpi['price']]
        else
          "No existe el indicador"
        end
      end
    end
  end
end
