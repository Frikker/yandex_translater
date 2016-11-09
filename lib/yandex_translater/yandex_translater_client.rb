module YandexTranslate
  class Client
    attr_reader :client

    def initialize(key)
      @client = YandexTranslate::Connect.new(key)
    end
    # получает ответ в виде: ("dirs"=>...,"langs" => ...)
    # dirs отвечает за все возмодные переводы текста(в том числе и обратный)
    # langs за все доступные языки
    def list_of_langs(lang = 'en')
      data = { ui: lang }
      connect('getLangs',data)
    end
    #на вход должен получить текст, язык которого должен быть определен
    #получает ответ в виде:("code" => ..., "lang" => ...)
    #code показывает код ответа http-запроса,
    #lang указывает на язык введенного слова
    def detect(text)
      data = { text: text }
      connect('detect', data)
    end
    #на вход должен получить текст для перевода и язык, на который должен быть осуществлен перевод
    #получает ответ в виде {"code" => ..., "lang" => ..., "text" => ...}
    #code показывает код ответа http-запроса,
    #lang указывает на используемые языки: 1 - язык исходный
    #2 - язык перевода
    #text выводит результат перевода
    def translate(text, lang, format = 'plain')
      data = { text: text, lang: lang, format: format }
      connect('translate', data)
    end
  end
end

