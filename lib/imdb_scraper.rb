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


    def load_movie_from_list(index)
        uri = @doc.css('.lister-list > tr:nth-child(%d) > td:nth-child(2) > a:nth-child(1)' % index)[0]["href"]
        @imdb_id = uri.delete_prefix('/title/').delete_suffix('/')
        return load_page(imdb_id)
    end


    def load_page(imdb_id)  
        @current_imdb_id = imdb_id
        if imdb_id.start_with? "tt"
            page_url = @base_url + "/title/" + imdb_id
        elsif imdb_id.start_with? "nm"
            page_url = @base_url + "/name/" + imdb_id
        else 
            raise "not a valid IMDB id"
        end
        page = Nokogiri::HTML(open(page_url))
        return page
    end

    def scrape_movie (imdb_id)
        movie_page = load_page (imdb_id)
        movie = Movie.new
        movie.title = movie_page.css(".title_wrapper > h1:nth-child(1)").text.strip
        movie.imdb_id = @current_imdb_id.delete_prefix('/title/').delete_suffix('/')
        movie.imdb_rating = movie_page.css(".ratingValue > strong:nth-child(1) > span:nth-child(1)").text.strip
        movie.poster_url = movie_page.css(".poster > a:nth-child(1) > img:nth-child(1)").attr('src')
        movie.plot = movie_page.css(".summary_text").text.strip
        return movie
    end

    def scrape_star (imdb_id)
        star_page = load_page (star_id)
        star = Star.new
        star.title = movie_page.css(".title_wrapper > h1:nth-child(1)").text.strip
        star.imdb_id = @current_url.delete_prefix('/title/').delete_suffix('/')
        star.imdb_rating = movie_page.css(".ratingValue > strong:nth-child(1) > span:nth-child(1)").text.strip
        star.poster_url = movie_page.css(".poster > a:nth-child(1) > img:nth-child(1)").attr('src')
        star.plot = movie_page.css(".summary_text").text.strip
        return star
    end

end 
