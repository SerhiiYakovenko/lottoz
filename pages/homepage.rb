class Homepage < SitePrism::Page

  set_url '/'

  # ELEMENTS
  element :site_logo,             'a[class*="flex-items-xs-middle logo"]'
  element :logged_user_logo,      'img[src*="/logged"]'
  element :not_logged_user_logo,  'img[src*="/not-logged"]'

end