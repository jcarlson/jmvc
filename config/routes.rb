Jmvc::Application.routes.draw do

  mount JasmineRails::Engine => "/jasmine" if defined?(JasmineRails)

end
