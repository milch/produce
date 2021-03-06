module Produce
  class Manager
    # Produces app at DeveloperCenter and ItunesConnect
    # @param config (Config) (optional) config to use. Will fallback to
    # config with ENV values if not specified.
    def self.start_producing(config = Config.new)
      FastlaneCore::DeveloperCenter.new.run(config)
      return FastlaneCore::ItunesConnect.new.run(config) unless config[:skip_itc]
    end
  end
end
