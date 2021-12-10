docker stop desafio_multiplasapis_ruby_tarefas
docker rm desafio_multiplasapis_ruby_tarefas

export RAILS_ENV='production'
export USER='root'
export PASSWORD='root'
export DATABASE='desafio21dias_multiplasapis_ruby_tarefas_development'
export HOST='127.0.0.1'

docker build -t didox/desafio_multiplasapis_ruby_tarefas -f Dockerfile .

docker run -d -e RAILS_ENV -e USER -e PASSWORD -e DATABASE -e HOST -p 3000:3000 --name desafio_multiplasapis_ruby_tarefas didox/desafio_multiplasapis_ruby_tarefas

docker logs desafio_multiplasapis_ruby_tarefas -f --tail 100
