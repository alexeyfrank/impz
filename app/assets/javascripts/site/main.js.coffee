class ProductionMenu
  activeItem: null

  constructor: ->
    @bind()

  bind: ->
    _this = @
    $('.production .item').click ->
      prevItem = $('.production .item.active').get(0)
      _this.hideItem prevItem
      if prevItem != @
        _this.toggleItem @

  toggleItem: (item) ->
    if $(item).hasClass('active')
      $(item).removeClass 'active'
      data_item = $(item).data('item')
      $(".subitems ul[data-item-link='#{data_item}']").hide()
      $('.default-text').show()
    else
      $(item).addClass 'active'
      data_item = $(item).data('item')
      $(".subitems ul[data-item-link='#{data_item}']").show()
      $('.default-text').hide()

  hideItem: (item) ->
    $(item).removeClass 'active'
    data_item = $(item).data('item')
    $(".subitems ul[data-item-link='#{data_item}']").hide()
    $('.default-text').show()

production_menu = new ProductionMenu()

$('#top-carousel-inner').carouFredSel
  items: 1
  circular: true
  infinite: true
  auto: true
  prev:
    button: "#top-carousel-inner_prev"
    key: "left"
    duration: 750
  next:
    button: "#top-carousel-inner_next"
    key: "right"
    duration: 750
  pagination:
    container: "#top-carousel-inner_pag"
    keys: true
    duration: 3000
