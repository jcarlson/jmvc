Jmvc::Application.routes.draw do

  root to: 'application#index'

  mount JasmineRails::Engine => "/jasmine" if defined?(JasmineRails)

end
