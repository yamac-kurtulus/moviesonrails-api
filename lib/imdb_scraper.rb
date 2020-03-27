# frozen_string_literal: true

require 'nokogiri'
require 'open-uri'
require 'movie'
require 'json'

class ImdbScraper
  def initialize(url)
    @url = URI.parse(url)
    @base_url = "#{@url.scheme}://#{@url.host}"
    @doc = Nokogiri::HTML(open(url))
  end

  def page_title
    @doc.title
  end

  def load_movie_from_list(index)
    uri = @doc.css('.lister-list > tr:nth-child(%d) > td:nth-child(2) > a:nth-child(1)' % index)[0]['href']
    @imdb_id = uri.delete_prefix('/title/').delete_suffix('/')
    load_page(imdb_id)
  end

  def load_page(imdb_id)
    @current_imdb_id = imdb_id
    if imdb_id.start_with? 'tt'
      page_url = @base_url + '/title/' + imdb_id
    elsif imdb_id.start_with? 'nm'
      page_url = @base_url + '/name/' + imdb_id
    else
      raise 'not a valid IMDB id'
    end
    @doc = page = Nokogiri::HTML(URI.open(page_url))
    page
  end

  def scrape_movie(imdb_id)
    movie_page = load_page imdb_id
    movie = read_movie_info movie_page
    movie
  end

  def scrape_star(imdb_id)
    star_page = load_page imdb_id
    star = read_star_info star_page
    star
  end

  private

  def read_movie_info(movie_page)
    movie = Movie.new
    movie.title = movie_page.title.split('-')[0].strip
    movie.imdb_id = @current_imdb_id
    movie.imdb_rating = movie_page.css('.ratingValue > strong:nth-child(1) > span:nth-child(1)').text.strip
    movie.poster_url = movie_page.css('.poster > a:nth-child(1) > img:nth-child(1)').attr('src')
    movie.plot = movie_page.css('.summary_text').text.strip
    movie
  end

  def read_star_info(star_page)
    star = Star.new
    star.name = star_page.css('#name-overview-widget-layout > tbody > tr:nth-child(1) > td > h1 > span').text.strip
    star.imdb_id = @current_imdb_id
    star.poster_url = star_page.css('#name-poster').attr('src')
    star
  end
end
