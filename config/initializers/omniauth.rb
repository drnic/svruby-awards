Rails.application.config.middleware.use OmniAuth::Builder do
  if Rails.env.production?
    provider :meetup, '5bh4rgdj9937o65aoeots5n2ro', '8eoeuefatomrhfjsk90k15ghlf' # http://awards.svruby.com
  else
    provider :meetup, 'jr86pidmke1mr51ldq491oepln', 'd07p50nq5j4h9r0l58jc1hfoqn' # http://svruby-awards.dev
  end
end