docker build -t didox/desafio_multiplasapis_ruby_tarefas -f Dockerfile .
docker tag didox/desafio_multiplasapis_ruby_tarefas hub.docker.com/r/didox/desafio_multiplasapis_ruby_tarefas
docker push didox/desafio_multiplasapis_ruby_tarefas