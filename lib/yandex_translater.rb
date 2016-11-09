require 'json'
require 'net/http'
require 'uri'
require 'yandex_translater/yandex_translater_client'
require 'yandex_translater/yandex_translater_connect'


yandex = YandexTranslate::Client.new('trnsl.1.1.20161107T202832Z.0a5cfdc3073bc050.ed590bb728f025459a0de6b307e4c12c6e86241a')

puts yandex.detect('Ghost')
puts yandex.list_of_langs
puts yandex.translate('Здравствуй, путник', 'en')