# frozen_string_literal: true

require 'test_helper'
require 'minitest/autorun'
require 'imdb_scraper'
require 'movie'

class ImdbScraperTest < ActiveSupport::TestCase
  setup do
    url = 'https://www.imdb.com/chart/top'
    @sut = ImdbScraper.new(url)
    @sample_movie = movies(:whiplash)
    @sample_star = stars(:miles)
  end

  test 'should load imdb top 250 films page' do
    title = @sut.page_title
    assert title == 'IMDb Top 250 - IMDb'
  end

  test 'should load movie page' do
    @sut.load_page 'tt2582802'
    title = @sut.page_title
    assert_equal title, 'Whiplash (2014) - IMDb'
  end

  test 'should load star page' do
    @sut.load_page 'nm1886602'
    title = @sut.page_title
    assert_equal title, 'Miles Teller - IMDb'
  end

  test 'invalid id should not be loaded' do
    assert_raises do
      @sut.load_page 'aa1886602'
    end
  end

  test "should be same as 'Whiplash'" do
    movie = @sut.scrape_movie('tt2582802')
    assert_equal_model @sample_movie, movie
  end

  test "should be same as 'Miles'" do
    star = @sut.scrape_star('nm1886602')
    assert_equal_model star, @sample_star
  end
end
