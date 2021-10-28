rails new organizador -T --database=postgresql
cd organizador

yarn add bootstrap jquery popper.js roboto-fontface
git commit -m "initial commit"

git remote add origin git@github.com:levycen1/organizador.git
git remote -v

##########=====================================
Video 20 - Construye los primeros scaffolds del proyecto - Platzi

rails g simple_form:install --bootstrap

rails g scaffold Category name:string description:text

rails g scaffold Task name:string description:text due_date:date category:references

configurar db config/database.yml

sudo -i -u postgres
createuser --pwprompt --interactive platzi

=> Enter password for new role:  platzi
=> Enter it again: platzi
=> Shall the new role be a superuser? (y/n) y
=> Shall the new role be allowed to create databases? y
=> Shall the new role be allowed to create more new roles? (y/n) n
exit

rails db:create
rails db:migrate

adding gem 'annotate' to Gemfile
bi
annotate --models

##########=====================================
Video 21 -  Internacionalizando los modelos - Platzi

adding gem 'i18n-tasks', '~> 0.7.4'  to Gemfile
bundle exec i18n-tasks health
bundle exec i18n-tasks add-missing

#traduce automaticamente ciertos patrones de traducción
adding gem 'rails-i18n'

##########=====================================
Video 23 - Añadiendo el concepto de usuario - Platzi

adding devise to Gemfile

rails g devise:install
# Crear al modelo usuarios
rails g devise User
rake db:migrate
annotate --models

#ver rutas de usuarios
rails routes | grep user

#ver la rutas desde el navegador
http://localhost:3000/rails/info/routes

##########=====================================
Video 24 - Asignando un propietario a la tarea - Platzi

rails g migration AddOwnerToTask user:references
rails db:reset
rails db
rails db:migrate

##########=====================================
Video 25 - Añadiendo participantes a la tarea - Platzi

# creando modelo participantes
rails g model Participant role:integer user:references task:references