require 'sinatra'


	set :load, 0 

	get '/' do
	  'Hello world!'
	end


	get '/wait/:length' do
	    sleep(length) ## What is the ruby equiv of time.sleep
	    "" ## This is a return because near as I can tell we can't do anything without magic
	end

	get '/wait' do
	    sleep(random.randint(1,20))
	    ""
	end

	get '/load' do
	    load += 1
		""
	end

	get '/die' do
	   exit 1
	end

	get '/load_wait' do
	    load += 1
	    sleep(load/50.0)
	    ""
	end