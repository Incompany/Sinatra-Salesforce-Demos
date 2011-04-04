require 'rubygems'
require 'sinatra'
require 'rforce'

#afd cr
  get '/afdcr-en' do

        haml :contact
    end
    
    
	post '/afdcr-en' do
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
		      
		      
				  binding = RForce::Binding.new \
     'https://www.salesforce.com/services/Soap/u/20.0'

   				binding.login \
     'admin@afd.co.cr', 'company126R3uFcxJl0oFu5jS8xTrkOkR'
   
     			cliente = [
                    :type,      'Candidato__c',
                    :name,      "#{name}",
                    :Apellidos__c,      "#{lname}",
                    :CorreoElectronico__c,      "#{email}",
                    :Telefono__c,      "#{phone}",
                    :Descripcion__c,      "#{aux}",
                    :Pertenece__c, "AFD Costa Rica",
                    :Idioma__c, "Ingles",
                    :Origen__c, "Web"
                   ]

     			binding.create :sObject => cliente		      
					
		      haml :red1
		  end


  get '/afdcr-es' do

        haml :contact
    end
    
    
	post '/afdcr-es' do
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
		      
		      
				  binding = RForce::Binding.new \
     'https://www.salesforce.com/services/Soap/u/20.0'

   				binding.login \
     'admin@afd.co.cr', 'company126R3uFcxJl0oFu5jS8xTrkOkR'
   
     			cliente = [
                    :type,      'Candidato__c',
                    :name,      "#{name}",
                    :Apellidos__c,      "#{lname}",
                    :CorreoElectronico__c,      "#{email}",
                    :Telefono__c,      "#{phone}",
                    :Descripcion__c,      "#{aux}",
                    :Pertenece__c, "AFD Costa Rica",
                    :Idioma__c, "Español",
                    :Origen__c, "Web"
                   ]

     			binding.create :sObject => cliente		      
					
		      haml :red1
		  end
		#AFD nic
    get '/afdni-en' do

        haml :contact
    end
    
    
		post '/afdni-en' do
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
		      
		      
				  binding = RForce::Binding.new \
     'https://www.salesforce.com/services/Soap/u/20.0'

   				binding.login \
     'admin@afd.co.cr', 'company126R3uFcxJl0oFu5jS8xTrkOkR'
   
     			cliente = [
                    :type,      'Candidato__c',
                    :name,      "#{name}",
                    :Apellidos__c,      "#{lname}",
                    :CorreoElectronico__c,      "#{email}",
                    :Telefono__c,      "#{phone}",
                    :Descripcion__c,      "#{aux}",
                    :Pertenece__c, "AFD Nicaragua",
                    :Idioma__c, "Ingles",
                    :Origen__c, "Web"
                   ]

     			binding.create :sObject => cliente		      

		      haml :red1
		  end

    get '/afdni-es' do

        haml :contact
    end
    
    
		post '/afdni-es' do
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
		      
		      
				  binding = RForce::Binding.new \
     'https://www.salesforce.com/services/Soap/u/20.0'

   				binding.login \
     'admin@afd.co.cr', 'company126R3uFcxJl0oFu5jS8xTrkOkR'
   
     			cliente = [
                    :type,      'Candidato__c',
                    :name,      "#{name}",
                    :Apellidos__c,      "#{lname}",
                    :CorreoElectronico__c,      "#{email}",
                    :Telefono__c,      "#{phone}",
                    :Descripcion__c,      "#{aux}",
                    :Pertenece__c, "AFD Nicaragua",
                    :Idioma__c, "Español",
                    :Origen__c, "Web"
                   ]

     			binding.create :sObject => cliente		      

		      haml :red1
		  end

		  #AFD Panamá
    get '/afdpa-en' do

        haml :contact
    end
    
    
		post '/afdpa-en' do
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
		      
		      
				  binding = RForce::Binding.new \
     'https://www.salesforce.com/services/Soap/u/20.0'

   				binding.login \
     'admin@afd.co.cr', 'company126R3uFcxJl0oFu5jS8xTrkOkR'
   
     			cliente = [
                    :type,      'Candidato__c',
                    :name,      "#{name}",
                    :Apellidos__c,      "#{lname}",
                    :CorreoElectronico__c,      "#{email}",
                    :Telefono__c,      "#{phone}",
                    :Descripcion__c,      "#{aux}",
                    :Pertenece__c, "AFD Panamá",
                    :Idioma__c, "Ingles",
                    :Origen__c, "Web"
                   ]

     			binding.create :sObject => cliente		      

		      haml :red1
		  end
    get '/afdpa-es' do

        haml :contact
    end
    
    
		post '/afdpa-es' do
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
		      
		      
				  binding = RForce::Binding.new \
     'https://www.salesforce.com/services/Soap/u/20.0'

   				binding.login \
     'admin@afd.co.cr', 'company126R3uFcxJl0oFu5jS8xTrkOkR'
   
     			cliente = [
                    :type,      'Candidato__c',
                    :name,      "#{name}",
                    :Apellidos__c,      "#{lname}",
                    :CorreoElectronico__c,      "#{email}",
                    :Telefono__c,      "#{phone}",
                    :Descripcion__c,      "#{aux}",
                    :Pertenece__c, "AFD Panamá",
                    :Idioma__c, "Español",
                    :Origen__c, "Web"
                   ]

     			binding.create :sObject => cliente		      

		      haml :red1
		  end
		  
		  
    get '/altercr-en' do

        haml :contact
    end
    #alternativa cr
    
		post '/altercr-en' do
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
		      
		      
				  binding = RForce::Binding.new \
     'https://www.salesforce.com/services/Soap/u/20.0'

   				binding.login \
     'admin@afd.co.cr', 'company126R3uFcxJl0oFu5jS8xTrkOkR'
   
     			cliente = [
                    :type,      'Candidato__c',
                    :name,      "#{name}",
                    :Apellidos__c,      "#{lname}",
                    :CorreoElectronico__c,      "#{email}",
                    :Telefono__c,      "#{phone}",
                    :Descripcion__c,      "#{aux}",
                    :Pertenece__c, "AlternativaCR",
                    :Idioma__c, "Ingles",
                    :Origen__c, "Web"
                   ]

     			binding.create :sObject => cliente		      

		      haml :red2
		  end
    get '/altercr-es' do

        haml :contact
    end
    #alternativa cr
    
		post '/altercr-es' do
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
		      
		      
				  binding = RForce::Binding.new \
     'https://www.salesforce.com/services/Soap/u/20.0'

   				binding.login \
     'admin@afd.co.cr', 'company126R3uFcxJl0oFu5jS8xTrkOkR'
   
     			cliente = [
                    :type,      'Candidato__c',
                    :name,      "#{name}",
                    :Apellidos__c,      "#{lname}",
                    :CorreoElectronico__c,      "#{email}",
                    :Telefono__c,      "#{phone}",
                    :Descripcion__c,      "#{aux}",
                    :Pertenece__c, "AlternativaCR",
                    :Idioma__c, "Español",
                    :Origen__c, "Web"
                   ]

     			binding.create :sObject => cliente		      

		      haml :red2
		  end
