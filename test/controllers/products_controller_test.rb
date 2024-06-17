class ProductsControllerTest < ActionDispatch::IntegrationTest
    test 'render a list of products' do
        get products_path

        assert_response:success
        assert_select '.product',2
    end
    test 'render detailed product page' do
        
    end
end