require 'faraday'
require 'json'
describe 'Verify Get Request' do
      response = Faraday.get("https://jsonplaceholder.typicode.com/posts",{'content-type'=>'application/json'})
      puts("Response Status is:: ",response.status)
 it 'responds with a 200 Success' do
   result = expect(response.status).to equal(200)
   puts("Verification of the Result is:: ",result)
    end

end
