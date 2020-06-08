module ApplicationHelper
    def full_title(title="")
        if title.empty?
            title = "Posts app"
        else
                title = "Post | #{title}";
        end
         title;
    end
end
