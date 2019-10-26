$('.js-tabs-title').on('click', function() {
  var openTab = $(this).data('tab'),
      linePosition = $(this).position().left;
  
  $('.js-tabs-underline').css('transform', 'translateX(' + linePosition + 'px)');
  $('.js-tabs-title').removeClass('active');
  $(this).addClass('active');
  $('.js-tabs-content').removeClass('active');
  $(openTab).addClass('active');
});