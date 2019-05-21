class BirdsController < ApplicationController
  def index
    @birds = Bird.all
    # render 'birds/index.html.erb'
    #*rendering plain text
    # render plain: "Hello #{@birds[3].name}"
    #*endering hashes in json
    # render json: { message: 'Hashes of data will get converted to JSON' }
    #*render arrays in json 
    # render json: ['As','well','as','arrays']
    #* rendering objects
    # render json: @birds
    #! Nested ones too 
    render json: { birds: @birds, messages: ['Hello Birds', 'Goodbye Birds'] }

  end
end
