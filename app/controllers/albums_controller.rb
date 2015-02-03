class AlbumsController < InheritedResources::Base
    def index
        @albums = Album.order('released_at DESC').page params[:page]
    end
end

