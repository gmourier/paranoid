module ApplicationHelper
    def generate_nav
        @pages = Page.order('title ASC').where(publish: true)
    end
end
