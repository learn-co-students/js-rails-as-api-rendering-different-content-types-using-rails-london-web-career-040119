#To render plain text from a Rails controller, you specify plain:, followed by the text you want to display:

# class BirdsController < ApplicationController
#   def index
#     @birds = Bird.all
#     render plain: "Hello #{@birds[3].name}"
#   end
# end

#To render JSON from a Rails controller, you specify json: followed something can be converted to valid JSON:

# class BirdsController < ApplicationController
#   def index
#     @birds = Bird.all
#     render json: 'Remember that JSON is just object notation converted to string data, so strings also work here'
#   end
# end

#We can pass strings as we see above, as well as hashes, arrays, and other data types:

# class BirdsController < ApplicationController
#   def index
#     @birds = Bird.all
#     render json: { message: 'Hashes of data will get converted to JSON' }
#   end
# end

# class BirdsController < ApplicationController
#   def index
#     @birds = Bird.all
#     render json: ['As','well','as','arrays']
#   end
# end

#In our bird watching case, we actually already have a collection of data, @birds, so we can write:

# class BirdsController < ApplicationController
#   def index
#     @birds = Bird.all
#     render json: @birds
#   end
# end

# We can choose to explicitly convert our array or hash, without any problem by adding to_json to the end:

# class BirdsController < ApplicationController
#   def index
#     @birds = Bird.all
#     render json: { birds: @birds, messages: ['Hello Birds', 'Goodbye Birds'] }
#   end
# end

# We can choose to explicitly convert our array or hash, without any problem by adding to_json to the end:

class BirdsController < ApplicationController
  def index
    @birds = Bird.all
    render json: { birds: @birds, messages: ['Hello Birds', 'Goodbye Birds'] }.to_json
  end
end