require 'nokogiri'
require 'open-uri'
require 'movie'
require 'json'

class ImdbScraper
    def initialize url
       @url = URI.parse(url)
       @base_url = "#{@url.scheme}://#{@url.host}"
       @doc = Nokogiri::HTML(open(url))
    end

    def get_page_title
        return @doc.title
    end

    def load_movie(index)
        @current_url = @doc.css('.lister-list > tr:nth-child(%d) > td:nth-child(2) > a:nth-child(1)' % index)[0]["href"]
        movie_url = @base_url + @current_url
        movie = Nokogiri::HTML(open(movie_url))
        return movie
    end

    def scrape_movie (index)
        movie_page = load_movie (index)
        movie = Movie.new
        movie.title = movie_page.css(".title_wrapper > h1:nth-child(1)").text
        movie.imdb_id = @current_url.delete_prefix('/title/').delete_suffix('/')
        movie.imdb_rating = movie_page.css(".ratingValue > strong:nth-child(1) > span:nth-child(1)").text.strip
        movie.poster_url = movie_page.css(".poster > a:nth-child(1) > img:nth-child(1)").attr('src')
        movie.plot = movie_page.css(".summary_text").text.strip
        puts JSON.pretty_generate(movie.as_json)
        return movie
    end
end 
