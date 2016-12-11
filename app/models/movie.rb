class Movie < ActiveRecord::Base
    
    def video_url
        url = ''
        if room_name =~ /youtube/
            url = room_name + '?autoplay=1'
        else
            url = '/movies/' + id.to_s + '/video'
        end
        url 
    end
end
