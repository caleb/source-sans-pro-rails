require 'test_helper'

class SourceSansProRailsTest < ActionDispatch::IntegrationTest
  test "engine is loaded" do
    assert_equal ::Rails::Engine, SourceSansPro::Rails::Engine.superclass
  end

  test "fonts are served" do
    get "/assets/SourceSansPro-Regular.eot"
    assert_response :success

    get "/assets/SourceSansPro-Regular.otf.woff"
    assert_response :success

    get "/assets/SourceSansPro-Regular.svg"
    assert_response :success
  end

  test "stylesheets are served" do
    get "/assets/source-sans-pro.css"
    assert_source_sans_pro response

    %w{black bold extra-light italic light regular semibold}.each do |font_weight|
      get "/assets/source-sans-pro/#{font_weight}.css"
      assert_source_sans_pro response
    end
  end

private

  def clean_sprockets_cache
    FileUtils.rm_rf File.expand_path("../dummy/tmp",  __FILE__)
  end

  def assert_source_sans_pro response
    assert_response :success
    assert_match(/font-family:\s*['"]Source Sans Pro.*['"];/, response.body)
  end
end
