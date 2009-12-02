require 'rubygems'
require 'hpricot'
require 'open-uri'

pagina = Hpricot(open('http://www1.folha.uol.com.br/folha/tempo/br-sao_paulo.shtml'))

pagina.search("div.localPrevisao").each do |previsao|
  @data = previsao.search("b").inner_html
  @max = previsao.search("span.localPrevisaoMax").inner_html
  @min = previsao.search("span.localPrevisaoMin").inner_html
end

puts @data + @max + @min 



