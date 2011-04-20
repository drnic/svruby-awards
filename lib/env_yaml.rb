require 'yaml'
begin
  env_yaml = YAML.load_file(File.expand_path('../../config/env.yml', __FILE__))
  if env_hash = env_yaml[ENV['RACK_ENV'] || ENV['RAILS_ENV'] || 'development']
    # puts env_hash.inspect
    env_hash.each_pair do |k,v|
      ENV[k] = v.to_s
    end
  end
rescue StandardError => e
end

