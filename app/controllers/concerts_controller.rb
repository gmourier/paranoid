class ConcertsController < InheritedResources::Base
    def index
        @concerts = Concert.where(:publish => true).order('show_at DESC').page params[:page]
    end
end

