class HomeController < ApplicationController
    def top
    end

    def about
        @tests = Sample.all
    end
end
