module Nesta
class App
    helpers do
      def gist(gn,filename=nil)
        if(!filename.nil?)
          filename = "?file=#{filename}" 
        end
        "<script type='text/javascript' src='https://gist.github.com/#{gn}.js#{filename}'></script>"
      end
    end
  end
end