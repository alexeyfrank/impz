user = User.find_or_initialize_by_email 'admin@admin.com'
user.password = '12345'
user.save
user.activate

configus.pages.each do |value|
  page = Page.find_or_initialize_by_slug value[0]
  seed_file_path = File.expand_path("seeds/#{value[0]}.html", File.dirname(__FILE__))
  if File.exist? seed_file_path
    page.content = File.read seed_file_path
  end
  page.title = value[1]
  page.save
  page.activate
end

# managers
managers = [
    {
        photo_path: '',
        email: '',
        region: '',

    }
]
