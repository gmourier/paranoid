class HomeController < InheritedResources::Base
    def index
        @posts = Post.order('created_at DESC').limit(5)
        @concerts = Concert.order('show_at DESC').limit(5)
        #@sponsors = Sponsor.limit(3)
    end
end