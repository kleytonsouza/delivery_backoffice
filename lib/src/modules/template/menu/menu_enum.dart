enum Menu {
  userConfig(
    'Configurações',
    '/user-config/',
    'user_type_icon.png',
    'user_type_icon_selected.png',
  ),

  requestSchedule(
    'Solicitar Agendamento',
    '/request-schedule/',
    'request_schedule_icon.png',
    'request_schedule_icon_selected.png',
  ),

  checkSchedules(
    'Verificar Solicitações',    
    '/check-schedule/',
    'check_schedule_icon.png',
    'check_schedule_icon_selected.png',
  );

  final String route;
  final String assetIcon;
  final String assetIconSelected;
  final String label;

  const Menu(this.label, this.route, this.assetIcon, this.assetIconSelected);
}
