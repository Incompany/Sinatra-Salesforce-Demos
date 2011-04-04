require 'rubygems'
require 'sinatra'
require 'rforce'
require 'json'
gem 'rforce'

include RForce

#afd cr

def fetch_candidatos()


		#login
		      binding = RForce::Binding.new \
     'https://www.salesforce.com/services/Soap/u/20.0'

   				binding.login \
     'admin@afd.co.cr.test', 'company126R3uFcxJl0oFu5jS8xTrkOkR'
  
				#fetch de datos al salesforce
				answer = binding.query  \
    :queryString =>
      'select id, Name, EmpresaCliente__c, Apellidos__c, Puesto__c, Celular__c, Sector__c, Susbsector__c, Empresa__c, CorreoElectronico__c, Telefono__c, Fax__c, OtroAsesorRelacionado__c, Detallada__c, Calle__c, Ciudad__c, EstadoProvincia__c, Pais__c, NumeroEmpleados__c, SitioWeb__c, Origen__c from Candidato__c'
      	
      	
      	name = ""
     #llenado del arreglo de hashes que contiene todo el fetch de informacion 	
     #con los mismos keys acá definidos debe extraerse la info del hash array
      	content_array = []
      	for i in 0..((((answer[:queryResponse])[:result])[:records]).length) -1 do
			  	#name = name + String(((((answer[:queryResponse])[:result])[:records])[i])[:Name]) + "\n" 
			  	content_array[i] = {"name" => ((((answer[:queryResponse])[:result])[:records])[i])[:Name],
			  		"Empresa_cliente" => ((((answer[:queryResponse])[:result])[:records])[i])[:EmpresaCliente__c],
			  		"Apellidos" => ((((answer[:queryResponse])[:result])[:records])[i])[:Apellidos__c],
			  		"Puesto" => ((((answer[:queryResponse])[:result])[:records])[i])[:Puesto__c],
			  		"Celular" => ((((answer[:queryResponse])[:result])[:records])[i])[:Celular__c],
			  		"Sector" => ((((answer[:queryResponse])[:result])[:records])[i])[:Sector__c],
			  		"Susbsector" => ((((answer[:queryResponse])[:result])[:records])[i])[:Susbsector__c],
			  		"Empresa_c" => ((((answer[:queryResponse])[:result])[:records])[i])[:Empresa__c],
			  		"Correo_Electronico" => ((((answer[:queryResponse])[:result])[:records])[i])[:CorreoElectronico__c],
			  		"Telefono" => ((((answer[:queryResponse])[:result])[:records])[i])[:Telefono__c],
			  		"Fax" => ((((answer[:queryResponse])[:result])[:records])[i])[:Fax__c],
			  		"Otro_Asesor_Relacionado" => ((((answer[:queryResponse])[:result])[:records])[i])[:OtroAsesorRelacionado__c],
			  		"Detallada" => ((((answer[:queryResponse])[:result])[:records])[i])[:Detallada__c],
			  		"Calle" => ((((answer[:queryResponse])[:result])[:records])[i])[:Calle__c],
			  		"Ciudad" => ((((answer[:queryResponse])[:result])[:records])[i])[:Ciudad__c],
			  		"Estado_o_Provincia" => ((((answer[:queryResponse])[:result])[:records])[i])[:EstadoProvincia__c],
			  		#"Zip_Code" => ((((answer[:queryResponse])[:result])[:records])[i])[:ZipCode__c],
			  		"Pa_s" => ((((answer[:queryResponse])[:result])[:records])[i])[:Pais__c],
			  		"Numero_de_Empleados" => ((((answer[:queryResponse])[:result])[:records])[i])[:NumeroEmpleados__c],
			  		"Sitio_Web" => ((((answer[:queryResponse])[:result])[:records])[i])[:SitioWeb__c],
			  		"Origen" => ((((answer[:queryResponse])[:result])[:records])[i])[:Origen__c]}
			  end			  
			  #content_array= answer.inspect
			  return content_array
			  #return name
      
end

