import 'package:firebase_ui_localizations/firebase_ui_localizations.dart';
import 'package:nobot/core/models/customer/customer.dart';

import '../../models/volume/volume.dart';
import '../../scaffold/nav/nav.dart';
import '../localization_labels.dart';

class EsLocalizations extends DefaultLocalizations
    implements LocalizationLabels {
  const EsLocalizations();

  @override
  String get abbrvHours => 'h';

  @override
  String get abbrvMinutes => 'm';

  @override
  String get activeSwitchText => 'Activo';

  @override
  String get actual => 'Actual';

  @override
  String get add => 'Añadir';

  @override
  String get addContainer => 'Añadir contenedor';

  @override
  String get addContainers => 'Añadir contenedores';

  @override
  String get addCustomerButtonText => 'Añadir cliente';

  @override
  String get addCustomerTitle => 'Añadir cliente';

  @override
  String get addDepot => 'Añadir almacén';

  @override
  String get addMoreStops => 'Añadir más paradas';

  @override
  String get addStops => 'Añadir paradas';

  @override
  String get addToRoute => 'Añadir a la ruta';

  @override
  String get addUser => 'Añadir usuario';

  @override
  String get addVehicle => 'Añadir vehículo';

  @override
  String get address => 'Dirección';

  @override
  String get allowLocationPermission => 'Permitir permiso de ubicación';

  @override
  String get appName => 'Ruta Simplificada';

  @override
  String get approxGallons => 'Galones aproximados';

  @override
  String get archiveCustomer => 'Archivar cliente';

  @override
  String get archiveLabel => 'Archivar';

  @override
  String get archiveSelected => 'Archivar seleccionados';

  @override
  String get archiveSelectedCustomers => 'Archivar clientes seleccionados';

  @override
  String get archiveSelectedCustomersConfirmation =>
      '¿Está seguro de que desea archivar los clientes seleccionados?';

  @override
  String get archived => 'Archivado';

  @override
  String get arrival => 'Llegada';

  @override
  String get arrive => 'Llegar';

  @override
  String get at => 'a las';

  @override
  String get atLeast1DepotIsRequired => 'Se requiere al menos 1 almacén';

  @override
  String get atLeastOneRole => 'Se requiere al menos un rol';

  @override
  String get atLeastOneStopIsRequired => 'Se requiere al menos 1 parada';

  @override
  String get billingId => 'ID de facturación';

  @override
  String get cacheFailureMessage => 'No se pudo cargar la caché';

  @override
  String get cancel => 'Cancelar';

  @override
  String get cannotDeleteCompletedRoute =>
      'No se puede eliminar una ruta completada';

  @override
  String get cannotDeleteInProgressRoute =>
      'No se puede eliminar una ruta en curso';

  @override
  String get capacity => 'Capacidad';

  @override
  String get changeLog => 'Registro de cambios';

  @override
  String collected({bool titleCase = true}) =>
      titleCase ? 'Recolectado' : 'recolectado';

  @override
  String get collectedAmount => 'Cantidad recolectada';

  @override
  String get collectedAmountGreaterThanCapacity =>
      'La cantidad recolectada no puede ser mayor que la capacidad';

  @override
  String get collectedSkipWarning =>
      '¿Está seguro de que desea omitir esta parada?';

  @override
  String get collectionData => 'Datos de recolección';

  @override
  String get collectionEntry => 'Entrada de recolección';

  @override
  String get collectionSaved => 'Recolección guardada';

  @override
  String get collectionUpdated => 'Recolección actualizada';

  @override
  String get companyDetails => 'Detalles de la empresa';

  @override
  String get companyName => 'Nombre de la empresa';

  @override
  String get companySettingsTitle => 'Configuración de la empresa';

  @override
  String get companySuccessfullyUpdated => 'Empresa actualizada con éxito';

  @override
  String get complete => 'Completar';

  @override
  String get completePreviousStops => 'Complete las paradas anteriores';

  @override
  String get completed => 'Completado';

  @override
  String get completedOn => 'Completado el';

  @override
  String get contactSupportForBadData =>
      'Póngase en contacto con el soporte para obtener datos incorrectos';

  @override
  String get containerRemovedSuccessfully => 'Contenedor eliminado con éxito';

  @override
  String get containerSuccessfullyCreated => 'Contenedor creado con éxito';

  @override
  String get containerSuccessfullyUpdated => 'Contenedor actualizado con éxito';

  @override
  String get containers => 'Contenedores';

  @override
  String get containersAddedSuccessfully => 'Contenedores agregados con éxito';

  @override
  String get containersTitle => 'Contenedores';

  @override
  String get continueRoute => 'Continuar ruta';

  @override
  String get convert => 'Convertir';

  @override
  String get couldNotLaunchNavigation => 'No se pudo iniciar la navegación';

  @override
  String get create => 'Crear';

  @override
  String get createContainer => 'Crear contenedor';

  @override
  String get createDepot => 'Crear almacén';

  @override
  String get createVehicle => 'Crear vehículo';

  @override
  String get customId => 'ID personalizado';

  @override
  String get customer => 'Cliente';

  @override
  String get customerContainerAssignmentSuccessfullyCreated =>
      'Asignación de contenedor de cliente creada con éxito';

  @override
  String get customerDetails => 'Detalles del cliente';

  @override
  String get customerId => 'ID de cliente';

  @override
  String get customerNameHintText => 'Nombre del cliente';

  @override
  String get customerNotFound => 'Cliente no encontrado';

  @override
  String get customerSuccessfullyCreated => 'Cliente creado con éxito';

  @override
  String get customerSuccessfullyUpdated => 'Cliente actualizado con éxito';

  @override
  String get customers => 'Clientes';

  @override
  String get customersTitle => 'Clientes';

  @override
  String get date => 'Fecha';

  @override
  String get dateFormat => 'dd/MM/yyyy';

  @override
  String get days => 'Días';

  @override
  String get deactivate => 'Desactivar';

  @override
  String get deactivateUser => 'Desactivar usuario';

  @override
  String get defaultFailureMessage => 'Algo salió mal';

  @override
  String get defaultMeasurementType => 'Tipo de medida predeterminado';

  @override
  String get defaultServiceTime => 'Tiempo de servicio predeterminado';

  @override
  String get delete => 'Eliminar';

  @override
  String get deleteDepot => 'Eliminar almacén';

  @override
  String get deleteRoute => 'Eliminar ruta';

  @override
  String get deleteVehicle => 'Eliminar vehículo';

  @override
  String get depot => 'Almacén';

  @override
  String get depotSuccessfullyCreated => 'Almacén creado con éxito';

  @override
  String get depotSuccessfullyUpdated => 'Almacén actualizado con éxito';

  @override
  String get depots => 'Almacenes';

  @override
  String get details => 'Detalles';

  @override
  String get dismiss => 'Descartar';

  @override
  String get done => 'Hecho';

  @override
  String get dragAndRelease => 'Arrastre y suelte para actualizar';

  @override
  String get driver => 'Conductor';

  @override
  String get driverRouteSettings => 'Configuración de ruta del conductor';

  @override
  String get drivers => 'Conductores';

  @override
  String get duration => 'Duración';

  @override
  String get edit => 'Editar';

  @override
  String get editCompany => 'Editar empresa';

  @override
  String get editContainer => 'Editar contenedor';

  @override
  String get editCustomer => 'Editar cliente';

  @override
  String get editDepot => 'Editar almacén';

  @override
  String get editFillLevel => 'Editar nivel de llenado';

  @override
  String get editOptions => 'Editar opciones';

  @override
  String get editRoute => 'Editar ruta';

  @override
  String get editUser => 'Editar usuario';

  @override
  String get editVehicle => 'Editar vehículo';

  @override
  String get email => 'Correo electrónico';

  @override
  String get emailAlreadyExists => 'El correo electrónico ya existe';

  @override
  String get emailHintText => 'Ingrese correo electrónico';

  @override
  String get end => 'Fin';

  @override
  String get endDate => 'Fecha final';

  @override
  String get endDateTime => 'Fecha y hora de finalización';

  @override
  String get endLabel => 'Fin';

  @override
  String get enterCollectionData => 'Ingrese los datos de la colección';

  @override
  String get enterDateRange => 'Ingrese el rango de fechas';

  @override
  String get enterEndDate => 'Ingrese la fecha de finalización';

  @override
  String get enterFinishRouteReason =>
      'Ingrese el motivo de finalización de la ruta';

  @override
  String get enterStartDate => 'Ingrese la fecha de inicio';

  @override
  String get entryCode => 'Código de entrada';

  @override
  String get estimatedAmountOnSite => 'Cantidad estimada en el sitio';

  @override
  String get estimatedCompletion => 'Finalización estimada';

  @override
  String get estimatedFillLevel => 'Nivel de llenado estimado';

  @override
  String get estimatedSuffix => 'Estimado';

  @override
  String get exceededLegalHours => 'Horas legales excedidas';

  @override
  String get exitRoute => 'Ruta de salida';

  @override
  String get expected => 'Esperado';

  @override
  String get expiredActionCode => 'Código de acción caducado';

  @override
  String get explainSkipReason => 'Explique el motivo del salto';

  @override
  String get exportToExcel => 'Exportar a Excel';

  @override
  String get fillLevelExceedsCapacity =>
      'Advertencia: El nivel de llenado supera la capacidad';

  @override
  String get findCollections => 'Encuentra colecciones';

  @override
  String get finishRoute => 'Finalizar ruta';

  @override
  String get finishRouteReasonDialogSubTitle =>
      '¿Está seguro de que desea finalizar la ruta?';

  @override
  String get firstName => 'Nombre de pila';

  @override
  String get flagged => 'Marcado';

  @override
  String get gallonsOnArrival => 'Galones a la llegada';

  @override
  String get general => 'General';

  @override
  String get generalError => 'Algo salió mal';

  @override
  String get generalInfo => 'Información general';

  @override
  String get generalSettingsTitle => 'Configuración general';

  @override
  String get genericFailureMessage => 'Algo salió mal';

  @override
  String getArchiveConfirmation(String name) =>
      '¿Estás seguro de que quieres archivar $name?';

  @override
  String getDeactivateConfirmation(String name) =>
      '¿Estás seguro de que quieres desactivar $name?';

  @override
  String getDeleteConfirmation(String name) =>
      '¿Estás seguro de que quieres eliminar $name?';
  @override
  String getEmailForPasswordReset(String email) =>
      'Se ha enviado un correo electrónico a $email con instrucciones para restablecer su contraseña.';

  @override
  String getFoundCount(int count) => '$count encontrados';

  @override
  String getMinutes(int minutes, {bool showValue = false}) {
    if (minutes == 1) {
      return showValue ? '$minutes minuto' : 'minuto';
    } else {
      return showValue ? '$minutes minutos' : 'minutos';
    }
  }

  @override
  String getNoOnsiteCapacityWarning(String customerName) =>
      'No hay capacidad en el sitio para $customerName';

  @override
  String getTextToVerify(String text) => 'Ingrese \'$text\' para confirmar';

  @override
  String get goToLogin => 'Ir a iniciar sesión';

  @override
  String get grpcFailureMessage => 'Algo salió mal';

  @override
  String get hireDate => 'Fecha de contratación';

  @override
  String get history => 'Historia';

  @override
  String get holdAndDragToReorder =>
      'Mantenga presionado y arrastre para reordenar';

  @override
  String get homeTitle => 'Casa';

  @override
  String get hours => 'Horas';

  @override
  String get hyphen => '-';

  @override
  String get inactive => 'Inactivo';

  @override
  String get inactiveSwitchText => 'Inactivo';

  @override
  String get invalidActionCode => 'Código de acción no válido';

  @override
  String get invalidEmail => 'Correo electrónico inválido';

  @override
  String get invalidEmailFormat => 'Formato de correo electrónico no válido';

  @override
  String get invalidIntegerFormat => 'Formato de número entero no válido';

  @override
  String get requestNewPasswordReset =>
      'Solicitar un nuevo correo para restablecer la contraseña';

  @override
  String get invalidPhoneNumberFormat =>
      'Formato de número de teléfono no válido';

  @override
  String get invalidRouteStatus => 'Estado de ruta no válido';

  @override
  String get inventoryTitle => 'Inventario';

  @override
  String get isRequired => 'es requerido';

  @override
  String get keep => 'Mantener';

  @override
  String get lastActive => 'Último activo';

  @override
  String get lastName => 'Apellido';

  @override
  String get lastService => 'Último servicio';

  @override
  String get lastServiceDate => 'Fecha del último servicio';

  @override
  String get locale => 'es';

  @override
  String get locationDeniedFailure => 'Permiso de ubicación denegado';

  @override
  String get locationDeniedForeverFailure =>
      'Permiso de ubicación denegado para siempre';

  @override
  String get locationDetails => 'Detalles de ubicación';

  @override
  String get locationNotes => 'Notas de ubicación';

  @override
  String get locationServiceDisabledFailure =>
      'Servicio de ubicación desactivado';

  @override
  String get lock => 'Bloquear';

  @override
  String get logoutTitle => 'Cerrar sesión';

  @override
  String get manager => 'Gerente';

  @override
  String get mapView => 'Vista de mapa';

  @override
  String get measurementType => 'Tipo de medición';

  @override
  String get minutes => 'Minutos';

  @override
  String get missingFinishRouteReason =>
      'Falta la razón para finalizar la ruta';

  @override
  String get missingRequiredFields => 'Faltan campos requeridos';

  @override
  String get missingUserId => 'Falta el ID de usuario';

  @override
  String get modifiedAt => 'Modificado en';

  @override
  String get modifiedBy => 'Modificado por';

  @override
  String mustBeGreaterThan(int value) => 'Debe ser mayor que $value';

  @override
  String get settings => 'Configuración';

  @override
  String get nameLabel => 'Nombre';

  @override
  String get name => 'Nombre';

  @override
  String get neverServiced => 'Nunca servido';

  @override
  String get newAmountOnSite => 'Nueva cantidad en el sitio';

  @override
  String get newOnsiteCapacity => 'Nueva capacidad en el sitio';

  @override
  String get newPassword => 'Nueva contraseña';

  @override
  String get newRoute => 'Nueva ruta';

  @override
  String get newUser => 'Nuevo usuario';

  @override
  String get next => 'Siguiente';

  @override
  String get nextDate => 'Próxima fecha';

  @override
  String get nextRoute => 'Siguiente ruta';

  @override
  String get nextService => 'Próximo servicio';

  @override
  String get nextServiceDate => 'Fecha del próximo servicio';

  @override
  String get noAssignedContainers => 'No hay contenedores asignados';

  @override
  String get noCollection => 'Sin colección';

  @override
  String get noCompanyLogo => 'Sin logotipo de la empresa';

  @override
  String get noCompanyName => 'Sin nombre de empresa';

  @override
  String get noContainersSelected => 'No hay contenedores seleccionados';

  @override
  String get noContainersToDisplay => 'No hay contenedores para mostrar';

  @override
  String get noCustomersFound => 'No se encontraron clientes';

  @override
  String get noCustomersToDisplay => 'No hay clientes para mostrar';

  @override
  String get noDepotsToDisplay => 'No hay almacenes para mostrar';

  @override
  String get noDriverAssigned => 'No hay conductor asignado';

  @override
  String get noEmail => 'Sin correo electrónico';

  @override
  String get noEntry => 'Sin entrada';

  @override
  String get noLocationNotes => 'Sin notas de ubicación';

  @override
  String get noMapAppsFound => 'No se encontraron aplicaciones de mapas';

  @override
  String get noPhoneNumber => 'Sin número de teléfono';

  @override
  String get noRoutesToDisplay => 'No hay rutas para mostrar';

  @override
  String get noSearchResults => 'No hay resultados de búsqueda';

  @override
  String get noServiceHistory => 'Sin historial de servicio';

  @override
  String get noStopsAddedYet => 'Aún no se han agregado paradas';

  @override
  String get noUserDetails => 'Sin detalles de usuario';

  @override
  String get noUsers => 'No hay usuarios';

  @override
  String get noVehiclesToDisplay => 'No hay vehículos para mostrar';

  @override
  String get noWaypoints => 'Sin puntos de ruta';

  @override
  String get notAvailable => 'No disponible';

  @override
  String get notAvailableSymbol => 'n/a';

  @override
  String get notFoundMessage => 'No se encontró la página que está buscando';

  @override
  String get notFoundTitle => 'No encontrado';

  @override
  String get notScheduled => 'No programado';

  @override
  String get notes => 'Notas';

  @override
  String get now => 'Ahora';

  @override
  String get ok => 'OK';

  @override
  String get onlyDriverCanContinueTrip =>
      'Solo el conductor puede continuar el viaje';

  @override
  String get onlyDriverCanStartTrip =>
      'Solo el conductor puede iniciar el viaje';

  @override
  String get onsiteCapacity => 'Capacidad en el sitio';

  @override
  String get optimize => 'Optimizar';

  @override
  String get other => 'Otro';

  @override
  String get otherReason => 'Otra razón';

  @override
  String get passwordChanged => 'Contraseña cambiada';

  @override
  String get passwordHintText => 'Introducir la contraseña';

  @override
  String get passwordLabelText => 'Contraseña';

  @override
  String get passwordResetEmailSent =>
      'Correo electrónico de restablecimiento de contraseña enviado';

  @override
  String get passwordSet => 'Contraseña establecida';

  @override
  String get percentFull => 'Porcentaje de llenado';

  @override
  String get percentFullOnarrival => 'Porcentaje de llenado a la llegada';

  @override
  String get percentFullSymbolHeader => '% Lleno';

  @override
  String get percentFullSymbol => '% lleno';

  @override
  String get percentSymbol => '%';

  @override
  String get permissionDeniedForever => 'Permiso denegado para siempre';

  @override
  String get phoneNumber => 'Número de teléfono';

  @override
  String get pleaseEnterOtherReason => 'Por favor ingrese otra razón';

  @override
  String get pleaseSelectAReason => 'Por favor seleccione una razón';

  @override
  String get quantity => 'Cantidad';

  @override
  String get reasonForSkipping => 'Razón para saltar';

  @override
  String get reiterFooter =>
      'Si tiene alguna pregunta, responda a este correo electrónico o llame al 1-800-123-4567';

  @override
  String get residual => 'Restante';

  @override
  String get remainingAmountGreaterThanCapacity =>
      'La cantidad restante no puede ser mayor que la capacidad';

  @override
  String get remainingFillPercent => 'Porcentaje de llenado restante';

  @override
  String get remainingGallons => 'Galones restantes';

  @override
  String get remove => 'Eliminar';

  @override
  String get removeContainer => 'Eliminar contenedor';

  @override
  String get removeContainerConfirmation =>
      '¿Está seguro de que desea eliminar este contenedor?';

  @override
  String get reorderStops => 'Reordenar paradas';

  @override
  String get reportsTitle => 'Informes';

  @override
  String requiredField(String fieldName) => '$fieldName es obligatorio';

  @override
  String get resendInvite => 'Reenviar invitación';

  @override
  String get resetPassword => 'Restablecer la contraseña';

  @override
  String get resetPasswordDescription =>
      'Ingrese su dirección de correo electrónico y le enviaremos un enlace para restablecer su contraseña';

  @override
  String get resetYourPassword => 'Restablecer su contraseña';

  @override
  String get review => 'Revisión';

  @override
  String get roles => 'Roles';

  @override
  String get route => 'Ruta';

  @override
  String get routeCouldNotBeCloned => 'La ruta no se pudo clonar';

  @override
  String get routeDetails => 'Detalles de la ruta';

  @override
  String get routeNotes => 'Notas de ruta';

  @override
  String get optimized => 'Optimizada';

  @override
  String get routeSuccessfullyCloned => 'Ruta clonada con éxito';

  @override
  String get routeSuccessfullyCompleted => 'Ruta completada con éxito';

  @override
  String get routeSuccessfullyDeleted => 'Ruta eliminada con éxito';

  @override
  String get routeSuccessfullyOptimized => 'Ruta optimizada con éxito';

  @override
  String get routeSuccessfullyScheduled => 'Ruta programada con éxito';

  @override
  String get routeSuccessfullyUnscheduled => 'Ruta sin programar con éxito';

  @override
  String get routefilter => 'Filtro de ruta';

  @override
  String get routesTitle => 'Rutas';

  @override
  String get routingTitle => 'Enrutamiento';

  @override
  String get save => 'Guardar';

  @override
  String get savePassword => 'Guardar contraseña';

  @override
  String get schedule => 'Programar';

  @override
  String get scheduled => 'Programado';

  @override
  String get scheduledArrivalTime => 'Hora de llegada programada';

  @override
  String get scheduledStart => 'Inicio programado';

  @override
  String get search => 'Buscar';

  @override
  String get selectAMapApp => 'Seleccione una aplicación de mapas';

  @override
  String get selectDepots => 'Seleccionar almacenes';

  @override
  String get selectDrivers => 'Seleccionar conductores';

  @override
  String get selectRoles => 'Seleccionar roles';

  @override
  String get selectVehicles => 'Seleccionar vehículos';

  @override
  String get sendPasswordResetLink =>
      'Enviar enlace de restablecimiento de contraseña';

  @override
  String get serviceHistory => 'Historial de servicio';

  @override
  String get serviceHistoryTitle => 'Historial de servicio';

  @override
  String get setPassword => 'Establecer contraseña';

  @override
  String get shortMonthFormat => 'MMM';

  @override
  String get showDetails => 'Mostrar detalles';

  @override
  String get showOnMap => 'Mostrar en el mapa';

  @override
  String get showScheduledTimes => 'Mostrar horarios programados';

  @override
  String get signIn => 'Iniciar sesión';

  @override
  String get skip => 'Saltar';

  // @override
  // String skipReasonText(SkipReason reason) {
  //   switch (reason) {
  //     case SkipReason.exceededLegalHours:
  //       return 'Excedió las horas legales';
  //     case SkipReason.truckFull:
  //       return 'Camión lleno';
  //     case SkipReason.other:
  //       return 'Otro';
  //   }
  // }

  @override
  String get skipped => 'Saltarse';

  @override
  String get somethingWentWrong => 'Algo salió mal';

  @override
  String get sort => 'Ordenar';

  @override
  String get sortBy => 'Ordenar por';

  @override
  String get start => 'Comienzo';

  @override
  String get startDate => 'Fecha de inicio';

  @override
  String get startDateTime => 'Fecha y hora de inicio';

  @override
  String get startLabel => 'Comienzo';

  @override
  String get startRoute => 'Iniciar ruta';

  @override
  String get startTime => 'Hora de inicio';

  @override
  String get started => 'Comenzado';

  @override
  String get status => 'Estado';

  @override
  String get stopNumber => 'Número de parada';

  @override
  String get stopSkipped => 'Parada omitida';

  @override
  String get stops => 'Paradas';

  @override
  String get submit => 'Enviar';

  @override
  String get succesMessageForFinishedRoute => 'Ruta completada con éxito';

  @override
  String get tentative => 'Tentativo';

  @override
  String get timeFormat => 'HH:mm';

  @override
  String get today => 'Hoy';

  @override
  String get totalCollectedAmount => 'Cantidad total recaudada';

  @override
  String get totalFillPercent => 'Porcentaje de llenado total';

  @override
  String get totalRemainingAmount => 'Cantidad total restante';

  // @override
  // String tripStatus(TripStatus status) {
  //   switch (status) {
  //     case TripStatus.draft:
  //       return 'Borrador';
  //     case TripStatus.scheduled:
  //       return 'Programado';
  //     case TripStatus.inprogress:
  //       return 'En progreso';
  //     case TripStatus.complete:
  //       return 'Completo';
  //   }
  // }

  @override
  String get truckIsFull => 'El camión está lleno';

  @override
  String get typeHere => 'Escribe aquí';

  @override
  String get unNamedRoute => 'Ruta sin nombre';

  @override
  String get unSkip => 'No saltar';

  @override
  String get unlock => 'Desbloquear';

  @override
  String get unschedule => 'Desprogramar';

  @override
  String get unscheduled => 'Sin programar';

  @override
  String get update => 'Actualizar';

  @override
  String get uploadCompanyLogoText => 'Subir logotipo de la empresa';

  @override
  String get useAddressAsAlternateLocation =>
      'Usar dirección como ubicación alternativa';

  @override
  String get user => 'Usuario';

  @override
  String get userDetailsPageTitle => 'Detalles del usuario';

  @override
  String get userDisabled => 'Usuario deshabilitado';

  @override
  String get userInfo => 'Información del usuario';

  @override
  String get userNotFound => 'Usuario no encontrado';

  @override
  String get userSuccessfullyCreated => 'Usuario creado con éxito';

  @override
  String get userSuccessfullyUpdated => 'Usuario actualizado con éxito';

  @override
  String get users => 'Usuarios';

  @override
  String get usersPageTitle => 'Usuarios';

  @override
  String get validAddressIsRequired => 'Se requiere una dirección válida';

  @override
  String get valueTooHigh => 'Valor demasiado alto';

  @override
  String get valueTooLow => 'Valor demasiado bajo';

  @override
  String get vehicle => 'Vehículo';

  @override
  String get vehicleNameFieldLabel => 'Nombre del vehículo';

  @override
  String get vehicleSuccessfullyCreated => 'Vehículo creado con éxito';

  @override
  String get vehicleSuccessfullyUpdated => 'Vehículo actualizado con éxito';

  @override
  String get vehicles => 'Vehículos';

  @override
  String get vehiclesTitle => 'Vehículos';

  @override
  String get weakPassword => 'Contraseña débil';

  @override
  String get wrongPassword => 'Contraseña incorrecta';

  @override
  String get createADepot => 'Crear un almacene';

  @override
  String get createADriver => 'Crear un conductor';

  @override
  String get createAVehicle => 'Crear un vehículo';

  @override
  String get defaultDepot => 'Almacene predeterminado';

  @override
  String get defaultDriver => 'Conductor predeterminado';

  @override
  String get defaultStartTime => 'Hora de inicio predeterminada';

  @override
  String get defaultVehicle => 'Vehículo predeterminado';

  @override
  String get measurementSystem => 'Sistema de medida';

  // @override
  // String measurementSystemText(SystemOfMeasurement system) {
  //   switch (system) {
  //     case SystemOfMeasurement.IMPERIAL:
  //       return 'Imperial';
  //     case SystemOfMeasurement.IMPERIAL_US:
  //       return 'Imperial (EE. UU.)';
  //     case SystemOfMeasurement.METRIC:
  //       return 'Métrico';
  //     default:
  //       throw Exception('Sistema de medida desconocido');
  //   }
  // }

  @override
  String get noDriversToDisplay => 'No hay conductores para mostrar';

  @override
  String get notSelected => 'No seleccionado';

  // @override
  // String volumeCollected() {
  //   switch (global.measurmentSystem) {
  //     case SystemOfMeasurement.IMPERIAL:
  //       return 'Galones recolectados';
  //     case SystemOfMeasurement.IMPERIAL_US:
  //       return 'Galones recolectados';
  //     case SystemOfMeasurement.METRIC:
  //       return 'Litros recolectados';
  //     default:
  //       throw Exception('Sistema de medida desconocido');
  //   }
  // }

  // @override
  // String volumeRemaining() {
  //   switch (global.measurmentSystem) {
  //     case SystemOfMeasurement.IMPERIAL:
  //       return 'Galones restantes';
  //     case SystemOfMeasurement.IMPERIAL_US:
  //       return 'Galones restantes';
  //     case SystemOfMeasurement.METRIC:
  //       return 'Litros restantes';
  //     default:
  //       throw Exception('Sistema de medida desconocido');
  //   }
  // }

  @override
  String get actualEnd => 'Fin real';

  @override
  String get actualStart => 'Inicio real';

  @override
  String get arrivedGPS => 'Llegó GPS';

  @override
  String get auditLogs => 'Registros de auditoría';

  @override
  String get back => 'Atrás';

  @override
  String get change => 'Cambio';

  // @override
  // String changeMeasureTypeActionExplanation(ChangeMeasureTypeAction action) {
  //   switch (action) {
  //     case ChangeMeasureTypeAction.clear:
  //       return 'Borrar volúmenes';
  //     case ChangeMeasureTypeAction.keep:
  //       return 'Sus entradas seguirán siendo las mismas y los volúmenes se ajustarán';
  //     case ChangeMeasureTypeAction.convert:
  //       return 'Los volúmenes seguirán siendo los mismos y las entradas se ajustarán';
  //   }
  // }

  // @override
  // String changeMeasureTypeActionNames(ChangeMeasureTypeAction action) {
  //   switch (action) {
  //     case ChangeMeasureTypeAction.clear:
  //       return 'Borrar';
  //     case ChangeMeasureTypeAction.keep:
  //       return 'Mantener entradas';
  //     case ChangeMeasureTypeAction.convert:
  //       return 'Convertir volúmenes';
  //   }
  // }

  @override
  String get completedGPS => 'GPS completado';

  @override
  String get completion => 'Finalización';

  @override
  String get container => 'Contenedor';

  @override
  String get customWasteDeduction => 'Deducción de residuos personalizada';

  @override
  String get dataHandling => 'Manipulación de datos';

  @override
  String get dateRange => 'Rango de fechas';

  @override
  String get defaultWasteDeduction => 'Deducción de residuos predeterminada';

  @override
  String get displayDefaultWasteDeduction =>
      'Mostrar deducción de residuos predeterminada';

  @override
  String get editAmountOnSite => 'Editar cantidad en el sitio';

  @override
  String get editFillRate => 'Editar tasa de llenado';

  // @override
  // String editFillRateWarning(
  //   Volume oldValue,
  //   Volume newValue,
  // ) {
  //   return 'Está cambiando la tasa de llenado de ${oldValue.toString()} a ${newValue.toString()}. Esto cambiará el nivel de llenado actual de los contenedores.';
  // }

  @override
  String get editOilPrice => 'Editar precio del aceite';

  @override
  String get editWasteDeduction => 'Editar deducción de residuos';

  @override
  String get enterNewFillLevel => 'Ingrese el nuevo nivel de llenado';

  @override
  String get enterNotes => 'Ingrese notas';

  @override
  String get enterSkipReason => 'Ingrese el motivo del salto';

  @override
  String get errorLoadingCompany => 'Error al cargar la empresa';

  @override
  String get fill => 'Llenar';

  @override
  String get fillRate => 'Tasa de llenado';

  // @override
  // String getZeroCollectionWarning(Volume totalRemainingAmount) {
  //   return 'Está a punto de completar una colección con una cantidad restante de ${totalRemainingAmount.toString()}. ¿Está seguro de que desea hacer esto?';
  // }

  @override
  String get id => 'ID';

  @override
  String get incomplete => 'Incompleto';

  @override
  String get invalid => 'Inválido';

  // @override
  // String keepCurrentFillLevel(Volume currentFillLevel) {
  //   return 'Mantener el nivel de llenado actual de ${currentFillLevel.toString()}';
  // }

  @override
  String get loading => 'Cargando ...';

  @override
  String get loadingCustomers => 'Cargando clientes ...';

  @override
  String get loadingPlaceholder => 'Cargando ...';

  @override
  String get loadingRoute => 'Cargando ruta ...';

  @override
  String get logs => 'Registros';

  // @override
  // String measurementTypesName(
  //   MeasurementTypes type, {
  //   SystemOfMeasurement? system,
  // }) {
  //   switch (type) {
  //     case MeasurementTypes.inchesFromBottom:
  //       return 'Inches from bottom';
  //     case MeasurementTypes.inchesFromTop:
  //       return 'Inches from top';

  //     case MeasurementTypes.fillLevelPercent:
  //       return 'Porcentaje de llenado';
  //     case MeasurementTypes.volumeCollected:
  //       switch (system ?? global.measurmentSystem) {
  //         case SystemOfMeasurement.IMPERIAL:
  //           return 'Galones recolectados';
  //         case SystemOfMeasurement.IMPERIAL_US:
  //           return 'Galones recolectados';
  //         case SystemOfMeasurement.METRIC:
  //           return 'Litros recolectados';
  //         default:
  //           throw Exception('Sistema de medida desconocido');
  //       }
  //     case MeasurementTypes.weightCollected:
  //       switch (system ?? global.measurmentSystem) {
  //         case SystemOfMeasurement.IMPERIAL:
  //           return 'Libras recolectadas';
  //         case SystemOfMeasurement.IMPERIAL_US:
  //           return 'Libras recolectadas';
  //         case SystemOfMeasurement.METRIC:
  //           return 'Kilogramos recogidos';
  //         default:
  //           throw Exception('Sistema de medida desconocido');
  //       }
  //   }
  // }

  @override
  String get missingEmail => 'Falta el correo electrónico';

  @override
  String get missingPassword => 'Falta la contraseña';

  @override
  String get month => 'Mes';

  @override
  String mustBeLessThan(int value) {
    return 'Debe ser menor que $value';
  }

  @override
  String navItem(NavItem item) {
    switch (item) {
      case NavItem.assets:
        return 'Activos';
      case NavItem.customers:
        return 'Clientes';
      case NavItem.reports:
        return 'Informes';
      case NavItem.trips:
        return 'Rutas';
      case NavItem.sales:
        return 'Ventas';
      case NavItem.home:
        return 'Inicio';
      case NavItem.settings:
        return 'Ajustes';
    }
  }

  @override
  String get noAuditLogsFound => 'No se encontraron registros de auditoría';

  @override
  String get noChangesToSubmitErrorMessage => 'No hay cambios para enviar';

  @override
  String get noCollectionsFound => 'No se encontraron colecciones';

  @override
  String get noLoggedInUser => 'No hay usuario conectado';

  @override
  String get oil => 'Aceite';

  @override
  String get oilPrice => 'Precio del aceite';

  @override
  String get qty => 'Cant';

  // @override
  // String recalculateCurrentFillLevel(Volume newFillLevel) {
  //   return 'Recalcular el nivel de llenado actual a ${newFillLevel.toString()}';
  // }

  @override
  String get remainingAmount => 'Cantidad restante';

  @override
  String get resettingServiceContainersWarning =>
      'Restableciendo contenedores de servicio';

  @override
  String get scheduledEnd => 'Fin programado';

  @override
  String get selectACustomer => 'Seleccione un cliente';

  @override
  String get selectDataHandling => 'Seleccione la manipulación de datos';

  @override
  String get service => 'Servicio';

  @override
  String get serviceDate => 'Fecha de servicio';

  @override
  String get serviced => 'Servido';

  @override
  String get weights => 'Pesos';

  @override
  String get gps => 'GPS';

  @override
  String get showHideColumns => 'Mostrar / Ocultar columnas';

  @override
  String get tooManyRequests => 'Demasiadas solicitudes';

  @override
  String get totals => 'Totales';

  @override
  String get useCustomWasteDeduction =>
      'Usar deducción de residuos personalizada';

  @override
  String get viewAll => 'Ver todo';

  @override
  String get vol => 'Vol';

  @override
  String get volume => 'Volumen';

  // @override
  // String volumePerMonth(Volume volume) =>
  //     '${volumeValueWithUnit(volume, abrv: true)}/mes';

  // @override
  // String volumeUnit({
  //   bool abrv = false,
  //   bool titleCase = false,
  // }) {
  //   String text;
  //   switch (global.measurmentSystem) {
  //     case SystemOfMeasurement.IMPERIAL:
  //       text = abrv ? 'gal' : 'galones';
  //     case SystemOfMeasurement.IMPERIAL_US:
  //       text = abrv ? 'gal' : 'galones';
  //     case SystemOfMeasurement.METRIC:
  //       text = abrv ? 'L' : 'litros';
  //     default:
  //       throw Exception('Sistema de medida desconocido');
  //   }

  //   return titleCase ? text.titleCase : text;
  // }

  @override
  String volumeValueWithUnit(Volume volume, {bool abrv = false}) {
    return '${volume.unitsRound()} ${volumeUnit(abrv: abrv)}';
  }

  @override
  String get warningContainersHaveChanged =>
      'Advertencia: los contenedores han cambiado';

  @override
  String get waste => 'Residuos';

  @override
  String get wasteDeduction => 'Deducción de residuos';

  // @override
  // String waypointStatus(WaypointStatus status) {
  //   return status.when(
  //     queued: () => 'En cola',
  //     serviced: () => 'Servido',
  //     skipped: () => 'Saltarse',
  //   );
  // }

  // @override
  // String weightUnit({bool abrv = false}) {
  //   switch (global.measurmentSystem) {
  //     case SystemOfMeasurement.IMPERIAL:
  //       return abrv ? 'lb' : 'libras';
  //     case SystemOfMeasurement.IMPERIAL_US:
  //       return abrv ? 'lb' : 'libras';
  //     case SystemOfMeasurement.METRIC:
  //       return abrv ? 'kg' : 'kilogramos';
  //     default:
  //       throw Exception('Sistema de medida desconocido');
  //   }
  // }

  @override
  String get weightsTempDisclosure => 'Los pesos se muestran en libras';

  @override
  String get zeroCollection => 'Colección cero';

  @override
  String get disclaimVolumeUnit => '*En ${volumeUnit()}';

  @override
  String get warning => 'Advertencia';

  @override
  String get reset => 'Reiniciar';

  @override
  String get close => 'Cerca';

  @override
  String get active => 'Activo';

  @override
  String get dragStopNumbersToReorder =>
      'Arrastre los números de parada para reordenar';

  @override
  String filterCriterion(Enum operator) {
    throw UnimplementedError();
  }

  @override
  String get parseError => 'Hubo un error al analizar el archivo.';

  @override
  String get parseResult => 'Resultado del análisis';

  @override
  String get noErrors => 'Sin errores';

  @override
  String get rowErrors => 'Errores encontrados en las siguientes filas';

  @override
  String get verifyCustomerDetails =>
      'Verifique los detalles del cliente que se muestra a continuación';

  @override
  String get importCSVFile => 'Importar archivo CSV';

  @override
  String get dataExportDate => 'Fecha de exportación de datos';

  @override
  String get totalPredictedGals => 'Total de ${volumeUnit()}';

  // @override
  // String permission(Permission role) {
  //   switch (role) {
  //     case Permission.trips:
  //       return 'Rutas';
  //     case Permission.customers:
  //       return 'Clientes';
  //     case Permission.reports:
  //       return 'Informes';
  //     case Permission.sales:
  //       return 'Ventas';
  //     case Permission.assets:
  //       return 'Activos';
  //     case Permission.settings:
  //       return 'Ajustes';
  //   }
  // }

  @override
  String get after => 'Después';

  @override
  String get before => 'Antes';

  @override
  String get clearFilter => 'Filtro claro';

  @override
  String get maximum => 'Máxima';

  @override
  String get minimum => 'Mínima';

  @override
  String get sortAscending => 'Orden ascendente';

  @override
  String get sortDescending => 'Orden descendiente';

  // @override
  // String longName(CustomerColumn column) {
  //   switch (column) {
  //     case CustomerColumn.name:
  //       return 'Nombre';
  //     case CustomerColumn.fill:
  //       return 'Llenar %';
  //     case CustomerColumn.vol:
  //       return 'Volumen (${volumeUnit(abrv: true)})';
  //     case CustomerColumn.dueDate:
  //       return 'Vencimiento';
  //     case CustomerColumn.nextService:
  //       return 'Próximo servicio';
  //     case CustomerColumn.lastService:
  //       return 'Último servicio';
  //     case CustomerColumn.customerId:
  //       return 'identificación';
  //     case CustomerColumn.address:
  //       return 'Dirección';
  //     case CustomerColumn.tags:
  //       return 'Etiquetas';
  //     case CustomerColumn.created:
  //       return 'Creada';
  //   }
  // }

  @override
  String get type => 'Tipo';

  @override
  String get noChange => 'Sin cambio';

  @override
  String displayDurationDaysHrsMins(Duration duration) {
    return duration.inDays > 0
        ? '${duration.inDays}d ${duration.inHours % 24}$abbrvHours ${duration.inMinutes % 60}$abbrvMinutes'
        : '${duration.inHours}$abbrvHours ${duration.inMinutes % 60}$abbrvMinutes';
  }

  // @override
  // String shortName(CustomerColumn column) {
  //   switch (column) {
  //     case CustomerColumn.name:
  //       return 'Nombre';
  //     case CustomerColumn.fill:
  //       return 'Llenar %';
  //     case CustomerColumn.vol:
  //       return 'Volumen ${volumeUnit(abrv: true)}';
  //     case CustomerColumn.dueDate:
  //       return 'Vencimiento';
  //     case CustomerColumn.nextService:
  //       return 'Próximo';
  //     case CustomerColumn.lastService:
  //       return 'Último';
  //     case CustomerColumn.customerId:
  //       return 'Identificación';
  //     case CustomerColumn.address:
  //       return 'Dirección';
  //     case CustomerColumn.tags:
  //       return 'Etiquetas';
  //     case CustomerColumn.created:
  //       return 'Creada';
  //   }
  // }

  @override
  String get depotAssignment => 'Asignación(es) de almacén';

  @override
  String get selectDepot => 'Seleccionar almacene';

  @override
  String get last5AvgFillRate => 'Último 5 promedio de tasa de llenado';

  @override
  String get fixedFillRate => 'Tasa de llenado fija';

  @override
  String get fixed => 'Fijo';

  @override
  String get last5Average => 'Último 5 promedio';

  @override
  String get decalNumber => 'Calcomanía #';

  @override
  String get manifestNumber => 'Número de manifiesto';

  @override
  String get manifestNumberShort => 'Manifiesto #';

  @override
  String get selectDriver => 'Seleccionar conductor';

  @override
  String get selectVehicle => 'Seleccionar vehículo';

  @override
  String get fillLevelDate => 'Fecha de nivel de llenado';

  @override
  String get sendEmailFailureMessage =>
      'No se pudo enviar el correo electrónico';

  @override
  String get userNotFoundFailureMessage => 'Usuario no encontrado';

  // @override
  // String fillRateType(FillRateTypes type) {
  //   switch (type) {
  //     case FillRateTypes.fixed:
  //       return 'Fijo';
  //     case FillRateTypes.last5Average:
  //       return 'Último 5 promedio';
  //   }
  // }

  @override
  String get skippingImportantWaypointWarning =>
      'Esta parada está marcada como importante. No te saltes a menos que sea absolutamente necesario.';

  @override
  String get finishingTripWithIncompleteImportantStopsWarning =>
      'Esta ruta contiene paradas sin servicio que están marcadas como importantes. No termine la ruta a menos que sea absolutamente necesario.';

  @override
  String get markedImportant => 'Marcada importante';

  @override
  String get notMarkedImportant => 'No marcada importante';

  // @override
  // String completedRouteEmailBody(Trip trip) {
  //   final start = trip.actualStartTimeOption.fold(
  //     () => DateTime.fromMicrosecondsSinceEpoch(0),
  //     (time) => time,
  //   );
  //   final end = trip.actualEndTimeOption.fold(
  //     () => DateTime.fromMicrosecondsSinceEpoch(0),
  //     (time) => time,
  //   );
  //   final totalCollected = trip.waypoints.fold(
  //     Volume.empty(),
  //     (previousValue, element) =>
  //         previousValue +
  //         element.servicedContainers.fold(
  //           Volume.empty(),
  //           (previousValue, element) =>
  //               previousValue + element.oilCollected + element.wasteCollected,
  //         ),
  //   );
  //   final totalStopsCount = trip.waypoints.length;
  //   final servicedStopsCount =
  //       trip.waypoints.where((w) => w.status == WaypointStatus.serviced).length;
  //   final skippedStops =
  //       trip.waypoints.where((w) => w.status == WaypointStatus.skipped);
  //   final skippedStopsDisplay = skippedStops
  //       .map((w) => '<p>  ${w.customer.name.getOrCrash} - ${w.skipReason}</p>')
  //       .toList()
  //       .join(', ');
  //   var isSameDay = start.toMonthDayYear == end.toMonthDayYear &&
  //       start.month == end.month &&
  //       start.year == end.year;
  //   var totalHours = (end.difference(start).inMinutes / 60).toStringAsFixed(1);
  //   var routeTimes =
  //       '${start.isEpoch() ? 'N/A' : start.toLocalMonthDayTime} a ${end.isEpoch() ? 'N/A' : end.toLocalMonthDayTime}';
  //   if (!start.isEpoch() && !end.isEpoch() && isSameDay) {
  //     routeTimes =
  //         '${start.toMonthAndDay}, ${start.toLocalTime} - ${end.toLocalTime}';
  //   }

  //   return '''
  //     <!DOCTYPE html>
  //     <html>
  //     <body>
  //     <h3>${trip.name.getOrCrash}</h3>
  //     <b>${volumeValueWithUnit(totalCollected, abrv: true)} recolectado</b>
  //     <p>$routeTimes/p>
  //     <p>Tiempo total: $totalHours horas</p>
  //     <p>Condutor: ${trip.driver.shortDisplayName}</p>
  //     <p>$servicedStopsCount/$totalStopsCount paradas completadas</p>
  //     </br>
  //     <p> ${skippedStops.length} saltalda:</p>
  //     $skippedStopsDisplay
  //     </br>
  //     <p>
  //       <a href="https://app.routesimplified.com/routing/build/${trip.id.getOrCrash}">Ver ruta</a>
  //     </p>
  //     </body>
  //     </html>
  //     ''';
  // }

  // @override
  // String completedRouteEmailSubject(Trip trip) =>
  //     '${trip.name.getOrCrash} completada el ${trip.actualEndTimeOption.fold(
  //       () => 'N/A',
  //       (time) => time.toLocalTimeOnMonthAndDay,
  //     )}';

  @override
  String get routeNotificationEmails =>
      'Correos electrónico de notificación de ruta';

  @override
  String get defaultFillRateType => 'Tipo de tasa de llenado predeterminado';

  @override
  String get applyFillRateTypeToAllCustomers =>
      '¿Aplicar el tipo de tasa de cumplimiento a todos los clientes actuales?';

  @override
  String get yes => 'Sí';

  @override
  String get no => 'No';

  @override
  String get selection => 'Selección';

  @override
  String get noEmailEntered => 'No se ingresó correo electrónico';

  @override
  String get copyOf => 'Copia de';

  @override
  String get copyRoute => 'Copiar ruta';

  @override
  String get makeCopy => 'Hacer una copia';

  @override
  String get updateAllCustomersButtonText =>
      'Sí, actualizar todos los clientes';

  @override
  String get updateAllCustomers => '¿Actualizar todas las clientes?';

  // @override
  // String updateAllCustomersToFillRateType(FillRateTypes type) {
  //   return '¿Actualizar todos los clientes existentes para que utilicen el tipo de tasa de cumplimiento “${fillRateType(type)}”?';
  // }

  @override
  String get noStopsAdded => 'No se agregaron paradas';

  @override
  String get ucoLocation => 'Ubicación del aceite';

  @override
  String get scheduledRoutes => 'Rutas programadas';

  @override
  String get noScheduledRoutes => 'No hay rutas programadas';

  @override
  String get setUcoLocation => 'Establecer ubicación del aceite';

  @override
  String get useAddress => 'Usar dirección';

  @override
  String get tags => 'Etiquetas';

  @override
  String get typeToAddTag => 'Escribe para agregar etiqueta';

  @override
  String get select => 'Seleccionar';

  @override
  String get noTagsFoundPressEnterToAdd =>
      'No se encontraron etiquetas, presione Entrar para agregar.';

  // @override
  // String weekDay(
  //   DayOfWeek day, {
  //   required bool abrv,
  // }) {
  //   switch (day) {
  //     case DayOfWeek.Sunday:
  //       return abrv ? 'D' : 'Dom';
  //     case DayOfWeek.Monday:
  //       return abrv ? 'L' : 'Lun';
  //     case DayOfWeek.Tuesday:
  //       return abrv ? 'M' : 'Mar';
  //     case DayOfWeek.Wednesday:
  //       return abrv ? 'X' : 'Mié';
  //     case DayOfWeek.Thursday:
  //       return abrv ? 'J' : 'Jue';
  //     case DayOfWeek.Friday:
  //       return abrv ? 'V' : 'Vie';
  //     case DayOfWeek.Saturday:
  //       return abrv ? 'S' : 'Sáb';
  //   }
  // }

  @override
  String get endTime => 'Hora de finalización';

  @override
  String get notesAdded => 'Notas agregadas';

  @override
  String get generatePDF => 'Generar PDF';

  @override
  String get previewPDF => 'Vista previa del PDF';

  @override
  String get customerNotes => 'Notas del cliente';

  // @override
  // String collectionTypes(CollectionType type) {
  //   switch (type) {
  //     case CollectionType.CONTAINERS_ONLY:
  //       return 'Recogida de contenedores';
  //     case CollectionType.SIMPLE_ONLY:
  //       return 'Colección simple (volumen)';
  //     case CollectionType.SIMPLE_WEIGHT:
  //       return 'Colección simple (peso)';
  //     default:
  //       throw Error();
  //   }
  // }

  @override
  String get collectionType => 'Tipo de colección';

  @override
  String get editServiceNotificationRecipients =>
      'Editar destinatarios de notificación de servicio';

  @override
  String get serviceNotification => 'Notificación de servicio';

  // @override
  // String getServiceNotificationsText(Product product) =>
  //     'Se enviarán notificaciones por correo electrónico a los siguientes destinatarios cuando se complete un servicio de ${products(product)} para este cliente.';

  @override
  String get noEmailsAdded => 'No se agregaron correos electrónicos';

  @override
  String get recipients => 'Destinatarios';

  @override
  String get duplicateEmail => 'Correo electrónico duplicado';

  // @override
  // String serviceNotificationEmailSubject(WaypointModel waypoint) =>
  //     'Servicio aceite completado en ${waypoint.actualCompletionTimeOption.fold(
  //       () => 'N/A',
  //       (time) => time.toLocalTimeOnMonthAndDay,
  //     )}';

  // @override
  // String serviceNotificationEmailBody(WaypointModel waypoint) {
  //   final time = waypoint.actualCompletionTimeOption.fold(
  //     () => 'N/A',
  //     (time) => time.toLocalTimeOnMonthAndDay,
  //   );
  //   final customer = waypoint.customer;
  //   final driver = waypoint.driver.shortDisplayName;
  //   final decal = waypoint.vehicleOption.fold(
  //     () => '',
  //     (vehicle) => '<p>Calcomanía: ${vehicle.decalNumber}</p>',
  //   );
  //   final volume = switch (waypoint.product) {
  //     Product.uco => waypoint.totalOilAndWasteCollected,
  //     Product.grease => waypoint.customer.grease.totalCapacity,
  //   };

  //   return '''
  //     <!DOCTYPE html>
  //     <html>
  //     <body>
  //     <h3>${customer.name}</h3>
  //     <p>Recogido en: $time</p>
  //     <p>Total recaudado: ${volumeValueWithUnit(volume, abrv: true)}</p>
  //     <p>Conductor: $driver</p>
  //     $decal
  //     </br>
  //     ${global.companyName}
  //     </body>
  //     </html>
  //     ''';
  // }

  @override
  String get completeWaypointConfirmation =>
      '¿Está seguro de que desea completar esta parada?';

  @override
  String get enterEmailToAdd => 'Ingrese el email para agregar';

  @override
  String get outOfServiceWindow => 'Fuera de ventana de servicio.';

  @override
  String get serviceWindow => 'ventana de servicio';

  @override
  String get serviceWindowMustBeAtleastFifteenMinutesLong =>
      'La duración del período de servicio debe ser de al menos quince minutos.';

  @override
  String get clear => 'Claro';

  @override
  String get serviceWindows => 'Ventanas de servicio';

  @override
  String get noContainersAssigned => 'No hay contenedores asignados';

  @override
  String get summary => 'Resumen';

  @override
  String get last => 'Última';

  @override
  String get sales => 'Ventas';

  @override
  String get buyer => 'Comprador';

  @override
  String get pricePerPound => 'Precio/lb';

  @override
  String get newSale => 'Nueva venta';

  @override
  String get noSalesToDisplay => 'No hay ventas para mostrar';

  @override
  String get buyerIsRequired => 'Se requiere comprador';

  @override
  String get totalPrice => 'Precio total';

  @override
  String get editSale => 'Editar venta';

  @override
  String get alwaysMarkImportant => 'Marcar siempre como importante';

  @override
  String get alwaysMarkedImportant => 'Siempre marcada importante';

  @override
  String get waypointNotes => 'Notas de waypoints';

  @override
  String get saleId => 'ID de venta';

  @override
  String get contractDate => 'Fecha del contrato';

  @override
  String get poundsGreaterThanZero => 'Las libras deben ser mayores que cero';

  @override
  String get importContainerAssignments =>
      'Importar asignaciones de contenedores';

  @override
  String get activity => 'Actividad';

  @override
  String get clickAddToCreateNoteForWaypoint =>
      'Haga clic en agregar para crear una nota para este waypoint';

  @override
  String get reason => 'Razón';

  @override
  String get unskipConfirmation =>
      '¿Estás segura de que quieres evitar esta parada?';

  @override
  String get requestPasswordReset => 'Solicitar restablecimiento de contraseña';

  @override
  String get requestResetEmail => 'Solicitar restablecimiento de correo';

  @override
  String get fillLevel => 'Cantidad en el sitio';

  @override
  String get duplicateId => 'ID duplicado';

  @override
  String get newFillLevel => 'Nueva cantidad en el sitio';

  @override
  String get addBuyer => 'Agregar comprador';

  @override
  String get editBuyer => 'Editar comprador';

  @override
  String get buyers => 'Compradores';

  @override
  String get showBuyers => 'Mostrar compradores';

  @override
  String get noBuyersToDisplay => 'No hay compradores para mostrar';

  @override
  String get total => 'Total';

  @override
  String get company => 'Compañía';

  @override
  String get simpleCollection => 'Colección simple';

  @override
  String get comments => 'Comentarios';

  @override
  String get noRecentActivity => 'No hay actividad reciente';

  // @override
  // String loadType(LoadType type) {
  //   switch (type) {
  //     case LoadType.CONTAINER:
  //       return 'Envase';
  //     case LoadType.RAIL:
  //       return 'Carril';
  //     case LoadType.TRUCK:
  //       return 'Camión';
  //     default:
  //       return 'Error';
  //   }
  // }

  @override
  String get inProgressRoutes {
    return 'Rutas en progreso';
  }

  @override
  String get totalOilCollected {
    return 'Aceite total recogido';
  }

  @override
  String get noInprogressRoutes => 'No hay rutas en progreso';

  @override
  String get totalCollected => 'Total recolectado';

  @override
  String get loads => 'Cargas';

  @override
  String get shipDate => 'Fecha de envío';

  @override
  String get addLoad => 'Agregar carga';

  @override
  String get sale => 'Venta';

  @override
  String get weight => 'Peso';

  @override
  String get netWeight => 'Peso neto';

  @override
  String get mode => 'Modo';

  @override
  String get remaining => 'Restante';

  @override
  String get continueWithoutLocation =>
      'La ubicación está deshabilitada para Ruta Simplificada. ¿Continuar sin ubicación?';

  @override
  String get enableLocationServices =>
      'La ubicación está deshabilitada para Ruta Simplificada. Asegúrese de que tanto su navegador como su dispositivo permitan que Route Simplified verifique su ubicación.';

  @override
  String get locationDisabled => 'Ubicación deshabilitada';

  @override
  String get locationRequired => 'Ubicación requerida';

  @override
  String get driverLocationRequired => 'Ubicación del conductor requerida';

  // @override
  // String serviceStatus(ServiceStatuses status) {
  //   switch (status) {
  //     case ServiceStatuses.active:
  //       return 'Activa';
  //     case ServiceStatuses.inactive:
  //       return 'Inactiva';
  //   }
  // }

  @override
  String get payment => 'Pago';

  @override
  String get height => 'Altura';

  @override
  String get beforePumping => 'Antes de bombear';

  @override
  String get afterPumping => 'Después del bombeo';

  @override
  String get inchesFromTop => 'pulgadas desde arriba';

  @override
  String get inchesFromBottom => 'pulgadas desde abajo';

  @override
  String get completePreviousStopsFirst =>
      'No se puede dar servicio a esta parada antes de completar todas las paradas anteriores.';

  @override
  String get poNumber => 'PO #';

  @override
  String get soNumber => 'SO #';

  @override
  String get cents => 'centavos';

  @override
  String get addNewBuyer => 'Añadir nuevo comprador';

  @override
  String get noLoadsAddedYet => 'Aún no se han agregado cargas';

  @override
  String get editLoad => 'Editar carga';

  @override
  String get flags => 'Banderas';

  // @override
  // String serviceFlag(ServiceFlags flag) {
  //   switch (flag) {
  //     case ServiceFlags.stolen:
  //       return 'Robado';
  //     case ServiceFlags.needsReview:
  //       return 'Necesita revisión';
  //   }
  // }

  @override
  String get deactivateUserConfirmation =>
      '¿Estás seguro de que quieres desactivar este usuario?';

  @override
  String get resendInviteConfirmation => 'Reenviar invitación por correo';

  @override
  String get inches => 'Pulgadas';

  @override
  String get enterHeight => 'Introduzca la altura';
  @override
  String get all => 'Toda';

  @override
  String get assignedRecords => 'Registros asignados';

  @override
  String get generateAssignments => 'Generar asignaciones';

  @override
  String get load => 'Carga';

  @override
  String get loadingAssignments => 'Cargando tareas';

  @override
  String get removeAll => 'Eliminar todo';

  @override
  String get totalAssignments => 'Asignaciones totales';

  @override
  String get assignedWeight => 'Peso asignado';

  @override
  String records({required bool upperCase}) =>
      upperCase ? 'Registros' : 'registros';

  @override
  String get contractDetails => 'Detalles del contrato';

  @override
  String get shipmentDetails => 'Detalles del envío';

  @override
  String get sellerName => 'Nombre del vendedor';

  @override
  String get collectionDate => 'Fecha de colección';

  @override
  String get noRecordsAssignedPrompt =>
      'No hay registros asignados. Para asignar registros, seleccione la fecha más temprana a partir de la cual desea que se seleccionen los registros (los registros anteriores a esta fecha no se asignarán).';

  // @override
  // String saleStatus(OilSaleStatus status) {
  //   switch (status) {
  //     case OilSaleStatus.active:
  //       return 'Activo';
  //     case OilSaleStatus.completed:
  //       return 'Completado';
  //     case OilSaleStatus.cancelled:
  //       return 'Cancelado';
  //   }
  // }

  @override
  String get unavailable => 'Indisponible';

  @override
  String get isNotAvailableForThisContainer =>
      'no está disponible para este contenedor';
  @override
  String get deleteServicedContainerConfirmation =>
      '¿Está seguro de que desea eliminar los datos de recopilación de este contenedor?\n\nEsto no se puede deshacer.';
  @override
  String get deleteCollectionData => 'Eliminar datos de colección';

  @override
  String get deleteSimpleCollectionConfirmation =>
      '¿Está seguro de que desea eliminar los datos de recopilación de esta parada?\n\nEsto no se puede deshacer.';
  @override
  String get stopWasSkipped => 'Esta parada fue saltada';

  // @override
  // String doubleErrors(VDoubleError error) {
  //   return error.when(
  //     notADouble: (_) => 'No un número',
  //     tooHigh: (_) => 'Valor demasiado alto',
  //     tooLow: (_) => 'Valor demasiado bajo',
  //   );
  // }

  @override
  String get enterContainerHeight =>
      'Por favor ingrese la altura del contenedor';

  // @override
  // String measurementErrors(MeasurementErrors error) {
  //   switch (error) {
  //     case MeasurementErrors.totalCollectedIsNegative:
  //       return 'El total recaudado no puede ser negativo.';
  //     case MeasurementErrors.residualIsNegative:
  //       return 'Restante no puede ser negativa';
  //     case MeasurementErrors.prePumpIsNegative:
  //       return 'La prebomba no puede ser negativa';
  //     case MeasurementErrors.postPumpIsNegative:
  //       return 'La postbomba no puede ser negativa.';

  //     case MeasurementErrors.prePumpIsHigherThanContainerHeight:
  //       return 'La prebomba no puede ser más alta que la altura del contenedor.';
  //     case MeasurementErrors.postPumpIsHigherThanContainerHeight:
  //       return 'La bomba posterior no puede ser más alta que la altura del contenedor.';
  //     case MeasurementErrors.postPumpHigherThanPrePump:
  //       return 'La bomba posterior no puede ser más alta que la bomba previa.';
  //     case MeasurementErrors.prePumpHigherThanPostPump:
  //       return 'La bomba previa no puede ser más alta que la bomba posterior.';
  //     case MeasurementErrors
  //           .sumOfCollectedAndRemainingHigherThan10TimesContainerCapacity:
  //       return 'La suma de lo recolectado y lo restante no puede ser superior a 10 veces la capacidad del contenedor.';
  //     case MeasurementErrors.prePumpHigherThan1000:
  //       return 'La bomba previa no puede ser superior a 1000';
  //     case MeasurementErrors.prePumpSmallerThanMinus9TimesContainerHeight:
  //       return 'La bomba previa no puede ser menor que -9 veces la altura del contenedor.';
  //     case MeasurementErrors.prePumpHigherThan10TimesContainerHeight:
  //       return 'La bomba previa no puede ser superior a 10 veces la altura del contenedor.';
  //   }
  // }

  @override
  String get deleteCollectionsBeforeSkip =>
      'Por favor elimine las colecciones antes de saltar.';

  @override
  String get addCollectionsBeforeCompleting =>
      'Los datos de la colección deben agregarse antes de completar.';

  @override
  String get completeStopUnavailable => 'Completar parada no disponible';

  @override
  String get skipUnavailable => 'Saltar parada no disponible';

  @override
  String get canDeleteCustomerMessage =>
      'Este cliente puede ser eliminado porque no tiene historial de servicios.';

  @override
  String get deleteCustomer => 'Eliminar cliente';

  @override
  String get deleteCustomerConfirmation =>
      '¿Estás seguro de que quieres eliminar a este cliente?\n\nEsto no se puede deshacer.';

  @override
  String get addComment => 'Agregar comentario';

  @override
  String get addImage => 'Añadir imagen';

  @override
  String get setFlags => 'Establecer banderas';

  @override
  String get recordAssigned => 'Registro asignado';

  @override
  String get cannotEditCollectionDataAssignedToLoad =>
      'Los datos de recogida de esta parada no se pueden editar porque están asignados a una carga.';

  @override
  String get remainingOnSite => 'Restante en el sitio';

  @override
  String get noCollectionData => 'No hay datos de colección';

  @override
  String get noRouteComments =>
      'No se han agregado comentarios a ninguna parada de esta ruta.';

  @override
  String get noRouteCommentsTitle => 'Sin comentarios de ruta';

  @override
  String get routeComments => 'Comentarios de ruta';

  @override
  String get download => 'Descargar';

  @override
  String get noServiceWindows => 'Sin ventanas de servicio';

  @override
  String get collectionId => 'ID de colección';

  @override
  String get city => 'Ciudad';

  @override
  String get state => 'Estado';

  @override
  String get stop => 'Parada';

  @override
  String get locked => 'Bloqueada';

  @override
  String get star => 'Estrella';

  @override
  String get starred => 'Sembrado de estrellas';

  @override
  String get clickToChangeStartAndEndPoint =>
      'Haga clic para cambiar el punto de inicio y fin';

  @override
  String get assigned => 'Asignado';

  @override
  String get activeRoutes => 'Rutas activas';

  @override
  String get noActiveRoutes => 'No hay rutas activas';

  @override
  String get poundsAbbrv => 'lb';

  @override
  String get daysSinceReset => 'Días desde el reinicio';

  @override
  String get lastResetDate => 'Fecha del último reinicio';

  @override
  String get lastManualEdit => 'Última edición manual';

  @override
  String get entered => 'entró';

  @override
  String get calculatedFillLevel => 'Nivel de llenado calculado';

  @override
  String get manuallyEditFillLevel => 'Editar manualmente el nivel de relleno';

  @override
  String get serviceInterval => 'Intervalo de servicio';

  // @override
  // String dueDateTypes(DueDateTypes type) {
  //   return switch (type) {
  //     DueDateTypes.fillRate => fillRate,
  //     DueDateTypes.serviceInterval => serviceInterval,
  //   };
  // }

  // @override
  // String dueDateTypesDescription(DueDateTypes type) {
  //   return switch (type) {
  //     DueDateTypes.fillRate =>
  //       'Calcular la fecha de vencimiento por tasa de cumplimiento y nivel de cumplimiento',
  //     DueDateTypes.serviceInterval =>
  //       'Calcular la fecha de vencimiento por intervalo de servicio',
  //   };
  // }

  @override
  String get dueDateType => 'Tipo de fecha de vencimiento';

  @override
  String get dueDate => 'Fecha de vencimiento';

  @override
  String get available => 'Disponible';

  @override
  String get needed => 'Necesario';

  @override
  String get created => 'Creado';

  // @override
  // String products(Product product) {
  //   return switch (product) {
  //     Product.uco => 'Aceite',
  //     Product.grease => 'Trap',
  //   };
  // }

  @override
  String get location => 'Ubicación';

  @override
  String get due => 'pendiente';

  @override
  String get noHeightErrorMessage =>
      'Ingrese la altura del contenedor para usar el tipo de medida en pulgadas';

  @override
  String get allGreaseTrapsPumped => 'Todas las trampas de grasa bombeadas';

  @override
  String get greaseTrapsNotPumped => 'Trampas de grasa no bombeadas';

  @override
  String get pleaseConfirmService => 'Por favor confirme el servicio';

  @override
  String get removeServiceConfirmationToSkip =>
      'Elimina la confirmación del servicio para omitir';

  @override
  String get beta => 'beta';

  @override
  String get noOnsiteCapacity => 'Sin capacidad en el sitio';

  // @override
  // String percentFullDisplay(CustomerModel customer) {
  //   return customer.uco.percentFull.fold(
  //     () => notAvailableSymbol,
  //     (e) => '${e.value.getOrCrash}$percentSymbol',
  //   );
  // }

  // @override
  // String userRoleName(Roles role) {
  //   return switch (role) {
  //     Roles.admin => 'Administrador',
  //     Roles.owner => 'Propietario',
  //     Roles.user => 'Usuario',
  //   };
  // }

  @override
  String get takePhoto => 'Tomar foto';

  @override
  String get notAvailableOnDesktop => 'No disponible en escritorio';

  @override
  String get found => 'Encontrado';

  @override
  String get allDepots => 'Todos los depósitos';

  @override
  String get depotMustBeCreatedToAddCustomer =>
      'Se debe crear el depósito antes de agregar clientes.';

  @override
  String get updateAssets => 'Actualizar activos';

  @override
  String get lastLogin => 'Último inicio de sesión';

  @override
  String get admin => 'Admin';

  @override
  String get noCompaniesToDisplay => 'No hay empresas para mostrar';

  @override
  String get billing => 'Facturación';

  @override
  String get selectAtLeastOneDepot => 'Seleccione al menos un almacén';

  @override
  String get confirmNextStopRemoval =>
      'Esta es la parada actual y es posible que el conductor ya esté en camino. Es posible que deba comunicarse con el conductor.\n\n¿Estás seguro de que quieres continuar?';

  @override
  String get areYouSure => 'Estas segura';

  @override
  String get removeStopUnavailable => 'Quitar parada no disponible';

  @override
  String get cannotRemoveArrivedWaypoint =>
      'Esta parada no se puede quitar porque el conductor ya llegó.';

  @override
  String get reorder => 'Reordenar';

  @override
  String get confirmNextStopReorder =>
      'Esto afecta el orden de la parada actual y es posible que el conductor ya esté en ruta.\n\n¿Quieres continuar?';

  @override
  String get reorderStopUnavailable => 'Parada de reorden no disponible';

  @override
  String get canNotReorderArrivedWaypoint =>
      'Esta reordenación afecta la parada actual que no se puede reordenar porque el conductor ya llegó.';

  @override
  String get goToRoute => 'Ir a la ruta';

  @override
  String get added => 'agregada';

  @override
  String get arrived => 'llegó';

  @override
  String get flag => 'bandera';

  @override
  String get removed => 'remota';

  @override
  String get time => 'Tiempo';

  @override
  String get customLastServiceDate => 'Fecha de último servicio personalizada';

  @override
  String get addCollection => 'Agregar colección';

  @override
  String get editCollection => 'Editar colección';

  @override
  String get enteredBy => 'Entrado por';

  @override
  String get filter => 'Filtrar';

  @override
  String get selectAll => 'Seleccionar todo';

  // @override
  // String needForScheduling(DueAndNextCombo combo, {required bool abrv}) {
  //   return switch (combo) {
  //     DueAndNextCombo.scheduled => 'Programada',
  //     DueAndNextCombo.overdue => 'Programada',
  //     DueAndNextCombo.dueIn3 => 'Con vencimiento en 3 días',
  //     DueAndNextCombo.dueIn7 => 'Con vencimiento en 7 días',
  //     DueAndNextCombo.dueAfter7 => 'Vencimiento después de 7 días',
  //     DueAndNextCombo.noDueDate => 'Sin fecha de vencimiento',
  //     DueAndNextCombo.inactive => 'Inactiva',
  //   };
  // }

  @override
  String get canNotBeChangedWhenCloning =>
      'No se puede cambiar cuando se clona';

  @override
  String get noOtherOptionsAvailable => 'No hay otras opciones disponibles';

  // @override
  // String smartDateRanges(SmartDates smartDate) {
  //   return switch (smartDate) {
  //     SmartDates.last30Days => 'Últimos 30 días',
  //     SmartDates.today => 'Hoy',
  //     SmartDates.yesterday => 'Ayer',
  //     SmartDates.lastMonth => 'Mes pasado',
  //     SmartDates.lastQuarter => 'Último trimestre',
  //   };
  // }

  @override
  String get totalCapacity => 'Capacidad total';

  @override
  String get addCompany => 'Agregar empresa';

  @override
  String get indexPercent => 'Indice %';

  @override
  String get editIndexPercent => 'Editar índice %';

  @override
  String get arrivedOn => 'Llegó en';

  @override
  String get refresh => 'Actualizar';

  @override
  String get show => 'Espectáculo';

  @override
  String get filters => 'Filtros';

  @override
  String get clearAllFilters => 'Limpiar todos los filtros';

  @override
  String get noFiltersApplied => 'No se aplicaron filtros';

  @override
  String get documents => 'Documentos';

  @override
  String get noDocumentsFound => 'No se encontraron documentos';

  @override
  String get uploadDocument => 'Subir documento';

  @override
  String get title => 'Título';

  @override
  String get enterTitle => 'Introduzca el título';

  @override
  String get view => 'Ver';

  @override
  String get deleteDocumentConfirmation =>
      '¿Eliminar permanentemente este documento del cliente?';

  @override
  String get renameDocument => 'Renombrar documento';

  @override
  String get rename => 'Renombrar';

  @override
  String maxPdfMbError(int maxMb) =>
      'El archivo no puede ser mayor de $maxMb MB';

  @override
  String get fileMustBePdf => 'El archivo debe ser archivo PDF';

  @override
  String get browseFiles => 'Examinar archivos';

  @override
  String get addDocumentText =>
      'Ingrese el título del documento y seleccione el archivo para cargar.';

  @override
  String selectPdfFile(int size) =>
      'Seleccione un archivo PDF que no sea mayor de $size MB';

  @override
  String get userPreviligesIncludeAccessToOnlyThisDepot =>
      'Sus privilegios de usuario incluyen el acceso únicamente a este depósito.';

  @override
  String get docs => 'Docs';

  @override
  String get hasDocumnets => 'Tiene documentos';

  @override
  String get noDocumnets => 'Sin documentos';

  @override
  String get permissions => 'Permisos';

  @override
  String percentFullDisplay(Customer customer) {
    // TODO: implement percentFullDisplay
    throw UnimplementedError();
  }

  @override
  String volumeCollected() {
    // TODO: implement volumeCollected
    throw UnimplementedError();
  }

  @override
  String volumeRemaining() {
    // TODO: implement volumeRemaining
    throw UnimplementedError();
  }

  @override
  String volumeUnit({bool abrv = false, bool titleCase = false}) {
    // TODO: implement volumeUnit
    throw UnimplementedError();
  }

  @override
  String weightUnit({bool abrv = false}) {
    // TODO: implement weightUnit
    throw UnimplementedError();
  }
}
