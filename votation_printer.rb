module VotationPrinter
	require 'httparty'
	include HTTParty
	
	response = HTTParty.get('http://www.congreso.es/votaciones/OpenData?sesion=142&votacion=1&legislatura=10')

	puts response['Resultado']['Informacion']	
	puts response['Resultado']['Totales']
	response['Resultado']['Votaciones']['Votacion'].each do |votation|
	  puts "#{votation['Diputado']} de #{votation['Grupo']} votó #{votation['Voto']}"
	end
end