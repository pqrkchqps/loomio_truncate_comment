module Plugins
  module Diehard_FundTruncateComment
    class Plugin < Plugins::Base
      setup! :diehard_fund_truncate_comment do |plugin|
        plugin.enabled = true
        plugin.use_component :truncate_comment, outlet: :after_comment_body
        plugin.use_translations 'config/locales', :truncate_comment
      end
    end
  end
end
