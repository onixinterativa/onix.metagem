#= require modernizr
#= require jquery2
#= require jquery.turbolinks
#= require jquery_ujs
#= require lodash
#= require handlebars
#= require backbone
#= require bootstrap
#= require slimScroll
#= require fastclick
#= require adminlte
#= require select2
#= require select2/i18n/pt-BR
#= require toastr
#= require numeraljs
#= require numeraljs/languages/pt-br
#= require moment
#= require moment/locale/pt-br
#= require iCheck
#= require pace
#= require DataTables
#= require dataTables.bootstrap
#= require bootstrap3-datetimepicker
#= require bootstrap-datepicker
#= require bootstrap-datepicker/locales/bootstrap-datepicker.pt-BR
#= require bootstrap-daterangepicker
#= require jquery.validate
#= require best_in_place
#= require best_in_place.jquery-ui
#= require jsuri
#= require jquery-maskedinput

toastr.options = {
  "closeButton": false,
  "debug": false,
  "newestOnTop": false,
  "progressBar": false,
  "positionClass": "toast-bottom-right",
  "preventDuplicates": false,
  "onclick": null,
  "showDuration": "300",
  "hideDuration": "1000",
  "timeOut": "5000",
  "extendedTimeOut": "1000",
  "showEasing": "swing",
  "hideEasing": "linear",
  "showMethod": "fadeIn",
  "hideMethod": "fadeOut"
}


$ ->
  moment.locale('pt-BR')


  #TODO: Colocar o date range picker em router/application
  $('.daterange').daterangepicker(
    format: 'DD/MM/YYYY',
    ranges:
      'Hoje': [moment(), moment()]
      'Ontem': [moment().subtract(1, 'day'), moment().subtract(1, 'day')]
      'Últimos 7 Dias': [moment().subtract(7, 'days'), moment()]
    locale:
      applyLabel: 'OK!'
      cancelLabel: 'Cancelar'
      fromLabel: 'De'
      toLabel: 'Até'
      weekLabel: 'S'
      customRangeLabel: 'Período'
      daysOfWeek: moment.weekdaysMin()
      monthNames: moment.monthsShort()
      firstDay: moment.localeData()._week.dow

    startDate: moment().subtract(7, 'days')
    endDate: moment()
  )
