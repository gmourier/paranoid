class HomeController < InheritedResources::Base
    def index
        @posts = Post.order('created_at DESC').limit(5)
        @concerts = Concert.order('show_at DESC').limit(5)
        @sponsors = Sponsor.limit(3)
        @medias = Media.all
        @album = Album.order('released_at DESC').first
    end
end