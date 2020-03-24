require 'test_helper'
require 'minitest/autorun'
require 'imdb_scraper'
require 'movie'

class ScrapeTest < ActiveSupport::TestCase
  setup do
    url = 'https://www.imdb.com/chart/top'
    @sut = ImdbScraper.new(url)
    @sample_movie = movies(:whiplash)
    @sample_star = stars(:miles)
  end

  test 'should load imdb top 250 films page' do
    title = @sut.get_page_title
    assert title == 'IMDb Top 250 - IMDb'
  end

  test 'should load movie page' do
    doc = @sut.load_page 'tt2582802'
    title = @sut.get_page_title
    assert title = 'Whiplash (2014) - IMDb'
  end

  test 'should load star page' do
    doc = @sut.load_page 'nm1886602'
    title = @sut.get_page_title
    assert title = 'Miles Teller - IMDb'
  end

  test 'invalid id should not be loaded' do
    assert_raises do
      @sut.load_page 'aa1886602'
    end
  end

  test "should return 'Whiplash'" do
    movie = @sut.scrape_movie('tt2582802')
    assert_equal_model movie, @sample_movie
  end

  test "should return 'Miles'" do
    star = @sut.scrape_star('nm1886602')
    assert_equal_model movie, @sample_movie
  end
end
