module ApplicationHelper
  def gravatar_for(customer, opts = {})
    opts[:alt] = customer.name
    image_tag "https://www.gravatar.com/avatar/#{Digest::MD5.hexdigest(customer.email)}?s=#{opts.delete(:size) { 40 }}", opts
  end
end
