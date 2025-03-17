import 'package:firebase_ui_localizations/firebase_ui_localizations.dart';
import 'package:nobot/core/models/customer/customer.dart';

import '../../models/product/product.dart';
import '../../models/tasks/service_grease/service_grease.dart';
import '../../models/volume/volume.dart';
import '../../scaffold/nav/nav.dart';
import '../../smart_dates/smart_dates.dart';
import '../localization_labels.dart';

class EnLocalizations extends DefaultLocalizations
    implements LocalizationLabels {
  const EnLocalizations();

  @override
  String get homeTitle => 'Home';
  @override
  String get appName => 'Route Simplified';

  @override
  String get cacheFailureMessage =>
      'An unexpected error encountered while attempting to retrieve data from cache';

  @override
  String get defaultFailureMessage => 'An unexpected error occurred';

  @override
  String get grpcFailureMessage => 'The server encountered an unexpected error';

  @override
  String get notFoundMessage => 'Wrong page. Please go back';

  @override
  String get notFoundTitle => 'Not found';

  @override
  String get userDetailsPageTitle => 'User details';

  @override
  String get usersPageTitle => 'Users';

  @override
  String get logoutTitle => 'Logout';

  @override
  String get settings => 'Settings';

  @override
  String get dateFormat => 'M/d/yy';

  @override
  String get shortMonthFormat => 'MMM d, yyyy';

  @override
  String get timeFormat =>
      'h:mm a'.replaceAll('AM', 'am').replaceAll('PM', 'pm');

  @override
  String get routingTitle => 'Routing';

  @override
  String get customersTitle => 'Customers';

  @override
  String get inventoryTitle => 'Inventory';

  @override
  String get reportsTitle => 'Reports';

  @override
  String get companySettingsTitle => 'Company settings';

  @override
  String get vehiclesTitle => 'Vehicles';

  @override
  String get containersTitle => 'Containers';

  @override
  String get generalSettingsTitle => 'General';

  @override
  String get driverRouteSettings => 'Driver/Route';

  @override
  String get locale => 'en';

  @override
  String get now => 'Now';

  @override
  String get today => 'Today';

  @override
  String get email => 'Email';

  @override
  String get hireDate => 'Hire date';

  @override
  String get roles => 'Roles';

  @override
  String get id => 'ID';

  @override
  String get nameLabel => 'Name';

  @override
  String get edit => 'Edit';

  @override
  String get newUser => 'New user';

  @override
  String get addUser => 'Add user';

  @override
  String get editUser => 'Edit user';

  @override
  String get cancel => 'Cancel';

  @override
  String get add => 'Add';

  @override
  String get delete => 'Delete';

  @override
  String get update => 'Update';

  @override
  String get nextDate => 'Next scheduled date';

  @override
  String get nextRoute => 'Next scheduled route';

  @override
  String get addVehicle => 'Add vehicle';

  @override
  String get createVehicle => 'Create new vehicle';

  @override
  String get noVehiclesToDisplay => 'No vehicles to display';

  @override
  String get noUsers => 'No users to display';

  @override
  String get missingUserId => 'User ID is missing';

  @override
  String get customId => 'Custom ID';

  @override
  String get billingId => 'Billing ID';

  @override
  String get entryCode => 'Entry code';

  @override
  String get locationNotes => 'Location notes';

  @override
  String get routeNotes => 'Route notes';

  @override
  String get firstName => 'First name';

  @override
  String get lastName => 'Last name';

  @override
  String get useAddressAsAlternateLocation => 'Use as alternate location';

  @override
  String get phoneNumber => 'Phone number';

  @override
  String get depots => 'Depots';

  @override
  String get vehicles => 'Vehicles';

  @override
  String get submit => 'Submit';

  @override
  String get uploadCompanyLogoText => 'Upload your company logo';

  @override
  String get userInfo => 'User info';

  @override
  String get atLeastOneRole => 'At least one Role must be selected';

  @override
  String get invalidEmailFormat => 'Invalid email format';

  @override
  String get noUserDetails => 'No user details to display';

  @override
  String get noDepotsToDisplay => 'No depots to display';

  @override
  String get noCustomersToDisplay => 'No customers to display';

  @override
  String get noDriversToDisplay => 'No drivers to display';

  @override
  String get selectDepots => 'Select depots';

  @override
  String get selectRoles => 'Select roles';

  @override
  String get selectVehicles => 'Select vehicles';

  @override
  String get deactivateUser => 'Deactivate user';

  @override
  String get vehicleNameFieldLabel => 'Vehicle name';

  @override
  @override
  String get drivers => 'Drivers';

  @override
  String get selectDrivers => 'Select drivers';

  @override
  String get editVehicle => 'Edit vehicle';

  @override
  String get noCompanyName => 'No company name';

  @override
  String get noEmail => 'No email';

  @override
  String get noPhoneNumber => 'No phone number';

  @override
  String get companyDetails => 'Company details';

  @override
  String get customers => 'Customers';

  @override
  String get address => 'Address';

  @override
  String get status => 'Status';

  @override
  String get lastServiceDate => 'Last service date';

  @override
  String get nextServiceDate => 'Next service date';

  @override
  String get archiveSelectedCustomersConfirmation =>
      'Are you sure you want to archive the selected customer(s)? \n\nThis operation can be undone upon request';

  @override
  String get archiveCustomer => 'Archive customer';

  @override
  String get archiveSelectedCustomers => 'Archive selected customers';

  @override
  String get archiveSelected => 'Archive selected';

  @override
  String getTextToVerify(String text) => 'Enter \'$text\' to confirm';

  @override
  String get addCustomerTitle => 'Add customer';

  @override
  String get addCustomerButtonText => 'Add customer';

  @override
  String get customerNameHintText => 'Customer name';

  @override
  String get inactiveSwitchText => 'Inactive';

  @override
  String get activeSwitchText => 'Active';

  @override
  String get validAddressIsRequired => 'Valid addess is required';

  @override
  String get atLeast1DepotIsRequired => 'At least 1 depot is required';

  @override
  String get deleteVehicle => 'Delete vehicle';

  @override
  String getDeleteConfirmation(String name) =>
      'Are you sure you want to delete $name? \n\nThis cannot be undone';

  @override
  String getDeactivateConfirmation(String name) =>
      'Are you sure you want to deactivate $name?';

  @override
  String getArchiveConfirmation(String name) =>
      'Are you sure you want to archive $name? \n\nThis operation can be undone upon request';

  @override
  String get create => 'Create';

  @override
  String get reiterFooter => 'Made by Reiter Software';

  @override
  String get companySuccessfullyUpdated => 'Company successfully updated';

  @override
  String get customerSuccessfullyCreated => 'Customer successfully created';

  @override
  String get customerSuccessfullyUpdated => 'Customer successfully updated';

  @override
  String get userSuccessfullyCreated => 'User successfully created';

  @override
  String get userSuccessfullyUpdated => 'User successfully updated';

  @override
  String get vehicleSuccessfullyCreated => 'Vehicle successfully created';

  @override
  String get vehicleSuccessfullyUpdated => 'Vehicle successfully updated';

  @override
  String get editCompany => 'Edit company';

  @override
  String get addDepot => 'Add depot';

  @override
  String get deleteDepot => 'Delete depot';

  @override
  @override
  String get createDepot => 'Create depot';

  @override
  String get editDepot => 'Edit depot';

  @override
  String get depotSuccessfullyCreated => 'Depot successfully created';

  @override
  String get depotSuccessfullyUpdated => 'Depot successfully updated';

  @override
  String get newRoute => 'New route';

  @override
  String get general => 'General';

  @override
  String get addStops => 'Add stops';

  @override
  String get review => 'Review';

  @override
  String requiredField(String fieldName) => '$fieldName is required';

  @override
  String get vehicle => 'Vehicle';

  @override
  String get depot => 'Depot';

  @override
  String get driver => 'Driver';

  @override
  String get user => 'User';

  @override
  String get users => 'Users';

  @override
  String get editCustomer => 'Edit customer';

  @override
  String get customerId => 'Customer ID';

  @override
  String get archiveLabel => 'Archive';

  @override
  String get missingRequiredFields => 'Please fill all the required fields';

  @override
  String get noRoutesToDisplay => 'No routes to display';

  @override
  String get date => 'Date';

  @override
  String get startTime => 'Start time';

  @override
  String get schedule => 'Schedule';

  @override
  String get routeSuccessfullyScheduled => 'Route successfully scheduled';

  @override
  String get stops => 'Stops';

  @override
  String get atLeastOneStopIsRequired => 'At least one stop is required';

  @override
  String get end => 'End';

  @override
  String get start => 'Start';

  @override
  String get routesTitle => 'Routes';

  @override
  String get endLabel => 'End: ';

  @override
  String get startLabel => 'Start: ';

  @override
  String get noDriverAssigned => 'Not assigned';

  @override
  String get invalidRouteStatus => 'Invalid route status';

  @override
  String tripStatus(TripStatus status) {
    switch (status) {
      case TripStatus.draft:
        return 'Draft';
      case TripStatus.scheduled:
        return 'Scheduled';
      case TripStatus.inprogress:
        return 'In Progress';
      case TripStatus.completed:
        return 'Completed';
    }
  }

  // @override
  // String skipReasonText(SkipReason reason) {
  //   switch (reason) {
  //     case SkipReason.exceededLegalHours:
  //       return 'Exceeded legal hours';
  //     case SkipReason.truckFull:
  //       return 'Truck full';
  //     case SkipReason.other:
  //       return 'Other';
  //   }
  // }

  // @override
  // String measurementTypesName(
  //   MeasurementTypes type, {
  //   SystemOfMeasurement? system,
  // }) {
  //   var measureSystem = system ?? global.measurmentSystem;
  //   switch (type) {
  //     case MeasurementTypes.volumeCollected:
  //       return measureSystem != SystemOfMeasurement.METRIC
  //           ? 'Gallons collected'
  //           : 'Litres collected';
  //     case MeasurementTypes.weightCollected:
  //       return measureSystem != SystemOfMeasurement.METRIC
  //           ? 'Pounds collected'
  //           : 'Kilos collected';
  //     case MeasurementTypes.fillLevelPercent:
  //       return 'Percent full';
  //     case MeasurementTypes.inchesFromBottom:
  //       return 'Inches from bottom';
  //     case MeasurementTypes.inchesFromTop:
  //       return 'Inches from top';
  //   }
  // }

  // @override
  // String measurementSystemText(SystemOfMeasurement system) {
  //   switch (system) {
  //     case SystemOfMeasurement.IMPERIAL:
  //       return 'Imperial(UK)';
  //     case SystemOfMeasurement.IMPERIAL_US:
  //       return 'Imperial(US)';
  //     case SystemOfMeasurement.METRIC:
  //       return 'Metric';
  //     default:
  //       throw Exception('Invalid system of measurement');
  //   }
  // }

  @override
  String get routefilter => 'Route filter';

  @override
  String get editRoute => 'Edit route';

  @override
  String get addMoreStops => 'Add more stops';

  @override
  String get noStopsAddedYet => 'No stops added yet';

  @override
  String get startDateTime => 'Start date/time';

  @override
  String get endDateTime => 'End date/time';

  @override
  String get startRoute => 'Start route';

  @override
  String get continueRoute => 'Continue route';

  @override
  String get finishRoute => 'Finish route';

  @override
  String get exitRoute => 'Exit route';

  @override
  String get noCompanyLogo => 'No company logo';

  @override
  String get invalidPhoneNumberFormat => 'Invalid phone number format';

  @override
  String get lastService => 'Last service';

  @override
  String get nextService => 'Next service';

  @override
  String get complete => 'Complete';

  @override
  String get next => 'Next';

  @override
  String get collectedAmount => 'Collected amount';

  @override
  String get collectionEntry => 'Collection entry';

  @override
  String get collectionSaved => 'Collection saved';

  @override
  String get collectionUpdated => 'Collection updated';

  @override
  String get invalidIntegerFormat => 'Must be a number';

  @override
  String mustBeGreaterThan(int value) => 'Must be greater than $value';

  @override
  String mustBeLessThan(int value) => 'Must be less than $value';

  @override
  String get skip => 'Skip';

  @override
  String get service => 'Service';

  @override
  String get completePreviousStops => 'Complete previous stops first';

  @override
  String get search => 'Search';

  @override
  String get notScheduled => 'Not scheduled';

  @override
  String get neverServiced => 'Never serviced';

  @override
  String get stopNumber => '#';

  @override
  String get scheduledArrivalTime => 'Scheduled arrival';

  @override
  String get defaultServiceTime => 'Collection service time';

  @override
  String getMinutes(int minutes, {bool showValue = false}) {
    if (minutes == 1) {
      return showValue ? '$minutes minute' : 'minute';
    } else {
      return showValue ? '$minutes minutes' : 'minutes';
    }
  }

  @override
  String get serviceHistory => 'Service history';

  @override
  String get noServiceHistory => 'No service history';

  @override
  String get noLocationNotes => 'No location notes';

  @override
  String get noEntry => 'No entry';

  @override
  String get serviceHistoryTitle => 'Service history';

  @override
  String get estimatedCompletion => 'Completion time';

  @override
  String get estimatedSuffix => '(estimated)';

  @override
  String get noContainersToDisplay => 'No containers to display';

  @override
  String get capacity => 'Capacity';

  @override
  String get containers => 'Containers';

  @override
  String get addContainer => 'Add container';

  @override
  String get createContainer => 'Create container';

  @override
  String get editContainer => 'Edit container';

  @override
  String get containerSuccessfullyCreated => 'Container successfully created';

  @override
  String get containerSuccessfullyUpdated => 'Container successfully updated';

  @override
  String get sortBy => 'Sort by';

  @override
  String get noCollection => 'No collection';

  @override
  String get save => 'Save';

  @override
  String get locationDeniedFailure =>
      'Location services have been denied. Location services are required for this feature to function properly. Please retry and grant location services permission.';

  @override
  String get locationDeniedForeverFailure =>
      'Location services have been denied forever. Please enable them in settings.';

  @override
  String get locationServiceDisabledFailure =>
      'Location services are disabled. Please enable them in your device settings.';

  @override
  String get allowLocationPermission => 'Allow location permission';

  @override
  String get permissionDeniedForever =>
      'Please enable location permissions for Route Simplified from your device settings';

  @override
  String get arrive => 'Arrive';

  @override
  String get noAssignedContainers => 'No containers assigned';

  @override
  String get onsiteCapacity => 'Onsite capacity';

  @override
  String get addContainers => 'Add containers';

  @override
  String get quantity => 'Quantity';

  @override
  String get newOnsiteCapacity => 'New onsite capacity';

  @override
  String get customerContainerAssignmentSuccessfullyCreated =>
      'Containers assigned to customer successfully';

  @override
  String get remove => 'Remove';

  @override
  String get containerRemovedSuccessfully => 'Removed container successfully';

  @override
  String get containersAddedSuccessfully => 'Containers added successfully';

  @override
  String get removeContainerConfirmation =>
      'Are you sure you want to remove this container?';

  @override
  String get removeContainer => 'Remove container';

  @override
  String get details => 'Details';

  @override
  String get locationDetails => 'Location details';

  @override
  String get collectionData => 'Collection data';

  @override
  String collected({bool titleCase = true}) =>
      titleCase ? 'Collected' : 'collected';

  @override
  String get enterCollectionData => 'Enter collection data';

  @override
  String get enterNotes => 'Enter notes';

  @override
  String get totalCollectedAmount => 'Total collected amount';

  @override
  String get collectedAmountGreaterThanCapacity =>
      'For one or more containers, the collected volume is greater than container capacity';

  @override
  String get valueTooHigh => 'Value too high';

  @override
  String get done => 'Done';

  @override
  String get noCustomersFound => 'No customers found';

  @override
  String get optimize => 'Optimize';

  @override
  String get routeSuccessfullyOptimized => 'Route successfully optimized';

  @override
  String get optimized => 'Optimized';

  @override
  String get fillRate => 'Fill rate';

  @override
  String get generalInfo => 'General info';

  @override
  String get noWaypoints => 'No waypoints';

  @override
  String get reorderStops => 'Reorder stops';

  @override
  String get hyphen => '-';

  @override
  String get completed => 'Completed';

  @override
  String get arrival => 'Arrival';

  @override
  String get completion => 'Completion';

  @override
  String get editOptions => 'Edit options';

  @override
  String get percentFullSymbolHeader => '% Full';

  @override
  String get percentFullSymbol => '% full';

  @override
  String get archived => 'Archived';

  @override
  String get inactive => 'Inactive';

  @override
  String get noMapAppsFound => 'No map apps found';

  @override
  String get selectAMapApp => 'Select a map app';

  @override
  String get couldNotLaunchNavigation => 'Could not launch navigation';

  @override
  String get holdAndDragToReorder => 'Hold and drag to reorder';

  @override
  String get skipped => 'Skipped';

  @override
  String get notes => 'Notes';

  @override
  String get history => 'History';

  @override
  String get estimatedFillLevel => 'Estimated fill level';

  @override
  String get percentFull => 'Percent full';

  @override
  String get at => 'at';

  @override
  String get on => 'on';

  @override
  String get actual => 'Actual';

  @override
  String get tentative => 'Tentative';

  @override
  String get remainingGallons => 'Remaining gallons';

  @override
  String get editFillLevel => 'Edit fill level';

  @override
  String get fillLevelExceedsCapacity =>
      'Warning: Fill level exceeds onsite capacity';

  @override
  String get exceededLegalHours => 'Exceeded legal hours';

  @override
  String get other => 'Other';

  @override
  String get finishRouteReasonDialogSubTitle =>
      'Please select a reason for finishing the route with incomplete stops';

  @override
  String get truckIsFull => 'Truck is full';

  @override
  String get typeHere => 'Type here...';

  @override
  String get genericFailureMessage =>
      'Something went wrong, please try again later';

  @override
  String get succesMessageForFinishedRoute => 'Route successfully completed';

  @override
  String get route => 'Route';

  @override
  String get estimatedAmountOnSite => 'Estimated amount on site';

  @override
  String get percentSymbol => '%';

  @override
  String get showScheduledTimes => 'Show scheduled times';

  @override
  String get expected => 'Expected';

  @override
  String get residual => 'Residual';

  @override
  String get flagged => 'Flagged';

  @override
  String get percentFullOnarrival => '% Full on arrival';

  @override
  String get gallonsOnArrival => 'Gallons on arrival';

  @override
  String get newAmountOnSite => 'New amount on site';

  @override
  String get isRequired => '*Required';

  @override
  String get explainSkipReason => 'Explain reason for skipping';

  @override
  String get routeSuccessfullyCompleted => 'Route successfully completed';

  @override
  String get mapView => 'Map view';

  @override
  String get customerNotFound => 'Customer not found';

  @override
  String get enterFinishRouteReason => 'Enter reason for finishing route';

  @override
  String get missingFinishRouteReason => 'Missing reason for finishing route';

  @override
  String get unSkip => 'Unskip';

  // @override
  // String volumeUnit({
  //   bool abrv = false,
  //   bool titleCase = false,
  // }) {
  //   final String text;
  //   switch (global.measurmentSystem) {
  //     case SystemOfMeasurement.IMPERIAL:
  //       text = abrv ? 'gal' : 'gallons';
  //     case SystemOfMeasurement.IMPERIAL_US:
  //       text = abrv ? 'gal' : 'gallons';
  //     case SystemOfMeasurement.METRIC:
  //       text = abrv ? 'L' : 'litres';
  //     default:
  //       throw Exception('Unknown system of measurement');
  //   }
  //   return titleCase ? text.titleCase : text;
  // }

  // @override
  // String weightUnit({bool abrv = false}) {
  //   switch (global.measurmentSystem) {
  //     case SystemOfMeasurement.IMPERIAL:
  //       return abrv ? 'lbs' : 'pounds';
  //     case SystemOfMeasurement.IMPERIAL_US:
  //       return abrv ? 'lbs' : 'pounds';
  //     case SystemOfMeasurement.METRIC:
  //       return abrv ? 'kg' : 'kilograms';
  //     default:
  //       throw Exception('Unknown system of measurement');
  //   }
  // }

  @override
  String volumeValueWithUnit(Volume volume, {bool abrv = false}) {
    return '${volume.unitsRound()} ${volumeUnit(abrv: abrv)}';
  }

  @override
  String get totalRemainingAmount => 'Total remaining amount';

  @override
  String get remainingAmountGreaterThanCapacity =>
      'For one or more containers, the remaining volume is greater than container capacity';

  @override
  String get reasonForSkipping => 'Reason for skipping';

  @override
  String get somethingWentWrong => 'Something went wrong';

  @override
  String get stopSkipped => 'Stop skipped';

  @override
  String get collectedSkipWarning =>
      'You currently have collection data, skipping stop will set this to zero, and this cannot be undone.';

  @override
  String get contactSupportForBadData =>
      'Some data related to your account may have a problem. Please contact support.';

  @override
  String get dismiss => 'Dismiss';

  @override
  String get noSearchResults => 'No search results';

  @override
  String getNoOnsiteCapacityWarning(String customerName) {
    return '$customerName has no onsite capacity, please add a container';
  }

  @override
  String getFoundCount(int count) => '$count found';

  @override
  String get manager => 'Manager';
  @override
  String get savePassword => 'Save password';

  @override
  String get goToLogin => 'Go to login';

  @override
  String get newPassword => 'New password';

  @override
  String get passwordChanged => 'Password changed';

  @override
  String get resetYourPassword => 'Reset your password';

  @override
  String get resetPassword => 'Reset password';

  @override
  String get emailAlreadyExists =>
      'The email address is already in use by another account';

  @override
  String get expiredActionCode => 'The link has expired';

  @override
  String get invalidActionCode =>
      'The link is invalid.\nThis can happen if the link is expired or has already been used.';

  @override
  String get invalidEmail => 'Email address is invalid';

  @override
  String get generalError => 'An error occured. Please try again later.';

  @override
  String get userDisabled => 'User with this email has been disabled';

  @override
  String get userNotFound => 'User with this email doesn\'t exist';

  @override
  String get weakPassword =>
      'Your password does not meet the minimum requirements';

  @override
  String get wrongPassword => 'Your email or password is wrong';

  @override
  String getEmailForPasswordReset(String email) {
    return 'for $email';
  }

  @override
  String get emailHintText => 'Enter email';

  @override
  String get passwordHintText => 'Enter password';

  @override
  String get passwordLabelText => 'Password';

  @override
  String get signIn => 'Sign in';

  @override
  String get passwordResetEmailSent => 'Password reset email sent';

  @override
  String get resetPasswordDescription =>
      'Enter your email address and we\'ll send you a link to reset your password';

  @override
  String get deactivate => 'Deactivate';

  @override
  String get setPassword => 'Set password';

  @override
  String get passwordSet => 'Password set';

  @override
  String get tooManyRequests =>
      'Access to this account has been temporarily disabled due to many failed login attempts. You can immediately restore it by resetting your password or you can try again later.';

  @override
  String get missingPassword => 'Please enter your password';

  @override
  String get missingEmail => 'Please enter your email address';

  @override
  String get resendInvite => 'Resend invite';

  @override
  String get lastActive => 'Last active';

  @override
  String get customer => 'Customer';

  @override
  String get approxGallons => 'Approx. gallons';

  @override
  String get notAvailableSymbol => 'n/a';

  @override
  String get addToRoute => 'Add to route';

  @override
  String get showOnMap => 'Show on map';

  @override
  String get lock => 'Lock';

  @override
  String get unlock => 'Unlock';

  @override
  String get scheduled => 'Scheduled';

  @override
  String get started => 'Started';

  @override
  String get unNamedRoute => 'Unnamed Route';

  @override
  String get ok => 'OK';

  @override
  String get dragAndRelease => 'Drag and release';

  @override
  String get days => 'days';

  @override
  String get unscheduled => 'Unscheduled';

  @override
  String get duration => 'Duration';

  @override
  String get hours => 'hours';

  @override
  String get onlyDriverCanStartTrip => 'Only driver can start trip';

  @override
  String get onlyDriverCanContinueTrip => 'Only driver can continue trip';

  @override
  String get notAvailable => 'n/a';

  @override
  String get requestNewPasswordReset => 'Request new password reset email';

  @override
  String get sendPasswordResetLink => 'Send password reset email';

  @override
  String get noContainersSelected => 'No containers selected';

  @override
  String get routeDetails => 'Route details';

  @override
  String get customerDetails => 'Customer details';

  @override
  String get endDate => 'End date';

  @override
  String get startDate => 'Start date';

  @override
  String get findCollections => 'Find collections';

  @override
  String get completedOn => 'Completed on';

  @override
  String get scheduledStart => 'Scheduled start';

  @override
  String get enterDateRange => 'Enter date range';

  @override
  String get enterEndDate => 'Enter end date';

  @override
  String get enterStartDate => 'Enter start date';

  @override
  String get unschedule => 'Unschedule';

  @override
  String get routeSuccessfullyUnscheduled => 'Route successfully unscheduled';

  @override
  String get cannotDeleteCompletedRoute => 'Cannot delete completed route';

  @override
  String get cannotDeleteInProgressRoute => 'Cannot delete in progress route';

  @override
  String get deleteRoute => 'Delete route';

  @override
  String get routeSuccessfullyDeleted => 'Route successfully deleted';

  @override
  String get exportToExcel => 'Export to Excel';

  @override
  String get changeLog => 'Change log';

  @override
  String get modifiedAt => 'Modified at';

  @override
  String get modifiedBy => 'Modified by';

  @override
  String get measurementType => 'Measurement type';

  // @override
  // String volumeCollected() {
  //   switch (global.measurmentSystem) {
  //     case SystemOfMeasurement.IMPERIAL:
  //       return 'Collected gallons';
  //     case SystemOfMeasurement.IMPERIAL_US:
  //       return 'Collected gallons';
  //     case SystemOfMeasurement.METRIC:
  //       return 'Collected litres';
  //     default:
  //       throw Exception('Unknown system of measurement');
  //   }
  // }

  // @override
  // String volumeRemaining() {
  //   switch (global.measurmentSystem) {
  //     case SystemOfMeasurement.IMPERIAL:
  //       return 'Remaining gallons';
  //     case SystemOfMeasurement.IMPERIAL_US:
  //       return 'Remaining gallons';
  //     case SystemOfMeasurement.METRIC:
  //       return 'Remaining litres';
  //     default:
  //       throw Exception('Unknown system of measurement');
  //   }
  // }

  @override
  String get pleaseEnterOtherReason => 'Please enter other reason';

  @override
  String get pleaseSelectAReason => 'Please select a reason';

  @override
  String get otherReason => 'Other reason';

  @override
  String get routeSuccessfullyCloned => 'Route successfully cloned';

  @override
  String get routeCouldNotBeCloned => 'Route could not be cloned';

  @override
  String get convert => 'Convert';

  @override
  String get keep => 'Keep';

  @override
  String get valueTooLow => 'Value too low';

  @override
  String get remainingFillPercent => 'Remaining fill percent';

  @override
  String get totalFillPercent => 'Total fill percent';

  @override
  String get defaultMeasurementType => 'Collection measurement type';

  @override
  String get companyName => 'Company name';

  @override
  String get sort => 'Sort';

  @override
  String get minutes => 'minutes';

  @override
  String get abbrvHours => 'h';

  @override
  String get abbrvMinutes => 'm';

  @override
  String get change => 'Change';

  @override
  String get defaultDepot => 'Default depot';

  @override
  String get defaultDriver => 'Default driver';

  @override
  String get defaultStartTime => 'Default start time';

  @override
  String get defaultVehicle => 'Default vehicle';

  @override
  String get notSelected => 'Not selected';

  @override
  String get createADriver => 'Please create a driver';

  @override
  String get createAVehicle => 'Please create a vehicle';

  @override
  String get createADepot => 'Please create a depot';

  @override
  String get measurementSystem => 'Measurement system';

  @override
  String get showDetails => 'Show details';

  @override
  String get defaultWasteDeduction => 'Default waste deduction';

  @override
  String get serviced => 'Serviced';

  @override
  String get zeroCollection => 'Collection value is zero';

  // @override
  // String getZeroCollectionWarning(Volume totalRemainingAmount) =>
  //     'Looks like you\'re trying to enter a collected volume of zero, with ${volumeValueWithUnit(totalRemainingAmount)} remaining on site.\n\nAre you sure you\'d like to proceed?';

  @override
  String get remainingAmount => 'Remaining amount';

  @override
  String get dataHandling => 'Data handling';

  // @override
  // String changeMeasureTypeActionExplanation(ChangeMeasureTypeAction action) {
  //   switch (action) {
  //     case ChangeMeasureTypeAction.clear:
  //       return 'Clear volumes';
  //     case ChangeMeasureTypeAction.keep:
  //       return 'Your entries will remain the same, and volumes will be adjusted';

  //     case ChangeMeasureTypeAction.convert:
  //       return 'Volumes will remain the same, and entries will be adjusted';
  //   }
  // }

  // @override
  // String editFillRateWarning(
  //   Volume oldValue,
  //   Volume newValue,
  // ) {
  //   return 'You have changed the fill rate from ${oldValue.unitsRound()} ${volumeUnit(abrv: true)}/month to ${newValue.unitsRound()} ${volumeUnit(abrv: true)}/month.\n\n\nSelect an option below to recalculate the current fill level.';
  // }

  @override
  String get enterNewFillLevel => 'Enter new fill level';

  // @override
  // String keepCurrentFillLevel(Volume currentFillLevel) =>
  //     'Keep current fill level of ${currentFillLevel.unitsRound()} ${volumeUnit(abrv: true)}';

  // @override
  // String recalculateCurrentFillLevel(Volume newFillLevel) =>
  //     'Use new recalculated fill level of ${newFillLevel.unitsRound()} ${volumeUnit(abrv: true)}';

  @override
  String get customWasteDeduction => 'Custom waste deduction';

  @override
  String get useCustomWasteDeduction => 'Use custom waste deduction';

  @override
  String get oil => 'Oil';

  @override
  String get waste => 'Waste';

  // @override
  // String get displayDefaultWasteDeduction =>
  //     'Default waste deduction: ${global.defaultWastePercent.value.getOrCrash}%';

  @override
  String get wasteDeduction => 'Waste deduction';

  @override
  String get noChangesToSubmitErrorMessage => 'No changes to submit';

  @override
  String get noCollectionsFound => 'No results for this date range';

  // @override
  // String waypointStatus(WaypointStatus status) {
  //   return status.when(
  //     queued: () => 'Incomplete',
  //     serviced: () => 'Serviced',
  //     skipped: () => 'Skipped',
  //   );
  // }

  @override
  String get container => 'Container';

  @override
  String get back => 'Back';

  @override
  String get selectDataHandling => 'Please select data handling option';

  // @override
  // String changeMeasureTypeActionNames(ChangeMeasureTypeAction action) {
  //   switch (action) {
  //     case ChangeMeasureTypeAction.clear:
  //       return 'Clear';
  //     case ChangeMeasureTypeAction.keep:
  //       return 'Keep entries';
  //     case ChangeMeasureTypeAction.convert:
  //       return 'Keep volumes';
  //   }
  // }

  @override
  String get serviceDate => 'Service date';

  @override
  String get fill => 'Fill';

  @override
  String get vol => 'Vol';

  @override
  String get selectACustomer => 'Please select a customer';

  @override
  String get weights => 'Weights';

  @override
  String get weightsTempDisclosure =>
      '*Weight calculations are approximate, based on an ambient temperature of 70°F (21°C).';

  @override
  String get invalid => 'Invalid';

  @override
  String get scheduledEnd => 'Scheduled end';

  @override
  String get actualEnd => 'Actual end';

  @override
  String get actualStart => 'Actual start';

  @override
  String get incomplete => 'Incomplete';

  @override
  String get showHideColumns => 'Show/Hide columns';

  @override
  String get arrivedGPS => 'Arrive GPS';

  @override
  String get completedGPS => 'Completed GPS';

  @override
  String get gps => 'GPS';

  @override
  String get volume => 'Volume';

  // @override
  // String volumePerMonth(Volume volume) =>
  //     '${volumeValueWithUnit(volume, abrv: true)}/month';

  @override
  String get month => 'month';

  @override
  String get loading => 'Loading ...';

  @override
  String get loadingPlaceholder => 'Loading placeholder';

  @override
  String get viewAll => 'View all';

  @override
  String get editAmountOnSite => 'Edit amount on site';

  @override
  String get editFillRate => 'Edit fill rate';

  @override
  String get editWasteDeduction => 'Edit waste deduction';

  @override
  String get errorLoadingCompany => 'Error loading company';

  @override
  String get noLoggedInUser => 'No logged in user';

  @override
  String get noAuditLogsFound => 'No audit logs found';

  @override
  String get totals => 'Totals';

  @override
  String get oilPrice => 'Oil price';

  @override
  String get editOilPrice => 'Edit oil price';

  @override
  String get qty => 'Qty';

  @override
  String get auditLogs => 'Audit Logs';

  @override
  String get enterSkipReason => 'Enter Skip Reason';

  @override
  String get logs => 'Logs';

  @override
  String get warningContainersHaveChanged =>
      'Warning: The containers have changed.';

  @override
  String get resettingServiceContainersWarning =>
      'Resetting your containers will clear any data you\'ve entered, are you sure you want to continue?';

  @override
  String get loadingCustomers => 'Loading customers ...';

  @override
  String get loadingRoute => 'Loading route ...';

  @override
  String navItem(NavItem item) {
    switch (item) {
      case NavItem.home:
        return 'Home';
      case NavItem.trips:
        return 'Routes';
      case NavItem.customers:
        return 'Customers';
      case NavItem.reports:
        return 'Reports';
      case NavItem.assets:
        return 'Assets';
      case NavItem.sales:
        return 'Sales';
      case NavItem.settings:
        return 'Settings';
    }
  }

  @override
  String get dateRange => 'Date range';

  // @override
  // String filterCriterion(Enum operator) {
  //   if (operator is StringCriteria) {
  //     switch (operator) {
  //       case StringCriteria.equals:
  //         return 'Equals';
  //       case StringCriteria.contains:
  //         return 'Contains';
  //       case StringCriteria.beginsWith:
  //         return 'Begins With';
  //       case StringCriteria.endsWith:
  //         return 'Ends With';
  //     }
  //   }
  //   if (operator is NumberCriteria) {
  //     switch (operator) {
  //       case NumberCriteria.equals:
  //         return 'Equals';
  //       case NumberCriteria.doesNotEqual:
  //         return 'Does Not Equal';
  //       case NumberCriteria.lessThan:
  //         return 'Less Than';
  //       case NumberCriteria.lessThanOrEqual:
  //         return 'Less Than Or Equal';
  //       case NumberCriteria.greaterThan:
  //         return 'Greater Than';
  //       case NumberCriteria.greaterThanOrEqual:
  //         return 'Greater Than Or Equal';
  //     }
  //   }

  //   if (operator is DateCriteria) {
  //     switch (operator) {
  //       case DateCriteria.isAfter:
  //         return 'After';
  //       case DateCriteria.isBefore:
  //         return 'Before';
  //     }
  //   }
  //   throw Error();
  // }

  @override
  String get dragStopNumbersToReorder => 'Drag stop numbers to reorder';

  @override
  String get disclaimVolumeUnit => '*In ${volumeUnit()}';

  @override
  String get warning => 'Warning';

  @override
  String get reset => 'Reset';

  @override
  String get close => 'Close';

  @override
  String get active => 'Active';

  @override
  String get parseError => 'There was an error in parsing the file';

  @override
  String get parseResult => 'Parse result';

  @override
  String get noErrors => 'No errors';

  @override
  String get rowErrors => 'Errors encountered on following row(s)';

  @override
  String get verifyCustomerDetails =>
      'Please verify details of the displayed customer below';

  @override
  String get importCSVFile => 'Import CSV file';

  @override
  String get dataExportDate => 'Data export date';

  @override
  String get totalPredictedGals => 'Total ${volumeUnit()}';

  // @override
  // String permission(Permission role) {
  //   switch (role) {
  //     case Permission.trips:
  //       return 'Routes';
  //     case Permission.customers:
  //       return 'Customers';
  //     case Permission.reports:
  //       return 'Reports';
  //     case Permission.sales:
  //       return 'Sales';
  //     case Permission.assets:
  //       return 'Assets';
  //     case Permission.settings:
  //       return 'Settings';
  //   }
  // }

  @override
  String get clearFilter => 'Clear filter';

  @override
  String get sortAscending => 'Sort ascending';

  @override
  String get sortDescending => 'Sort descending';

  @override
  String get minimum => 'Minimum';

  @override
  String get maximum => 'Maximum';

  @override
  String get before => 'Before';

  @override
  String get after => 'After';

  // @override
  // String longName(CustomerColumn columns) {
  //   switch (columns) {
  //     case CustomerColumn.name:
  //       return 'Name';
  //     case CustomerColumn.fill:
  //       return 'Fill %';
  //     case CustomerColumn.vol:
  //       return 'Volume ${volumeUnit(abrv: true)}';
  //     case CustomerColumn.dueDate:
  //       return 'Due';
  //     case CustomerColumn.nextService:
  //       return 'Next service';
  //     case CustomerColumn.lastService:
  //       return 'Last service';
  //     case CustomerColumn.customerId:
  //       return 'ID';
  //     case CustomerColumn.address:
  //       return 'Address';
  //     case CustomerColumn.tags:
  //       return 'Tags';
  //     case CustomerColumn.created:
  //       return 'Created';
  //   }
  // }

  @override
  String get type => 'Type';

  @override
  String get noChange => 'No change';

  @override
  String displayDurationDaysHrsMins(Duration duration) {
    return duration.inDays > 0
        ? '${duration.inDays}d ${duration.inHours % 24}$abbrvHours ${duration.inMinutes % 60}$abbrvMinutes'
        : '${duration.inHours}$abbrvHours ${duration.inMinutes.remainder(60)}$abbrvMinutes';
  }

  // @override
  // String shortName(CustomerColumn columns) {
  //   switch (columns) {
  //     case CustomerColumn.name:
  //       return 'Name';
  //     case CustomerColumn.fill:
  //       return 'Fill %';
  //     case CustomerColumn.vol:
  //       return 'Vol (${volumeUnit(abrv: true)})';
  //     case CustomerColumn.dueDate:
  //       return 'Due';
  //     case CustomerColumn.nextService:
  //       return 'Next';
  //     case CustomerColumn.lastService:
  //       return 'Last';
  //     case CustomerColumn.customerId:
  //       return 'ID';
  //     case CustomerColumn.address:
  //       return 'Address';
  //     case CustomerColumn.tags:
  //       return 'Tags';
  //     case CustomerColumn.created:
  //       return 'Created';
  //   }
  // }

  @override
  String get depotAssignment => 'Depot assignment(s)';

  @override
  String get selectDepot => 'Select depot';

  @override
  String get last5AvgFillRate => 'Last 5 avg fill rate';

  @override
  String get fixedFillRate => 'Fixed fill rate';

  @override
  String get fixed => 'Fixed';

  @override
  String get last5Average => 'Last 5 average';

  @override
  String get decalNumber => 'Decal #';

  @override
  String get manifestNumber => 'Manifest number';

  @override
  String get manifestNumberShort => 'Manifest #';

  @override
  String get selectDriver => 'Select Driver';

  @override
  String get selectVehicle => 'Select Vehicle';

  @override
  String get fillLevelDate => 'Fill level date';

  @override
  String get sendEmailFailureMessage => 'Failed to send email';

  @override
  String get userNotFoundFailureMessage => 'User not found';

  // @override
  // String fillRateType(FillRateTypes type) {
  //   switch (type) {
  //     case FillRateTypes.fixed:
  //       return 'Fixed';
  //     case FillRateTypes.last5Average:
  //       return 'Last 5 average';
  //   }
  // }

  @override
  String get skippingImportantWaypointWarning =>
      'This stop is marked important. Do not skip unless absolutely necessary.';

  @override
  String get finishingTripWithIncompleteImportantStopsWarning =>
      'This route contains unserviced stops that are marked as important. Do not finish route unless absolutely necessary.';

  @override
  String get markedImportant => 'Marked important';

  @override
  String get notMarkedImportant => 'Not marked important';

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
  //   final totalVolume = switch (trip.product) {
  //     Product.uco => trip.totalCollection,
  //     Product.grease => trip.totalPumpedTrapVolume,
  //   };
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
  //       '${start.isEpoch() ? 'N/A' : start.toLocalMonthDayTime} - ${end.isEpoch() ? 'N/A' : end.toLocalMonthDayTime}';
  //   if (!start.isEpoch() && !end.isEpoch() && isSameDay) {
  //     routeTimes =
  //         '${start.toMonthAndDay}, ${start.toLocalTime} - ${end.toLocalTime}';
  //   }

  //   return '''
  //     <!DOCTYPE html>
  //     <html>
  //     <body>
  //     <h3>${trip.name.getOrCrash}</h3>
  //     <b>${volumeValueWithUnit(totalVolume, abrv: true)} serviced</b>
  //     <p>$routeTimes</p>
  //     <p> Total time: $totalHours hours</p>
  //     <p> Driver: ${trip.driver.shortDisplayName}</p>
  //     <p>$servicedStopsCount/$totalStopsCount stops completed</p>
  //     </br>
  //     <p> ${skippedStops.length} skipped:</p>
  //     $skippedStopsDisplay
  //     </br>
  //     <p>
  //       <a href="https://app.routesimplified.com/routing/build/${trip.id.getOrCrash}">View route</a>
  //     </p>
  //     </body>
  //     </html>
  //     ''';
  // }

  // @override
  // String completedRouteEmailSubject(Trip trip) =>
  //     '${trip.name.getOrCrash} completed at ${trip.actualEndTimeOption.fold(
  //       () => 'N/A',
  //       (time) => time.toLocalTimeOnMonthAndDay,
  //     )}';

  @override
  String get routeNotificationEmails => 'Route notification emails';

  @override
  String get defaultFillRateType => 'Default fill rate type';

  @override
  String get applyFillRateTypeToAllCustomers =>
      'Apply fill rate type to all current customers?';

  @override
  String get yes => 'Yes';

  @override
  String get no => 'No';

  @override
  String get selection => 'Selection';

  @override
  String get noEmailEntered => 'No email entered';

  @override
  String get copyOf => 'Copy of';

  @override
  String get copyRoute => 'Copy route';

  @override
  String get makeCopy => 'Make a copy';

  @override
  String get updateAllCustomersButtonText => 'Yes, update all customers';

  @override
  String get updateAllCustomers => 'Update all Customers?';

  // @override
  // String updateAllCustomersToFillRateType(FillRateTypes type) {
  //   return 'Update all existing customers to use “${fillRateType(type)}” fill rate type?';
  // }

  @override
  String get noStopsAdded => 'No stops added';

  @override
  String get ucoLocation => 'Oil location';

  @override
  String get scheduledRoutes => 'Scheduled routes';

  @override
  String get noScheduledRoutes => 'No scheduled routes';

  @override
  String get setUcoLocation => 'Set Oil location';

  @override
  String get useAddress => 'Use address';

  @override
  String get tags => 'Tags';

  @override
  String get typeToAddTag => 'Type to add tag';

  @override
  String get select => 'Select';

  @override
  String get noTagsFoundPressEnterToAdd => 'No tags found, press Enter to add.';

  // @override
  // String weekDay(
  //   DayOfWeek day, {
  //   required bool abrv,
  // }) {
  //   switch (day) {
  //     case DayOfWeek.Sunday:
  //       return abrv ? 'S' : 'Sun';
  //     case DayOfWeek.Monday:
  //       return abrv ? 'M' : 'Mon';
  //     case DayOfWeek.Tuesday:
  //       return abrv ? 'T' : 'Tue';
  //     case DayOfWeek.Wednesday:
  //       return abrv ? 'W' : 'Wed';
  //     case DayOfWeek.Thursday:
  //       return abrv ? 'T' : 'Thu';
  //     case DayOfWeek.Friday:
  //       return abrv ? 'F' : 'Fri';
  //     case DayOfWeek.Saturday:
  //       return abrv ? 'S' : 'Sat';
  //   }
  // }

  @override
  String get endTime => 'End time';

  @override
  String get notesAdded => 'Notes Added';

  @override
  String get generatePDF => 'Generate PDF';

  @override
  String get previewPDF => 'Preview PDF';

  @override
  String get customerNotes => 'Customer notes';

  @override
  String get collectionType => 'Collection Type';

  // @override
  // String collectionTypes(CollectionType type) {
  //   switch (type) {
  //     case CollectionType.CONTAINERS_ONLY:
  //       return 'Container collection';
  //     case CollectionType.SIMPLE_ONLY:
  //       return 'Simple collection (volume)';
  //     case CollectionType.SIMPLE_WEIGHT:
  //       return 'Simple collection (weight)';
  //     default:
  //       throw Error();
  //   }
  // }

  @override
  String get editServiceNotificationRecipients =>
      'Edit service notification recipients';

  @override
  String get serviceNotification => 'Service notification';

  // @override
  // String getServiceNotificationsText(Product product) {
  //   final productText = switch (product) {
  //     Product.uco => 'an oil',
  //     Product.grease => 'a trap',
  //   };
  //   return 'Email notifications will be sent to the following recipients when $productText service is completed for this customer.';
  // }

  @override
  String get noEmailsAdded => 'No emails added';

  @override
  String get recipients => 'Recipients';

  @override
  String get duplicateEmail => 'Duplicate email';

  // @override
  // String serviceNotificationEmailSubject(WaypointModel waypoint) =>
  //     '${products(waypoint.product)} service completed at ${waypoint.actualCompletionTimeOption.fold(
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
  //     (vehicle) => '<p>Decal #: ${vehicle.decalNumber}</p>',
  //   );
  //   final volume = switch (waypoint.product) {
  //     Product.uco => waypoint.totalOilAndWasteCollected,
  //     Product.grease => waypoint.customer.grease.totalCapacity,
  //   };

  //   return '''
  //       <!DOCTYPE html>
  //       <html>
  //       <body>
  //       <h3>${customer.name.getOrCrash}</h3>
  //       <p>Collected on: $time</p>
  //       <p>Total Collected: ${volumeValueWithUnit(volume, abrv: true)}</p>
  //       <p>Driver: $driver</p>
  //       $decal
  //       </br>
  //       ${global.companyName}
  //       </body>
  //       </html>
  //       ''';
  // }

  @override
  String get completeWaypointConfirmation =>
      'Are you sure you want to complete this stop?';

  @override
  String get enterEmailToAdd => 'Enter email to add';

  @override
  String get outOfServiceWindow => 'Out of service window.';

  @override
  String get serviceWindow => 'Service window';

  @override
  String get serviceWindowMustBeAtleastFifteenMinutesLong =>
      'Service window duration must be at least fifteen minutes.';

  @override
  String get clear => 'Clear';

  @override
  String get serviceWindows => 'Service windows';

  @override
  String get noContainersAssigned => 'No containers assigned';

  @override
  String get summary => 'Summary';

  @override
  String get last => 'Last';

  @override
  String get sales => 'Sales';

  @override
  String get buyer => 'Buyer';

  @override
  String get pricePerPound => 'Price/lb';

  @override
  String get newSale => 'New sale';

  @override
  String get noSalesToDisplay => 'No sales to display';

  @override
  String get buyerIsRequired => 'Buyer is required';

  @override
  String get totalPrice => 'Total price';

  @override
  String get editSale => 'Edit sale';

  @override
  String get alwaysMarkImportant => 'Always mark important';

  @override
  String get alwaysMarkedImportant => 'Always marked important';

  @override
  String get waypointNotes => 'Waypoint notes';

  @override
  String get contractDate => 'Contract date';

  @override
  String get saleId => 'Sale ID';

  @override
  String get poundsGreaterThanZero => 'Pounds should be greater than zero';

  @override
  String get importContainerAssignments => 'Import container assignments';

  @override
  String get activity => 'Activity';

  @override
  String get clickAddToCreateNoteForWaypoint =>
      'Click add to create a note for this waypoint';

  @override
  String get reason => 'Reason';

  @override
  String get unskipConfirmation =>
      'Are you sure that you want to unskip this stop?';

  @override
  String get requestPasswordReset => 'Request password reset';

  @override
  String get requestResetEmail => 'Request reset email';

  @override
  String get fillLevel => 'Fill level';

  @override
  String get duplicateId => 'Duplicate ID';

  @override
  String get newFillLevel => 'New fill level';

  @override
  String get addBuyer => 'Add buyer';

  @override
  String get editBuyer => 'Edit buyer';

  @override
  String get buyers => 'Buyers';

  @override
  String get showBuyers => 'Show buyers';

  @override
  String get noBuyersToDisplay => 'No buyers to display';

  @override
  String get total => 'Total';

  @override
  String get company => 'Company';

  @override
  String get simpleCollection => 'Simple collection';

  @override
  String get comments => 'Comments';

  @override
  String get noRecentActivity => 'No recent activity';

  // @override
  // String loadType(LoadType type) {
  //   switch (type) {
  //     case LoadType.CONTAINER:
  //       return 'Container';
  //     case LoadType.RAIL:
  //       return 'Rail';
  //     case LoadType.TRUCK:
  //       return 'Truck';
  //     default:
  //       return 'Error';
  //   }
  // }

  @override
  String get inProgressRoutes {
    return 'In progress routes';
  }

  @override
  String get totalOilCollected {
    return 'Total oil collected';
  }

  @override
  String get noInprogressRoutes => 'No in progress routes';

  @override
  String get totalCollected => 'Total collected';

  @override
  String get loads => 'Loads';

  @override
  String get shipDate => 'Ship date';

  @override
  String get addLoad => 'Add load';

  @override
  String get sale => 'Sale';

  @override
  String get weight => 'Weight';

  @override
  String get netWeight => 'Net weight';

  @override
  String get mode => 'Mode';

  @override
  String get remaining => 'Remaining';

  @override
  String get continueWithoutLocation =>
      'Location is disabled for Route Simplified. Continue without device location?';

  @override
  String get enableLocationServices =>
      'Location is disabled for Route Simplified. Ensure that both your browser and your device allow Route Simplified to check your location.';

  @override
  String get locationDisabled => 'Location disabled';

  @override
  String get locationRequired => 'Location required';

  @override
  String get driverLocationRequired => 'Driver location required';

  // @override
  // String serviceStatus(ServiceStatuses status) {
  //   switch (status) {
  //     case ServiceStatuses.active:
  //       return 'Active';
  //     case ServiceStatuses.inactive:
  //       return 'Inactive';
  //   }
  // }

  @override
  String get payment => 'Payment';

  @override
  String get height => 'Height';

  @override
  String get beforePumping => 'Before pumping';

  @override
  String get afterPumping => 'After pumping';

  @override
  String get inchesFromTop => 'inches from top';

  @override
  String get inchesFromBottom => 'inches from bottom';

  @override
  String get completePreviousStopsFirst =>
      'This stop can not be serviced before completing all previous stops';

  @override
  String get poNumber => 'PO #';

  @override
  String get soNumber => 'SO #';

  @override
  String get cents => 'cents';

  @override
  String get addNewBuyer => 'Add new buyer';

  @override
  String get noLoadsAddedYet => 'No loads added yet';

  @override
  String get editLoad => 'Edit load';

  @override
  String get flags => 'Flags';

  // @override
  // String serviceFlag(ServiceFlags flag) {
  //   switch (flag) {
  //     case ServiceFlags.stolen:
  //       return 'Stolen';
  //     case ServiceFlags.needsReview:
  //       return 'Needs review';
  //   }
  // }

  @override
  String get resendInviteConfirmation => 'Resend email invite?';

  @override
  String get deactivateUserConfirmation =>
      'Are you sure you want to deactivate this user?';

  @override
  String get inches => 'Inches';

  @override
  String get enterHeight => 'Enter height';

  @override
  String get all => 'All';

  @override
  String get assignedRecords => 'Assigned records';

  @override
  String get generateAssignments => 'Generate assignments';

  @override
  String get load => 'Load';

  @override
  String get loadingAssignments => 'Loading assignments';

  @override
  String get removeAll => 'Remove all';

  @override
  String get totalAssignments => 'Total assignments';

  @override
  String get assignedWeight => 'Assigned weight';
  @override
  String records({required bool upperCase}) =>
      upperCase ? 'Records' : 'records';

  @override
  String get contractDetails => 'Contract details';

  @override
  String get shipmentDetails => 'Shipment details';

  @override
  String get sellerName => 'Seller name';

  @override
  String get collectionDate => 'Collection date';

  @override
  String get noRecordsAssignedPrompt =>
      'No records assigned. To assign records, please select the earliest date from which you want the records selected (records prior to this date will not be assigned).';

  // @override
  // String saleStatus(OilSaleStatus status) {
  //   switch (status) {
  //     case OilSaleStatus.active:
  //       return 'Active';
  //     case OilSaleStatus.completed:
  //       return 'Completed';
  //     case OilSaleStatus.cancelled:
  //       return 'Cancelled';
  //   }
  // }

  @override
  String get unavailable => 'Unavailable';

  @override
  String get isNotAvailableForThisContainer =>
      'is not available for this container';
  @override
  String get deleteServicedContainerConfirmation =>
      'Are you sure you want to delete this container\'s collection data?\n\nThis cannot be undone.';
  @override
  String get deleteCollectionData => 'Delete collection data';

  @override
  String get deleteSimpleCollectionConfirmation =>
      'Are you sure you want to delete collection data for this stop?\n\nThis cannot be undone.';
  @override
  String get stopWasSkipped => 'This stop was skipped';

  // @override
  // String doubleErrors(VDoubleError error) {
  //   return error.when(
  //     notADouble: (_) => 'Not a  number',
  //     tooHigh: (_) => 'Value too high',
  //     tooLow: (_) => 'Value too low',
  //   );
  // }

  // @override
  // String get enterContainerHeight => 'Please enter height of container';

  // @override
  // String measurementErrors(MeasurementErrors error) {
  //   switch (error) {
  //     case MeasurementErrors.totalCollectedIsNegative:
  //       return 'Total collected can not be negative';
  //     case MeasurementErrors.residualIsNegative:
  //       return 'Remaining can not be negative';
  //     case MeasurementErrors.prePumpIsNegative:
  //       return 'Pre pump can not be negative';
  //     case MeasurementErrors.postPumpIsNegative:
  //       return 'Post pump can not be negative';

  //     case MeasurementErrors.prePumpIsHigherThanContainerHeight:
  //       return 'Pre pump can not be higher than container height';
  //     case MeasurementErrors.postPumpIsHigherThanContainerHeight:
  //       return 'Post pump can not be higher than container height';
  //     case MeasurementErrors.postPumpHigherThanPrePump:
  //       return 'Post pump can not be higher than pre pump';
  //     case MeasurementErrors.prePumpHigherThanPostPump:
  //       return 'Pre pump can not be higher than post pump';
  //     case MeasurementErrors
  //           .sumOfCollectedAndRemainingHigherThan10TimesContainerCapacity:
  //       return 'Sum of collected and remaining can not be higher than 10 times the container capacity';
  //     case MeasurementErrors.prePumpHigherThan1000:
  //       return 'Pre pump can not be higher than 1000';
  //     case MeasurementErrors.prePumpSmallerThanMinus9TimesContainerHeight:
  //       return 'Pre pump can not be smaller than -9 times the container height';
  //     case MeasurementErrors.prePumpHigherThan10TimesContainerHeight:
  //       return 'Pre pump can not be higher than 10 times container height';
  //   }
  // }

  @override
  String get deleteCollectionsBeforeSkip =>
      'Please delete all collections before skipping.';

  @override
  String get addCollectionsBeforeCompleting =>
      'Collection data must be added before completing stop.';

  @override
  String get completeStopUnavailable => 'Complete stop unavailable';

  @override
  String get skipUnavailable => 'Skip stop unavailable';

  @override
  String get canDeleteCustomerMessage =>
      'This customer can be deleted because they have no service history';

  @override
  String get deleteCustomer => 'Delete customer';

  @override
  String get deleteCustomerConfirmation =>
      'Are you sure you want to delete this customer?\n\nThis cannot be undone.';

  @override
  String get addComment => 'Add comment';

  @override
  String get addImage => 'Add image';

  @override
  String get setFlags => 'Set flags';

  @override
  String get recordAssigned => 'Record assigned';

  @override
  String get cannotEditCollectionDataAssignedToLoad =>
      'This stop\'s collection data can not be edited because it is assigned to a load.';

  @override
  String get remainingOnSite => 'Remaining on site';

  @override
  String get noCollectionData => 'No collection data';

  @override
  String get noRouteComments =>
      'No comments have been added to any stops on this route.';

  @override
  String get noRouteCommentsTitle => 'No route comments';

  @override
  String get routeComments => 'Route comments';

  @override
  String get download => 'Download';

  @override
  String get noServiceWindows => 'No service windows';

  @override
  String get collectionId => 'Collection ID';

  @override
  String get city => 'City';

  @override
  String get state => 'State';

  @override
  String get stop => 'Stop';

  @override
  String get locked => 'Locked';

  @override
  String get star => 'Star';

  @override
  String get starred => 'Starred';

  @override
  String get clickToChangeStartAndEndPoint =>
      'Click to change start and end point';

  @override
  String get assigned => 'Assigned';

  @override
  String get activeRoutes => 'Active routes';

  @override
  String get noActiveRoutes => 'No active routes';

  @override
  String get poundsAbbrv => 'lbs';

  @override
  String get daysSinceReset => 'Days since reset';

  @override
  String get lastResetDate => 'Last reset date';

  @override
  String get lastManualEdit => 'Last manual edit';

  @override
  String get entered => 'entered';

  @override
  String get calculatedFillLevel => 'Calculated fill level';

  @override
  String get manuallyEditFillLevel => 'Manually edit fill level';

  @override
  String get serviceInterval => 'Service interval';

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
  //     DueDateTypes.fillRate => 'Calculate due date by fill rate and fill level',
  //     DueDateTypes.serviceInterval => 'Calculate due date by service interval',
  //   };
  // }

  @override
  String get dueDateType => 'Due date type';

  @override
  String get dueDate => 'Due date';

  @override
  String get available => 'Available';

  @override
  String get needed => 'Needed';

  @override
  String get created => 'Created';

  @override
  String products(Products e) {
    return switch (e) {
      Products.uco => 'Oil',
      Products.grease => 'Grease',
    };
  }

  @override
  String get location => 'Location';

  @override
  String get due => 'due';

  @override
  String get noHeightErrorMessage =>
      'Enter container height to use inches measurement type';

  @override
  String get noOnsiteCapacity => 'No onsite capacity';

  @override
  String get allGreaseTrapsPumped => 'All grease traps pumped';

  @override
  String get greaseTrapsNotPumped => 'Grease traps not pumped';

  @override
  String get pleaseConfirmService => 'Please confirm service';

  @override
  String get removeServiceConfirmationToSkip =>
      'Please remove service confirmation to skip';

  @override
  String get beta => 'beta';

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
  //     Roles.admin => 'Admin',
  //     Roles.owner => 'Owner',
  //     Roles.user => 'User',
  //   };
  // }

  @override
  String get takePhoto => 'Take photo';

  @override
  String get notAvailableOnDesktop => 'Not available on desktop';

  @override
  String get found => 'Found';

  @override
  String get allDepots => 'All depots';

  @override
  String get depotMustBeCreatedToAddCustomer =>
      'Depot must be created before adding customers';

  @override
  String get updateAssets => 'Update assets';

  @override
  String get lastLogin => 'Last login';

  @override
  String get admin => 'Admin';

  @override
  String get noCompaniesToDisplay => 'No companies to display';

  @override
  String get billing => 'Billing';

  @override
  String get selectAtLeastOneDepot => 'Select at least one depot';

  @override
  String get confirmNextStopRemoval =>
      'This is the current stop, and the driver may already be en route. You may need to contact the driver.\n\nAre you sure you want to proceed?';

  @override
  String get areYouSure => 'Are you sure?';

  @override
  String get removeStopUnavailable => 'Remove stop unavailable';

  @override
  String get cannotRemoveArrivedWaypoint =>
      'This stop cannot be removed because the driver has already arrived.';

  @override
  String get reorder => 'Reorder';

  @override
  String get confirmNextStopReorder =>
      'This affects the order of the current stop, and the driver may already be en route.\n\nDo you want to proceed?';

  @override
  String get reorderStopUnavailable => 'Reorder stop unavailable';

  @override
  String get canNotReorderArrivedWaypoint =>
      'This reorder affects current stop which cannot be reordered because the driver has already arrived.';

  @override
  String get goToRoute => 'Go to route';

  @override
  String get added => 'added';

  @override
  String get arrived => 'arrived';

  @override
  String get flag => 'flag';

  @override
  String get removed => 'removed';

  @override
  String get time => 'Time';

  @override
  String get customLastServiceDate => 'Custom last service date';

  @override
  String get addCollection => 'Add collection';

  @override
  String get editCollection => 'Edit collection';

  @override
  String get enteredBy => 'Entered by';

  @override
  String get filter => 'Filter';

  @override
  String get selectAll => 'Select all';

  // @override
  // String needForScheduling(DueAndNextCombo combo, {required bool abrv}) {
  //   return switch (combo) {
  //     DueAndNextCombo.scheduled => abrv ? 'Scheduled' : 'Scheduled',
  //     DueAndNextCombo.overdue => abrv ? 'Overdue' : 'Overdue',
  //     DueAndNextCombo.dueIn3 => abrv ? '< 3 days' : 'Due within 3 days',
  //     DueAndNextCombo.dueIn7 => abrv ? '< 7 days' : 'Due within 7 days',
  //     DueAndNextCombo.dueAfter7 => abrv ? '7+ days' : 'Due after 7 days',
  //     DueAndNextCombo.noDueDate => abrv ? 'Due n/a' : 'No due date',
  //     DueAndNextCombo.inactive => abrv ? 'Inactive' : 'Inactive',
  //   };
  // }

  @override
  String get canNotBeChangedWhenCloning => 'Can not be changed when cloning';

  @override
  String get noOtherOptionsAvailable => 'No other options available';

  @override
  String smartDateRanges(SmartDates smartDate) {
    return switch (smartDate) {
      SmartDates.last30Days => 'Last 30 days',
      SmartDates.today => 'Today',
      SmartDates.yesterday => 'Yesterday',
      SmartDates.lastMonth => 'Last month',
      SmartDates.lastQuarter => 'Last quarter',
    };
  }

  @override
  String get totalCapacity => 'Total capacity';

  @override
  String get addCompany => 'Add company';

  @override
  String get indexPercent => 'Index %';

  @override
  String get editIndexPercent => 'Edit index %';

  @override
  String get arrivedOn => 'Arrived on';

  @override
  String get refresh => 'Refresh';

  @override
  String get show => 'Show';

  @override
  String get filters => 'Filters';

  @override
  String get clearAllFilters => 'Clear all filters';

  @override
  String get noFiltersApplied => 'No filters applied';

  @override
  String get documents => 'Documents';

  @override
  String get noDocumentsFound => 'No documents found';

  @override
  String get uploadDocument => 'Upload document';

  @override
  String get title => 'Title';

  @override
  String get enterTitle => 'Enter title';

  @override
  String get view => 'View';

  @override
  String get deleteDocumentConfirmation =>
      'Permanently delete this document from the customer?';

  @override
  String get renameDocument => 'Rename document';

  @override
  String get rename => 'Rename';

  @override
  String maxPdfMbError(int maxMb) => 'PDF can not be larger than $maxMb MB.';

  @override
  String get fileMustBePdf => 'File must be a PDF.';

  @override
  String selectPdfFile(int size) => 'Select a PDF no larger than $size MB.';

  @override
  String get browseFiles => 'Browse files';

  @override
  String get addDocumentText =>
      'Enter the title of the document and select PDF to upload.';

  @override
  String get userPreviligesIncludeAccessToOnlyThisDepot =>
      'Your user privileges include access to only this depot.';

  @override
  String get docs => 'Docs';

  @override
  String get hasDocumnets => 'Has documents';

  @override
  String get noDocumnets => 'No documents';

  @override
  String get permissions => 'Permissions';

  @override
  // TODO: implement displayDefaultWasteDeduction
  String get displayDefaultWasteDeduction => throw UnimplementedError();

  @override
  // TODO: implement enterContainerHeight
  String get enterContainerHeight => throw UnimplementedError();

  @override
  String filterCriterion(Enum criterion) {
    // TODO: implement filterCriterion
    throw UnimplementedError();
  }

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
