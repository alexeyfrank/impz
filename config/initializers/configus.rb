#encoding: utf-8
Configus.build Rails.env do

  env :production do
    pages_hash = {
        main: 'Главная страница',
        about: 'О компании',
        contacts: 'Контакты',
        price: 'Прайс-лист',
        products: 'Выпускаемая продукция',
        cooperation_terms: 'Условия сотрудничества',
        call_specialist: "Выезд специалиста"
    }
    pages pages_hash.to_a
  end

  env :development, parent: :production do

  end

  env :test, parent: :production do

  end

end