class DeleteApi < ApplicationJob
    queue_as :default
  
    def perform(kb, action = :post)
      return unless kb.present?
  
      web_url = Rails.configuration.api_url
      api_key = Rails.configuration.kb_key
      uri = URI("http://#{web_url}/api/receive_kb/#{kb.id}/")
      headers = {
        'authorization' => "Api-Key #{api_key}"
      }
  
      http = Net::HTTP.new(uri.host, uri.port)
      http.use_ssl = true if uri.scheme == 'https'
  
     
    
        request = Net::HTTP::Delete.new(uri.request_uri, headers)
      
     
  
      begin
        response = http.request(request)
        Rails.logger.info "API Response: #{response.body}"
      rescue => e
        Rails.logger.error "Failed to perform #{action} action on KB to API: #{e.message}"
      end
    end
  end
  