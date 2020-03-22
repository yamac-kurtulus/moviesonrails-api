require 'test_helper'
require 'minitest/autorun'
require 'imdb_scraper'
require 'movie'

class ScrapeTest < ActiveSupport::TestCase

    setup do 
        url = 'https://www.imdb.com/chart/top'
        @sut = ImdbScraper.new(url)
        @sample_movie = movies(:whiplash)
    end

    test "should load imdb top 250 films page" do
        title = @sut.get_page_title
        assert title == "IMDb Top 250 - IMDb"
    end

    test "should click on movie link and load page" do
        doc = @sut.load_movie (45)
        title = @sut.get_page_title 
        assert title = "Whiplash (2014) - IMDb"
    end

    test "should get the list of 250 movies including whiplash at 44th pos" do
        skip "later"
    end

    test "should return Whiplash model" do
       movie = @sut.scrape_movie(45)
       assert_equal @sample_movie, movie
    end

end
