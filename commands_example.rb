rails new organizador -T --database=postgresql
cd organizador

yarn add bootstrap jquery popper.js roboto-fontface
git commit -m "initial commit"

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
