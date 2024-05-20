class SendKbToApiJob < ApplicationJob
  queue_as :default

  def perform(kb, action = :post)
    return unless kb.present?

    web_url = Rails.configuration.api_url
    api_key = Rails.configuration.kb_key
    uri = URI("http://#{web_url}/api/receive_kb/#{kb.id}/")
    headers = {
      'authorization' => "Api-Key #{api_key}",
      'Content-Type' => 'application/json'
    }

    http = Net::HTTP.new(uri.host, uri.port)
    http.use_ssl = true if uri.scheme == 'https'

    case action
    when :post
      payload = {
        id: kb.id,
        subject: kb.subject,
        question: kb.question,
        answer: kb.answer,
        related_knowledge_base_id: kb.related_knowledge_base_id,
        tags: [kb.tag]
      }
      request = Net::HTTP::Post.new(uri.request_uri, headers)
      request.body = payload.to_json
    when :delete
      Rails.logger.info "fuck my life #{action}"
      request = Net::HTTP::Delete.new(uri.request_uri, headers)
    else
      Rails.logger.error "Unsupported action: #{action}"
      return
    end

    begin
      response = http.request(request)
      #Rails.logger.info "API Response: #{response.body}"
    rescue => e
      Rails.logger.error "Failed to perform #{action} action on KB to API: #{e.message}"
    end
  end
end
