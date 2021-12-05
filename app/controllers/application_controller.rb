class ApplicationController < ActionController::API
  before_action :cross_domain

  def options;end

  private
    def cross_domain
      headers['Access-Control-Allow-Origin'] = white_list
      headers['Vary'] = 'Origin'
      headers['Access-Control-Allow-Methods'] = 'POST, GET, OPTIONS, HEAD, DELETE, PUT, PATCH'
      headers['Access-Control-Request-Method'] = '*'
      headers['X-Frame-Options'] = 'allow-from *'
      headers['Access-Control-Allow-Headers'] = 'Origin, X-Requested-With, Content-Type, accept, Authorization'
      headers['Cache-Control'] = "max-age=0, public, no-transform"
    end

    def white_list
      lista_liberados = [
        "http://localhost:3000/",
        "http://alunos.com.br/",
        "http://alunos.com.br:3000/",
        "http://localhost:3001/",
        "http://localhost:3003/",
        "http://localhost:3002/"
      ]

      if lista_liberados.include?(request.referer)
        return request.referer[0, request.referer.length-1]
      else
        request.original_url.remove(request.original_fullpath)
      end
    end
end
