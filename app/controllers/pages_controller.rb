class PagesController < ApplicationController
    def home
        @images = Slideshow.all
    end

    def join
        @volunteer = Volunteer.new
    end



    def project
        @projects = Project.order(:id).page params[:page]
    end

    def volunteer
        @volunteers = Volunteer.where('active = true')

    end

    def help
    end

    def error

    end
end
