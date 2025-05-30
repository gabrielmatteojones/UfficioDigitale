require 'rss'
require 'open-uri'

module Jekyll
  class RemoteFeedGenerator < Generator
    safe true
    priority :high

    FEED_URL = 'https://gabrieljones.it/tag/feed.xml'
    MAX_ITEMS = 6

    def generate(site)
      content = URI.open(FEED_URL).read
      rss = RSS::Parser.parse(content, false)
      site.data['remote_posts'] = rss.items.first(MAX_ITEMS).map do |item|
        {
          'title' => item.title.content,
          'url'   => item.link,
          'date'  => item.pubDate
        }
      end
    rescue => e
      Jekyll.logger.warn "RemoteFeed:", "impossibile scaricare #{FEED_URL}: #{e.message}"
      site.data['remote_posts'] ||= []
    end
  end
end