def fetch_clientes()
#Contacto__c

		#login
		      binding = RForce::Binding.new \
     'https://www.salesforce.com/services/Soap/u/20.0'

   				binding.login \
     'admin@afd.co.cr.test', 'company126R3uFcxJl0oFu5jS8xTrkOkR'
  
				#fetch de datos al salesforce
				answer = binding.query  \
    :queryString =>
      'select id, Name from Contacto__c'
      	
      	
    
     #llenado del arreglo de hashes que contiene todo el fetch de informacion 	
     #con los mismos keys acá definidos debe extraerse la info del hash array
      	content_array = []
      	for i in 0..((((answer[:queryResponse])[:result])[:records]).length) -1 do
			  	#name = name + String(((((answer[:queryResponse])[:result])[:records])[i])[:Name]) + "\n" 
			  	content_array[i] = {"Id" => ((((answer[:queryResponse])[:result])[:records])[i])[:Id],
			  		"Name" => ((((answer[:queryResponse])[:result])[:records])[i])[:Name]}
			  end			  
			  #content_array= answer.inspect
			  return content_array
			  #return name

end


def create_contact(cantidad)
		      binding = RForce::Binding.new \
		 'https://test.salesforce.com/services/Soap/u/20.0'
#     'https://www.salesforce.com/services/Soap/u/20.0'

  				binding.login \
    'admin@afd.co.cr.test', 'company126R3uFcxJl0oFu5jS8xTrkOkRc'
     			
     			for i in 0..cantidad -1 do
     			
     			nombre = "nombre" + String(i)
     			apellido = "apellido" + String(i)
     			
     			#cliente = [
          #          :type,      'Contacto__c',
          #          :name,      "#{nombre}",
          #         :Apellidos__c,      "#{apellido}"
          #          ]
					puts nombre, apellido
     			#binding.create :sObject => cliente		      
  				
  				end
end

def create_cuenta()
		      binding = RForce::Binding.new \
     'https://www.salesforce.com/services/Soap/u/20.0'

   				binding.login \
     'admin@afd.co.cr.test', 'company126R3uFcxJl0oFu5jS8xTrkOkR'
     			cliente = [
                    :type,      'Candidato__c',
                    :name,      "#{name}",
                    :Apellidos__c,      "#{lname}",
                    :Correo_Electronico__c,      "#{email}",
                    :Telefono__c,      "#{phone}",
                    :Descripcion__c,      "#{aux}",
                    :Empresa_c__c, "AFD Panamá"
                   ]

     			binding.create :sObject => cliente		      


end
	get '/requestClientes' do
String(fetch_clientes().to_json)
end

	
#######################
	
	get '/' do

				#hash_array = fetch_candidatos()
			  
			  create_contact(10)
			  #tamaño = hash_array.length
			  #answer_keys = hash_array[0].keys()
			  #for i in 0 ..tamaño - 1 do
			  #name = hash_array.to_json
			  #end
			  #puts tamaño
			  #name = hash_array.inspect
			  #name = ""

			  #puts answer_keys.length
			  #puts name
			  #puts answer.class
			  #puts answer.inspect
			  
			 # puts (((answer[:queryResponse])[:result])[:records])
				

			  #id = answer[:id]
				#name = answer.searchResponse
				
				#obj = binding.describeSObject("Candidato__c")
				name = "prueba"
				#name.class
				haml :test, :locals => { :name => name }

    end
    
    
	post '/' do
				haml :test
	end
#######################
  
  
  
  get '/form' do

        haml :contact
    end
    
    
		post '/form' do
		     # name = params[:name]
		      name = params[:name]
		      lname = params[:lname]
		      email= params[:email]
		      phone = params[:phone]
		      aux = params[:aux]
		      
		      
		      
		      puts "nombre:" + "#{name}"
		      puts "apellido:" + "#{lname}"
		      puts "email:" + "#{email}"
		      puts "telefono:" + "#{phone}"
		      puts "aux:" + "#{aux}"
		      
		      #acceso al soap api del salesforce
		      binding = RForce::Binding.new \
     'https://www.salesforce.com/services/Soap/u/20.0'

   				binding.login \
     'admin@afd.co.cr', 'company126R3uFcxJl0oFu5jS8xTrkOkR'
   
     			cliente = [
                    :type,      'Candidato__c',
                    :name,      "#{name}",
                    :Apellidos__c,      "#{lname}",
                    :Correo_Electronico__c,      "#{email}",
                    :Telefono__c,      "#{phone}",
                    :Descripcion__c,      "#{aux}",
                    :Empresa_c__c, "AFD Panamá"
                   ]

     			binding.create :sObject => cliente		      
					
					#redireccionamiento, en el haml declaro un javascript que redirecciona
		      haml :red1
		  end
