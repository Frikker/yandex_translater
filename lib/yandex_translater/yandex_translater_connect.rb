module YandexTranslate
  class Connect
    ERROR = { 401 => 'Неправильный API-ключ',
              402 => 'API-ключ заблокирован',
              404 => 'Превышено суточное ограничение на объем переведенного текста',
              413 => 'Превышен максимально допустимый размер текста',
              422 => 'Текст не может быть переведен',
              501 => 'Заданное направление перевода не поддерживается'}
    BASE_URI = 'https://translate.yandex.net/api/v1.5/tr.json/'.freeze

    def initialize(key)
      @key = key
    end

    def connect(method, args = {})
      url = URI.parse("#{BASE_URI}#{method}?key=#{@key}")
      result = JSON(Net::HTTP.post_form(url, args).body)
      raise(ERROR[result['code'].to_i]) if ERROR.has_key?result['code'].to_i
    end
  end
end
