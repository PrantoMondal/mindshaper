import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[Locale('en')];

  /// No description provided for @home.
  ///
  /// In en, this message translates to:
  /// **'Home'**
  String get home;

  /// No description provided for @search.
  ///
  /// In en, this message translates to:
  /// **'Search'**
  String get search;

  /// No description provided for @successfullyLoggedOut.
  ///
  /// In en, this message translates to:
  /// **'Successfully Logged out'**
  String get successfullyLoggedOut;

  /// No description provided for @noMediaSelected.
  ///
  /// In en, this message translates to:
  /// **'No media is selected!'**
  String get noMediaSelected;

  /// No description provided for @attachmentsLimit.
  ///
  /// In en, this message translates to:
  /// **'Only 3 Attachments can be added'**
  String get attachmentsLimit;

  /// No description provided for @pleaseEnterText.
  ///
  /// In en, this message translates to:
  /// **'Please enter some text'**
  String get pleaseEnterText;

  /// No description provided for @pleaseSelectOption.
  ///
  /// In en, this message translates to:
  /// **'Please select an option'**
  String get pleaseSelectOption;

  /// No description provided for @pleaseEnterValidInfo.
  ///
  /// In en, this message translates to:
  /// **'Please enter valid info'**
  String get pleaseEnterValidInfo;

  /// No description provided for @productUnitCannotBeFractional.
  ///
  /// In en, this message translates to:
  /// **'Product unit(s) cannot be fractional'**
  String get productUnitCannotBeFractional;

  /// No description provided for @unitPriceCannotBeZero.
  ///
  /// In en, this message translates to:
  /// **'Unit price can not be 0.00'**
  String get unitPriceCannotBeZero;

  /// No description provided for @imageRequired.
  ///
  /// In en, this message translates to:
  /// **'Product image needed'**
  String get imageRequired;

  /// No description provided for @somethingWentWrong.
  ///
  /// In en, this message translates to:
  /// **'Something went wrong. Please try again later'**
  String get somethingWentWrong;

  /// No description provided for @noInternetConnection.
  ///
  /// In en, this message translates to:
  /// **'Please check you internet connection'**
  String get noInternetConnection;

  /// No description provided for @unknownError.
  ///
  /// In en, this message translates to:
  /// **'Unknown error occurred'**
  String get unknownError;

  /// No description provided for @serviceUnavailable.
  ///
  /// In en, this message translates to:
  /// **'Service Temporarily Unavailable'**
  String get serviceUnavailable;

  /// No description provided for @invalidCertificate.
  ///
  /// In en, this message translates to:
  /// **'Request was cancelled due to invalid certificate'**
  String get invalidCertificate;

  /// No description provided for @establishConnectionError.
  ///
  /// In en, this message translates to:
  /// **'Could not establish a connection with the server in time'**
  String get establishConnectionError;

  /// No description provided for @connectionCancelledError.
  ///
  /// In en, this message translates to:
  /// **'Connection with the server was cancelled'**
  String get connectionCancelledError;

  /// No description provided for @login.
  ///
  /// In en, this message translates to:
  /// **'Login'**
  String get login;

  /// No description provided for @loginMsg.
  ///
  /// In en, this message translates to:
  /// **'Enter email and password to login'**
  String get loginMsg;

  /// No description provided for @email.
  ///
  /// In en, this message translates to:
  /// **'Email'**
  String get email;

  /// No description provided for @emailMsg.
  ///
  /// In en, this message translates to:
  /// **'Enter Email'**
  String get emailMsg;

  /// No description provided for @password.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get password;

  /// No description provided for @passwordMsg.
  ///
  /// In en, this message translates to:
  /// **'Enter Password'**
  String get passwordMsg;

  /// No description provided for @rememberMe.
  ///
  /// In en, this message translates to:
  /// **'Remember Me'**
  String get rememberMe;

  /// No description provided for @forgotPassword.
  ///
  /// In en, this message translates to:
  /// **'Forgot Password'**
  String get forgotPassword;

  /// No description provided for @continueWith.
  ///
  /// In en, this message translates to:
  /// **'Or Continue with'**
  String get continueWith;

  /// No description provided for @google.
  ///
  /// In en, this message translates to:
  /// **'Continue with Google'**
  String get google;

  /// No description provided for @apple.
  ///
  /// In en, this message translates to:
  /// **'Continue with Apple'**
  String get apple;

  /// No description provided for @dontHaveAnAccount.
  ///
  /// In en, this message translates to:
  /// **'Don\'t have any account?'**
  String get dontHaveAnAccount;

  /// No description provided for @registerHere.
  ///
  /// In en, this message translates to:
  /// **'Register Here'**
  String get registerHere;

  /// No description provided for @name.
  ///
  /// In en, this message translates to:
  /// **'Name'**
  String get name;

  /// No description provided for @nameMsg.
  ///
  /// In en, this message translates to:
  /// **'Enter Name'**
  String get nameMsg;

  /// No description provided for @confirmPassword.
  ///
  /// In en, this message translates to:
  /// **'Confirm Password'**
  String get confirmPassword;

  /// No description provided for @confirmPasswordMsg.
  ///
  /// In en, this message translates to:
  /// **'Re-enter Password'**
  String get confirmPasswordMsg;

  /// No description provided for @register.
  ///
  /// In en, this message translates to:
  /// **'Register'**
  String get register;

  /// No description provided for @registerMsg.
  ///
  /// In en, this message translates to:
  /// **'Register a new account by providing required credentials'**
  String get registerMsg;

  /// No description provided for @alreadyHaveAnAccount.
  ///
  /// In en, this message translates to:
  /// **'Already have an account?'**
  String get alreadyHaveAnAccount;

  /// No description provided for @loginHere.
  ///
  /// In en, this message translates to:
  /// **'Login Here'**
  String get loginHere;

  /// No description provided for @nameValidate.
  ///
  /// In en, this message translates to:
  /// **'Please enter your name'**
  String get nameValidate;

  /// No description provided for @emailValidate.
  ///
  /// In en, this message translates to:
  /// **'Please enter your email'**
  String get emailValidate;

  /// No description provided for @passwordValidate.
  ///
  /// In en, this message translates to:
  /// **'Please enter your Password'**
  String get passwordValidate;

  /// No description provided for @oldPasswordValidate.
  ///
  /// In en, this message translates to:
  /// **'Please enter your old Password'**
  String get oldPasswordValidate;

  /// No description provided for @newPasswordValidate.
  ///
  /// In en, this message translates to:
  /// **'Please enter your new Password'**
  String get newPasswordValidate;

  /// No description provided for @enterPasswordAgain.
  ///
  /// In en, this message translates to:
  /// **'Enter password again'**
  String get enterPasswordAgain;

  /// No description provided for @confirmPasswordValidate.
  ///
  /// In en, this message translates to:
  /// **'Passwords do not match'**
  String get confirmPasswordValidate;

  /// No description provided for @landingScreenTitle.
  ///
  /// In en, this message translates to:
  /// **'From Plans to Parties,\nWe\'ve Got You Covered Join Events, Sell Tickets, Create Magic'**
  String get landingScreenTitle;

  /// No description provided for @forgotPasswordMsg.
  ///
  /// In en, this message translates to:
  /// **'Provide your account\'s email for which you want to reset your password'**
  String get forgotPasswordMsg;

  /// No description provided for @sendOtp.
  ///
  /// In en, this message translates to:
  /// **'Send OTP'**
  String get sendOtp;

  /// No description provided for @emailVerification.
  ///
  /// In en, this message translates to:
  /// **'Email Verification'**
  String get emailVerification;

  /// No description provided for @emailVerificationMsg.
  ///
  /// In en, this message translates to:
  /// **'An OTP code has been sent to this email '**
  String get emailVerificationMsg;

  /// No description provided for @enterOtp.
  ///
  /// In en, this message translates to:
  /// **'Enter the OTP'**
  String get enterOtp;

  /// No description provided for @didNotGetOtp.
  ///
  /// In en, this message translates to:
  /// **'Did not receive OTP? '**
  String get didNotGetOtp;

  /// No description provided for @resend.
  ///
  /// In en, this message translates to:
  /// **'Resend '**
  String get resend;

  /// No description provided for @otp.
  ///
  /// In en, this message translates to:
  /// **'OTP'**
  String get otp;

  /// No description provided for @verify.
  ///
  /// In en, this message translates to:
  /// **'Verify'**
  String get verify;

  /// No description provided for @resetPassword.
  ///
  /// In en, this message translates to:
  /// **'Reset Password'**
  String get resetPassword;

  /// No description provided for @resetPasswordMsg.
  ///
  /// In en, this message translates to:
  /// **'Reset your password. Make sure to use combination of Uppercase, Lowercase, Numbers and Special characters'**
  String get resetPasswordMsg;

  /// No description provided for @reset.
  ///
  /// In en, this message translates to:
  /// **'Reset'**
  String get reset;

  /// No description provided for @browse.
  ///
  /// In en, this message translates to:
  /// **'Browse'**
  String get browse;

  /// No description provided for @myTickets.
  ///
  /// In en, this message translates to:
  /// **'My Tickets'**
  String get myTickets;

  /// No description provided for @chat.
  ///
  /// In en, this message translates to:
  /// **'Chat'**
  String get chat;

  /// No description provided for @more.
  ///
  /// In en, this message translates to:
  /// **'More'**
  String get more;

  /// No description provided for @eventCategories.
  ///
  /// In en, this message translates to:
  /// **'Event Categories'**
  String get eventCategories;

  /// No description provided for @featuredEvents.
  ///
  /// In en, this message translates to:
  /// **'Featured Events'**
  String get featuredEvents;

  /// No description provided for @organizerToFollow.
  ///
  /// In en, this message translates to:
  /// **'Organizer to Follow'**
  String get organizerToFollow;

  /// No description provided for @eventAlmostFull.
  ///
  /// In en, this message translates to:
  /// **'Events Almost Full'**
  String get eventAlmostFull;

  /// No description provided for @eventsNearYou.
  ///
  /// In en, this message translates to:
  /// **'Events Near You'**
  String get eventsNearYou;

  /// No description provided for @follow.
  ///
  /// In en, this message translates to:
  /// **'Follow'**
  String get follow;

  /// No description provided for @followers.
  ///
  /// In en, this message translates to:
  /// **'Followers'**
  String get followers;

  /// No description provided for @filters.
  ///
  /// In en, this message translates to:
  /// **'Filter'**
  String get filters;

  /// No description provided for @categories.
  ///
  /// In en, this message translates to:
  /// **'Categories'**
  String get categories;

  /// No description provided for @date.
  ///
  /// In en, this message translates to:
  /// **'Date'**
  String get date;

  /// No description provided for @fromDate.
  ///
  /// In en, this message translates to:
  /// **'From Date'**
  String get fromDate;

  /// No description provided for @toDate.
  ///
  /// In en, this message translates to:
  /// **'To Date'**
  String get toDate;

  /// No description provided for @price.
  ///
  /// In en, this message translates to:
  /// **'Price'**
  String get price;

  /// No description provided for @free.
  ///
  /// In en, this message translates to:
  /// **'Free'**
  String get free;

  /// No description provided for @paid.
  ///
  /// In en, this message translates to:
  /// **'Paid'**
  String get paid;

  /// No description provided for @locationFilterMsg.
  ///
  /// In en, this message translates to:
  /// **'Select a Location and Distance to get events from only that location and within that distance'**
  String get locationFilterMsg;

  /// No description provided for @location.
  ///
  /// In en, this message translates to:
  /// **'Location'**
  String get location;

  /// No description provided for @enterLocation.
  ///
  /// In en, this message translates to:
  /// **'Enter Location'**
  String get enterLocation;

  /// No description provided for @useMyCurrentLocation.
  ///
  /// In en, this message translates to:
  /// **'Use My Current Location'**
  String get useMyCurrentLocation;

  /// No description provided for @distance.
  ///
  /// In en, this message translates to:
  /// **'Distance'**
  String get distance;

  /// No description provided for @save.
  ///
  /// In en, this message translates to:
  /// **'Save'**
  String get save;

  /// No description provided for @browseEvents.
  ///
  /// In en, this message translates to:
  /// **'Browse Events'**
  String get browseEvents;

  /// No description provided for @events.
  ///
  /// In en, this message translates to:
  /// **'Events'**
  String get events;

  /// No description provided for @ticket.
  ///
  /// In en, this message translates to:
  /// **'Ticket'**
  String get ticket;

  /// No description provided for @event.
  ///
  /// In en, this message translates to:
  /// **'Event'**
  String get event;

  /// No description provided for @ticketType.
  ///
  /// In en, this message translates to:
  /// **'Ticket Type'**
  String get ticketType;

  /// No description provided for @eventDate.
  ///
  /// In en, this message translates to:
  /// **'Event Date'**
  String get eventDate;

  /// No description provided for @eventTime.
  ///
  /// In en, this message translates to:
  /// **'Event Time'**
  String get eventTime;

  /// No description provided for @eventAddress.
  ///
  /// In en, this message translates to:
  /// **'Event Address'**
  String get eventAddress;

  /// No description provided for @ticketId.
  ///
  /// In en, this message translates to:
  /// **'Ticket Id'**
  String get ticketId;

  /// No description provided for @eventId.
  ///
  /// In en, this message translates to:
  /// **'Event Id'**
  String get eventId;

  /// No description provided for @refundTicket.
  ///
  /// In en, this message translates to:
  /// **'Refund Ticket'**
  String get refundTicket;

  /// No description provided for @reportEvent.
  ///
  /// In en, this message translates to:
  /// **'Report Event'**
  String get reportEvent;

  /// No description provided for @contactOrganizer.
  ///
  /// In en, this message translates to:
  /// **'Contact Organizer'**
  String get contactOrganizer;

  /// No description provided for @refund.
  ///
  /// In en, this message translates to:
  /// **'Refund'**
  String get refund;

  /// No description provided for @refundYourTicket.
  ///
  /// In en, this message translates to:
  /// **'Refund your Ticket'**
  String get refundYourTicket;

  /// No description provided for @refundTicketDescription.
  ///
  /// In en, this message translates to:
  /// **'We will review your refund and will notify you once it’s completed. The refund will be processed to your original payment method within 7 business days.'**
  String get refundTicketDescription;

  /// No description provided for @refundingReason.
  ///
  /// In en, this message translates to:
  /// **'Refunding reason'**
  String get refundingReason;

  /// No description provided for @selectReason.
  ///
  /// In en, this message translates to:
  /// **'Select a reason'**
  String get selectReason;

  /// No description provided for @changeInSchedule.
  ///
  /// In en, this message translates to:
  /// **'Change in Schedule'**
  String get changeInSchedule;

  /// No description provided for @eventCancellation.
  ///
  /// In en, this message translates to:
  /// **'Event Cancellation'**
  String get eventCancellation;

  /// No description provided for @rescheduledEvent.
  ///
  /// In en, this message translates to:
  /// **'Rescheduled Event'**
  String get rescheduledEvent;

  /// No description provided for @weatherConditions.
  ///
  /// In en, this message translates to:
  /// **'Weather Conditions'**
  String get weatherConditions;

  /// No description provided for @personalEmergency.
  ///
  /// In en, this message translates to:
  /// **'Personal Emergency'**
  String get personalEmergency;

  /// No description provided for @notification.
  ///
  /// In en, this message translates to:
  /// **'Notification'**
  String get notification;

  /// No description provided for @myEvents.
  ///
  /// In en, this message translates to:
  /// **'My Events'**
  String get myEvents;

  /// No description provided for @myFavorites.
  ///
  /// In en, this message translates to:
  /// **'My Favorites'**
  String get myFavorites;

  /// No description provided for @following.
  ///
  /// In en, this message translates to:
  /// **'Following'**
  String get following;

  /// No description provided for @defaultLocation.
  ///
  /// In en, this message translates to:
  /// **'Default Location'**
  String get defaultLocation;

  /// No description provided for @accountDetails.
  ///
  /// In en, this message translates to:
  /// **'Account Details'**
  String get accountDetails;

  /// No description provided for @settings.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settings;

  /// No description provided for @logout.
  ///
  /// In en, this message translates to:
  /// **'Logout'**
  String get logout;

  /// No description provided for @defaultLocationTitle.
  ///
  /// In en, this message translates to:
  /// **'Set a default location. Events will be suggested based on it.'**
  String get defaultLocationTitle;

  /// No description provided for @searchForLocation.
  ///
  /// In en, this message translates to:
  /// **'Search for location'**
  String get searchForLocation;

  /// No description provided for @generalInfo.
  ///
  /// In en, this message translates to:
  /// **'General Info'**
  String get generalInfo;

  /// No description provided for @phone.
  ///
  /// In en, this message translates to:
  /// **'Phone'**
  String get phone;

  /// No description provided for @address.
  ///
  /// In en, this message translates to:
  /// **'Address'**
  String get address;

  /// No description provided for @language.
  ///
  /// In en, this message translates to:
  /// **'Language'**
  String get language;

  /// No description provided for @changePassword.
  ///
  /// In en, this message translates to:
  /// **'Change Password'**
  String get changePassword;

  /// No description provided for @english.
  ///
  /// In en, this message translates to:
  /// **'English'**
  String get english;

  /// No description provided for @french.
  ///
  /// In en, this message translates to:
  /// **'French'**
  String get french;

  /// No description provided for @currentPassMsg.
  ///
  /// In en, this message translates to:
  /// **'Provide your current password to verify'**
  String get currentPassMsg;

  /// No description provided for @currentPassword.
  ///
  /// In en, this message translates to:
  /// **'Current Password'**
  String get currentPassword;

  /// No description provided for @enterCurrentPassword.
  ///
  /// In en, this message translates to:
  /// **'Enter Current Password'**
  String get enterCurrentPassword;

  /// No description provided for @setNewPassword.
  ///
  /// In en, this message translates to:
  /// **'Set a new password'**
  String get setNewPassword;

  /// No description provided for @newPassword.
  ///
  /// In en, this message translates to:
  /// **'New Password'**
  String get newPassword;

  /// No description provided for @enterNewPassword.
  ///
  /// In en, this message translates to:
  /// **'Enter New Password'**
  String get enterNewPassword;

  /// No description provided for @reenterNewPassword.
  ///
  /// In en, this message translates to:
  /// **'Re-enter New Password'**
  String get reenterNewPassword;

  /// No description provided for @purchaseTicket.
  ///
  /// In en, this message translates to:
  /// **'Purchase Ticket'**
  String get purchaseTicket;

  /// No description provided for @ticketPurchase.
  ///
  /// In en, this message translates to:
  /// **'Ticket Purchase'**
  String get ticketPurchase;

  /// No description provided for @selectDate.
  ///
  /// In en, this message translates to:
  /// **'Select a Date'**
  String get selectDate;

  /// No description provided for @selectTicketType.
  ///
  /// In en, this message translates to:
  /// **'Select a Ticket Type'**
  String get selectTicketType;

  /// No description provided for @numberOfTickets.
  ///
  /// In en, this message translates to:
  /// **'Number of Tickets'**
  String get numberOfTickets;

  /// No description provided for @addToCart.
  ///
  /// In en, this message translates to:
  /// **'Add to Cart'**
  String get addToCart;

  /// No description provided for @applyPromoCode.
  ///
  /// In en, this message translates to:
  /// **'Apply Promo Code'**
  String get applyPromoCode;

  /// No description provided for @apply.
  ///
  /// In en, this message translates to:
  /// **'Apply'**
  String get apply;

  /// No description provided for @grandTotal.
  ///
  /// In en, this message translates to:
  /// **'Grand Total'**
  String get grandTotal;

  /// No description provided for @purchase.
  ///
  /// In en, this message translates to:
  /// **'Purchase'**
  String get purchase;

  /// No description provided for @cart.
  ///
  /// In en, this message translates to:
  /// **'Cart'**
  String get cart;

  /// No description provided for @cartOverview.
  ///
  /// In en, this message translates to:
  /// **'Cart Overview'**
  String get cartOverview;

  /// No description provided for @clearAll.
  ///
  /// In en, this message translates to:
  /// **'Clear All'**
  String get clearAll;

  /// No description provided for @subTotal.
  ///
  /// In en, this message translates to:
  /// **'Sub Total'**
  String get subTotal;

  /// No description provided for @managementFees.
  ///
  /// In en, this message translates to:
  /// **'Management Fees'**
  String get managementFees;

  /// No description provided for @orderSummary.
  ///
  /// In en, this message translates to:
  /// **'Order Summary'**
  String get orderSummary;

  /// No description provided for @billingInformation.
  ///
  /// In en, this message translates to:
  /// **'Billing Information'**
  String get billingInformation;

  /// No description provided for @checkoutCheckbox1.
  ///
  /// In en, this message translates to:
  /// **'Keep me updated on more events and news from this event organizer.'**
  String get checkoutCheckbox1;

  /// No description provided for @confirm.
  ///
  /// In en, this message translates to:
  /// **'Confirm'**
  String get confirm;

  /// No description provided for @currentlyNoEventsAreRunning.
  ///
  /// In en, this message translates to:
  /// **'Currently No Events Are Running'**
  String get currentlyNoEventsAreRunning;

  /// No description provided for @newTicket.
  ///
  /// In en, this message translates to:
  /// **'New'**
  String get newTicket;

  /// No description provided for @details.
  ///
  /// In en, this message translates to:
  /// **'Details'**
  String get details;

  /// No description provided for @organizer.
  ///
  /// In en, this message translates to:
  /// **'Organizer'**
  String get organizer;

  /// No description provided for @unfollow.
  ///
  /// In en, this message translates to:
  /// **'Unfollow'**
  String get unfollow;

  /// No description provided for @ticketPurchaseLastDate.
  ///
  /// In en, this message translates to:
  /// **'Ticket Purchase Last Date'**
  String get ticketPurchaseLastDate;

  /// No description provided for @ticketTypesAvailable.
  ///
  /// In en, this message translates to:
  /// **'Ticket Types Available'**
  String get ticketTypesAvailable;

  /// No description provided for @inStock.
  ///
  /// In en, this message translates to:
  /// **'In Stock'**
  String get inStock;

  /// No description provided for @outOfStock.
  ///
  /// In en, this message translates to:
  /// **'Out of Stock'**
  String get outOfStock;

  /// No description provided for @checkout.
  ///
  /// In en, this message translates to:
  /// **'Checkout'**
  String get checkout;

  /// No description provided for @mobile.
  ///
  /// In en, this message translates to:
  /// **'Mobile'**
  String get mobile;

  /// No description provided for @iAgreeTo.
  ///
  /// In en, this message translates to:
  /// **'I agree to the'**
  String get iAgreeTo;

  /// No description provided for @termsOfService.
  ///
  /// In en, this message translates to:
  /// **'Terms of Service'**
  String get termsOfService;

  /// No description provided for @refundPolicy.
  ///
  /// In en, this message translates to:
  /// **'Refund Policy'**
  String get refundPolicy;

  /// No description provided for @and.
  ///
  /// In en, this message translates to:
  /// **'and'**
  String get and;

  /// No description provided for @permissionDenied.
  ///
  /// In en, this message translates to:
  /// **'Permission Denied'**
  String get permissionDenied;

  /// No description provided for @locationPermissionMessage.
  ///
  /// In en, this message translates to:
  /// **'You have to enable your location permission to access this feature'**
  String get locationPermissionMessage;

  /// No description provided for @ok.
  ///
  /// In en, this message translates to:
  /// **'OK'**
  String get ok;

  /// No description provided for @fullName.
  ///
  /// In en, this message translates to:
  /// **'Full Name'**
  String get fullName;

  /// No description provided for @totalEvents.
  ///
  /// In en, this message translates to:
  /// **'Total Events'**
  String get totalEvents;

  /// No description provided for @seeAllReviews.
  ///
  /// In en, this message translates to:
  /// **'See All Reviews'**
  String get seeAllReviews;

  /// No description provided for @upcomingEvents.
  ///
  /// In en, this message translates to:
  /// **'Upcoming Events'**
  String get upcomingEvents;

  /// No description provided for @previousEvents.
  ///
  /// In en, this message translates to:
  /// **'Previous Events'**
  String get previousEvents;

  /// No description provided for @noUpcomingEvents.
  ///
  /// In en, this message translates to:
  /// **'There are no upcoming events'**
  String get noUpcomingEvents;

  /// No description provided for @noPreviousEvents.
  ///
  /// In en, this message translates to:
  /// **'There are no previous events'**
  String get noPreviousEvents;

  /// No description provided for @privacyPolicy.
  ///
  /// In en, this message translates to:
  /// **'Privacy Policy'**
  String get privacyPolicy;

  /// No description provided for @discoverAndExploreEvents.
  ///
  /// In en, this message translates to:
  /// **'Discover and Explore Events'**
  String get discoverAndExploreEvents;

  /// No description provided for @onboardingDescription1.
  ///
  /// In en, this message translates to:
  /// **'Find a variety of events happening around you. From concerts to workshops, there\'s something for everyone.'**
  String get onboardingDescription1;

  /// No description provided for @purchaseTicketsWithEase.
  ///
  /// In en, this message translates to:
  /// **'Purchase Tickets with Ease'**
  String get purchaseTicketsWithEase;

  /// No description provided for @onboardingDescription2.
  ///
  /// In en, this message translates to:
  /// **'Secure your spot at any event quickly. Purchase tickets in just a few steps and receive instant confirmation.'**
  String get onboardingDescription2;

  /// No description provided for @followOrganizersAndStayInformed.
  ///
  /// In en, this message translates to:
  /// **'Follow Organizers and Stay Informed'**
  String get followOrganizersAndStayInformed;

  /// No description provided for @onboardingDescription3.
  ///
  /// In en, this message translates to:
  /// **'Follow your favorite event organizers to get updates and notifications about new events and special announcements.'**
  String get onboardingDescription3;

  /// No description provided for @next.
  ///
  /// In en, this message translates to:
  /// **'Next'**
  String get next;

  /// No description provided for @letsGetStarted.
  ///
  /// In en, this message translates to:
  /// **'Let’s Get Started'**
  String get letsGetStarted;

  /// No description provided for @favoriteListEmpty.
  ///
  /// In en, this message translates to:
  /// **'Your favorite list is empty!'**
  String get favoriteListEmpty;

  /// No description provided for @eventListEmpty.
  ///
  /// In en, this message translates to:
  /// **'Your event list is empty!'**
  String get eventListEmpty;

  /// No description provided for @followingListEmpty.
  ///
  /// In en, this message translates to:
  /// **'Your following list is empty!'**
  String get followingListEmpty;

  /// No description provided for @refundTicketMsg.
  ///
  /// In en, this message translates to:
  /// **'We will review your refund and will notify you once it’s completed. The refund will be processed to your original payment method within 7 business days.'**
  String get refundTicketMsg;

  /// No description provided for @selectAReason.
  ///
  /// In en, this message translates to:
  /// **'Select a reason'**
  String get selectAReason;

  /// No description provided for @profilePhoto.
  ///
  /// In en, this message translates to:
  /// **'Profile Photo'**
  String get profilePhoto;

  /// No description provided for @camera.
  ///
  /// In en, this message translates to:
  /// **'Camera'**
  String get camera;

  /// No description provided for @gallery.
  ///
  /// In en, this message translates to:
  /// **'Gallery'**
  String get gallery;

  /// No description provided for @enableLocationForLocalEvents.
  ///
  /// In en, this message translates to:
  /// **'Enable Location for Local Events'**
  String get enableLocationForLocalEvents;

  /// No description provided for @turnOnLocationAccess.
  ///
  /// In en, this message translates to:
  /// **'Turn on location access to receive curated event suggestions based on where you are.'**
  String get turnOnLocationAccess;

  /// No description provided for @eventGuests.
  ///
  /// In en, this message translates to:
  /// **'Event Guests'**
  String get eventGuests;

  /// No description provided for @rateThisEvent.
  ///
  /// In en, this message translates to:
  /// **'Rate This Event'**
  String get rateThisEvent;

  /// No description provided for @ratingAndReviews.
  ///
  /// In en, this message translates to:
  /// **'Rating & Reviews'**
  String get ratingAndReviews;

  /// No description provided for @readAllReviews.
  ///
  /// In en, this message translates to:
  /// **'Read all reviews'**
  String get readAllReviews;

  /// No description provided for @writeYourReview.
  ///
  /// In en, this message translates to:
  /// **'Write your review'**
  String get writeYourReview;

  /// No description provided for @review.
  ///
  /// In en, this message translates to:
  /// **'Review'**
  String get review;

  /// No description provided for @rateAndReviewThisEvent.
  ///
  /// In en, this message translates to:
  /// **'Rate & Review this event'**
  String get rateAndReviewThisEvent;

  /// No description provided for @rate.
  ///
  /// In en, this message translates to:
  /// **'Rate'**
  String get rate;

  /// No description provided for @allReviews.
  ///
  /// In en, this message translates to:
  /// **'All Reviews'**
  String get allReviews;

  /// No description provided for @ratings.
  ///
  /// In en, this message translates to:
  /// **'Ratings'**
  String get ratings;

  /// No description provided for @reviews.
  ///
  /// In en, this message translates to:
  /// **'Reviews'**
  String get reviews;

  /// No description provided for @noMoreItems.
  ///
  /// In en, this message translates to:
  /// **'No More Items'**
  String get noMoreItems;

  /// No description provided for @empty.
  ///
  /// In en, this message translates to:
  /// **'Empty'**
  String get empty;

  /// No description provided for @similarEvents.
  ///
  /// In en, this message translates to:
  /// **'Similar Events'**
  String get similarEvents;

  /// No description provided for @whatKindOfIssuesAreYouFacing.
  ///
  /// In en, this message translates to:
  /// **'What kind of issues are you facing'**
  String get whatKindOfIssuesAreYouFacing;

  /// No description provided for @inappropriateContent.
  ///
  /// In en, this message translates to:
  /// **'Inappropriate Content'**
  String get inappropriateContent;

  /// No description provided for @inappropriateContentDescription.
  ///
  /// In en, this message translates to:
  /// **'Report events that have offensive or unsuitable content.'**
  String get inappropriateContentDescription;

  /// No description provided for @spamOrScam.
  ///
  /// In en, this message translates to:
  /// **'Spam or Scam'**
  String get spamOrScam;

  /// No description provided for @spamOrScamDescription.
  ///
  /// In en, this message translates to:
  /// **'Report events that appear to be fraudulent or deceptive.'**
  String get spamOrScamDescription;

  /// No description provided for @incorrectInformation.
  ///
  /// In en, this message translates to:
  /// **'Incorrect Information'**
  String get incorrectInformation;

  /// No description provided for @incorrectInformationDescription.
  ///
  /// In en, this message translates to:
  /// **'Report events that have misleading or incorrect details such as dates, locations, or descriptions.'**
  String get incorrectInformationDescription;

  /// No description provided for @safetyConcerns.
  ///
  /// In en, this message translates to:
  /// **'Safety Concerns'**
  String get safetyConcerns;

  /// No description provided for @safetyConcernsDescription.
  ///
  /// In en, this message translates to:
  /// **'Report events that pose potential risks or dangers to attendees.'**
  String get safetyConcernsDescription;

  /// No description provided for @violationOfTerms.
  ///
  /// In en, this message translates to:
  /// **'Violation of Terms'**
  String get violationOfTerms;

  /// No description provided for @violationOfTermsDescription.
  ///
  /// In en, this message translates to:
  /// **'Report events that violate the platform’s terms of service or community guidelines.'**
  String get violationOfTermsDescription;

  /// No description provided for @organizerMisconduct.
  ///
  /// In en, this message translates to:
  /// **'Organizer Misconduct'**
  String get organizerMisconduct;

  /// No description provided for @organizerMisconductDescription.
  ///
  /// In en, this message translates to:
  /// **'Report inappropriate behavior or actions by the event organizer.'**
  String get organizerMisconductDescription;

  /// No description provided for @pricingIssues.
  ///
  /// In en, this message translates to:
  /// **'Pricing Issues'**
  String get pricingIssues;

  /// No description provided for @pricingIssuesDescription.
  ///
  /// In en, this message translates to:
  /// **'Report problems related to ticket pricing, such as overcharging or hidden fees.'**
  String get pricingIssuesDescription;

  /// No description provided for @other.
  ///
  /// In en, this message translates to:
  /// **'Other'**
  String get other;

  /// No description provided for @otherDescription.
  ///
  /// In en, this message translates to:
  /// **'For any other issues not covered by the above options, prompting users to provide details in the optional text field.'**
  String get otherDescription;

  /// No description provided for @writeInDetailsOptional.
  ///
  /// In en, this message translates to:
  /// **'Write in Details (Optional)'**
  String get writeInDetailsOptional;

  /// No description provided for @report.
  ///
  /// In en, this message translates to:
  /// **'Report'**
  String get report;

  /// No description provided for @agreeToContinue.
  ///
  /// In en, this message translates to:
  /// **'You must agree to continue.'**
  String get agreeToContinue;

  /// No description provided for @registered.
  ///
  /// In en, this message translates to:
  /// **'Registered'**
  String get registered;

  /// No description provided for @eventSharedSuccessfully.
  ///
  /// In en, this message translates to:
  /// **'The event has been shared successfully!'**
  String get eventSharedSuccessfully;

  /// No description provided for @eventInvitation.
  ///
  /// In en, this message translates to:
  /// **'Join us for an exciting event! 🎉'**
  String get eventInvitation;

  /// No description provided for @eventTitle.
  ///
  /// In en, this message translates to:
  /// **'Event Title:'**
  String get eventTitle;

  /// No description provided for @eventDateTime.
  ///
  /// In en, this message translates to:
  /// **'Date & Time:'**
  String get eventDateTime;

  /// No description provided for @eventLocation.
  ///
  /// In en, this message translates to:
  /// **'Location:'**
  String get eventLocation;

  /// No description provided for @eventCallToAction.
  ///
  /// In en, this message translates to:
  /// **'Don\'t miss out on this opportunity to join us!'**
  String get eventCallToAction;

  /// No description provided for @eventMoreInfo.
  ///
  /// In en, this message translates to:
  /// **'For more information, visit:'**
  String get eventMoreInfo;

  /// No description provided for @eventLookingForward.
  ///
  /// In en, this message translates to:
  /// **'Looking forward to seeing you there!'**
  String get eventLookingForward;

  /// No description provided for @enterNumberOfTickets.
  ///
  /// In en, this message translates to:
  /// **'Please enter the number of tickets'**
  String get enterNumberOfTickets;

  /// No description provided for @selectTicket.
  ///
  /// In en, this message translates to:
  /// **'Please select a ticket'**
  String get selectTicket;

  /// No description provided for @ticketAddedToCart.
  ///
  /// In en, this message translates to:
  /// **'The ticket has been successfully added to your cart.'**
  String get ticketAddedToCart;

  /// No description provided for @itemRemovedFromCart.
  ///
  /// In en, this message translates to:
  /// **'The item has been successfully removed from your cart.'**
  String get itemRemovedFromCart;

  /// No description provided for @allItemsRemovedFromCart.
  ///
  /// In en, this message translates to:
  /// **'All items have been successfully removed from your shopping cart.'**
  String get allItemsRemovedFromCart;

  /// No description provided for @ticketQuantityExceedsStock.
  ///
  /// In en, this message translates to:
  /// **'The ticket quantity cannot exceed the available stock.'**
  String get ticketQuantityExceedsStock;

  /// No description provided for @requiredField.
  ///
  /// In en, this message translates to:
  /// **'This is a required field'**
  String get requiredField;

  /// No description provided for @featured.
  ///
  /// In en, this message translates to:
  /// **'Featured'**
  String get featured;

  /// No description provided for @newEvent.
  ///
  /// In en, this message translates to:
  /// **'New Events'**
  String get newEvent;

  /// No description provided for @cartIsEmpty.
  ///
  /// In en, this message translates to:
  /// **'Your cart is empty. Please add tickets to proceed with the purchase.'**
  String get cartIsEmpty;

  /// No description provided for @showOnMap.
  ///
  /// In en, this message translates to:
  /// **'Show on map'**
  String get showOnMap;

  /// No description provided for @bankDetails.
  ///
  /// In en, this message translates to:
  /// **'Bank Details'**
  String get bankDetails;

  /// No description provided for @bankInformation.
  ///
  /// In en, this message translates to:
  /// **'Bank Information'**
  String get bankInformation;

  /// No description provided for @addBank.
  ///
  /// In en, this message translates to:
  /// **'Add Bank'**
  String get addBank;

  /// No description provided for @accountHolderName.
  ///
  /// In en, this message translates to:
  /// **'Account Holder Name'**
  String get accountHolderName;

  /// No description provided for @bankName.
  ///
  /// In en, this message translates to:
  /// **'Bank Name'**
  String get bankName;

  /// No description provided for @accountNumber.
  ///
  /// In en, this message translates to:
  /// **'Account Number'**
  String get accountNumber;

  /// No description provided for @swiftBicCode.
  ///
  /// In en, this message translates to:
  /// **'SWIFT/BIC Code'**
  String get swiftBicCode;

  /// No description provided for @routingNumber.
  ///
  /// In en, this message translates to:
  /// **'Routing Number'**
  String get routingNumber;

  /// No description provided for @selectBank.
  ///
  /// In en, this message translates to:
  /// **'Select Bank'**
  String get selectBank;

  /// No description provided for @no_notification_msg.
  ///
  /// In en, this message translates to:
  /// **'No Notifications Right Now'**
  String get no_notification_msg;

  /// No description provided for @downloadStarted.
  ///
  /// In en, this message translates to:
  /// **'Ticket Download Started'**
  String get downloadStarted;

  /// No description provided for @downloadFinished.
  ///
  /// In en, this message translates to:
  /// **'Ticket Download Completed'**
  String get downloadFinished;

  /// No description provided for @downloadFailed.
  ///
  /// In en, this message translates to:
  /// **'Ticket Download Failed'**
  String get downloadFailed;

  /// No description provided for @fileAccessDenied.
  ///
  /// In en, this message translates to:
  /// **'Please grant file access in your settings to enable downloads to your device'**
  String get fileAccessDenied;

  /// No description provided for @eventFree.
  ///
  /// In en, this message translates to:
  /// **'The event is free!!'**
  String get eventFree;

  /// No description provided for @preference.
  ///
  /// In en, this message translates to:
  /// **'Preference'**
  String get preference;

  /// No description provided for @categoriesInterested.
  ///
  /// In en, this message translates to:
  /// **'Categories you\'re interested in'**
  String get categoriesInterested;

  /// No description provided for @radiusMsg.
  ///
  /// In en, this message translates to:
  /// **'Radius from your location'**
  String get radiusMsg;

  /// No description provided for @radius.
  ///
  /// In en, this message translates to:
  /// **'Enter your radius'**
  String get radius;

  /// No description provided for @skip.
  ///
  /// In en, this message translates to:
  /// **'Skip'**
  String get skip;

  /// No description provided for @freeEvents.
  ///
  /// In en, this message translates to:
  /// **'Free Events'**
  String get freeEvents;

  /// No description provided for @noEventMessage.
  ///
  /// In en, this message translates to:
  /// **'There are no events available within the selected radius or category based on your preferences.\nPlease update your preference settings to explore more events.'**
  String get noEventMessage;

  /// No description provided for @locationValidate.
  ///
  /// In en, this message translates to:
  /// **'Please enter valid location or turn on default location'**
  String get locationValidate;

  /// No description provided for @imageFileSizeError.
  ///
  /// In en, this message translates to:
  /// **'File size exceeds the 2MB limit. Please choose a smaller file and try again'**
  String get imageFileSizeError;

  /// No description provided for @noOrganizer.
  ///
  /// In en, this message translates to:
  /// **'No organizers found'**
  String get noOrganizer;

  /// No description provided for @map.
  ///
  /// In en, this message translates to:
  /// **'Map'**
  String get map;

  /// No description provided for @selectAll.
  ///
  /// In en, this message translates to:
  /// **'Select All'**
  String get selectAll;

  /// No description provided for @clearSelections.
  ///
  /// In en, this message translates to:
  /// **'Clear Selections'**
  String get clearSelections;

  /// No description provided for @searchForCity.
  ///
  /// In en, this message translates to:
  /// **'Search for city'**
  String get searchForCity;

  /// No description provided for @eventTypes.
  ///
  /// In en, this message translates to:
  /// **'Event Types'**
  String get eventTypes;

  /// No description provided for @seeAll.
  ///
  /// In en, this message translates to:
  /// **'See All'**
  String get seeAll;

  /// No description provided for @myRefunds.
  ///
  /// In en, this message translates to:
  /// **'My Refunds'**
  String get myRefunds;

  /// No description provided for @expired.
  ///
  /// In en, this message translates to:
  /// **'Expired'**
  String get expired;

  /// No description provided for @download.
  ///
  /// In en, this message translates to:
  /// **'Download'**
  String get download;

  /// No description provided for @refundRequest.
  ///
  /// In en, this message translates to:
  /// **'Refund Request'**
  String get refundRequest;

  /// No description provided for @acceptRefund.
  ///
  /// In en, this message translates to:
  /// **'Accept Refund'**
  String get acceptRefund;

  /// No description provided for @rejectRefund.
  ///
  /// In en, this message translates to:
  /// **'Reject Refund'**
  String get rejectRefund;

  /// No description provided for @refundSent.
  ///
  /// In en, this message translates to:
  /// **'Refund Sent'**
  String get refundSent;

  /// No description provided for @participant.
  ///
  /// In en, this message translates to:
  /// **'Participant'**
  String get participant;

  /// No description provided for @paymentSuccessful.
  ///
  /// In en, this message translates to:
  /// **'Payment Successful'**
  String get paymentSuccessful;

  /// No description provided for @yourTicketsHasBeenPurchasedSuccessfully.
  ///
  /// In en, this message translates to:
  /// **'Your tickets has been purchased successfully'**
  String get yourTicketsHasBeenPurchasedSuccessfully;

  /// No description provided for @transactionId.
  ///
  /// In en, this message translates to:
  /// **'Transaction ID'**
  String get transactionId;

  /// No description provided for @goHome.
  ///
  /// In en, this message translates to:
  /// **'Go Home'**
  String get goHome;

  /// No description provided for @discountAmount.
  ///
  /// In en, this message translates to:
  /// **'Discount Amount'**
  String get discountAmount;

  /// No description provided for @afterDiscount.
  ///
  /// In en, this message translates to:
  /// **'After Discount'**
  String get afterDiscount;

  /// No description provided for @pleaseSelectADate.
  ///
  /// In en, this message translates to:
  /// **'Please select a date'**
  String get pleaseSelectADate;

  /// No description provided for @locationPermissionNeeded.
  ///
  /// In en, this message translates to:
  /// **'Location Permission needed'**
  String get locationPermissionNeeded;

  /// No description provided for @emptyCart.
  ///
  /// In en, this message translates to:
  /// **'Your cart is empty. Please add tickets before applying promo code.'**
  String get emptyCart;

  /// No description provided for @promoCodeApplied.
  ///
  /// In en, this message translates to:
  /// **'Promo code is already applied.'**
  String get promoCodeApplied;

  /// No description provided for @differentTicketType.
  ///
  /// In en, this message translates to:
  /// **'A different type or event ticket already exists in the cart. Please check out or clear the cart to add a new ticket.'**
  String get differentTicketType;

  /// No description provided for @discountAmountExceedsPrice.
  ///
  /// In en, this message translates to:
  /// **'Discount amount cannot exceed the actual price'**
  String get discountAmountExceedsPrice;

  /// No description provided for @passwordChangedSuccessfully.
  ///
  /// In en, this message translates to:
  /// **'Password Changed Successfully'**
  String get passwordChangedSuccessfully;

  /// No description provided for @totalAmount.
  ///
  /// In en, this message translates to:
  /// **'Total Amount'**
  String get totalAmount;

  /// No description provided for @deleteTicket.
  ///
  /// In en, this message translates to:
  /// **'Delete Ticket'**
  String get deleteTicket;

  /// No description provided for @deleteTicketMsg.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to delete this ticket?'**
  String get deleteTicketMsg;

  /// No description provided for @cancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get cancel;

  /// No description provided for @delete.
  ///
  /// In en, this message translates to:
  /// **'Delete'**
  String get delete;

  /// No description provided for @accountAlreadyExists.
  ///
  /// In en, this message translates to:
  /// **'You have already an account with this email, try to connect with email address, or go to forgotten password'**
  String get accountAlreadyExists;

  /// No description provided for @upcoming.
  ///
  /// In en, this message translates to:
  /// **'Upcoming'**
  String get upcoming;

  /// No description provided for @previous.
  ///
  /// In en, this message translates to:
  /// **'Previous'**
  String get previous;

  /// No description provided for @views.
  ///
  /// In en, this message translates to:
  /// **'Views'**
  String get views;

  /// No description provided for @vat.
  ///
  /// In en, this message translates to:
  /// **'VAT'**
  String get vat;

  /// No description provided for @platformVat.
  ///
  /// In en, this message translates to:
  /// **'Platform VAT'**
  String get platformVat;

  /// No description provided for @ticketVat.
  ///
  /// In en, this message translates to:
  /// **'Ticket VAT'**
  String get ticketVat;

  /// No description provided for @successful.
  ///
  /// In en, this message translates to:
  /// **'Successful'**
  String get successful;

  /// No description provided for @pleaseLoginToAccess.
  ///
  /// In en, this message translates to:
  /// **'Please login to access this feature'**
  String get pleaseLoginToAccess;

  /// No description provided for @deleteAccount.
  ///
  /// In en, this message translates to:
  /// **'Delete Account'**
  String get deleteAccount;

  /// No description provided for @deleteAccountMsg.
  ///
  /// In en, this message translates to:
  /// **'Account deletion request has been sent to the admin. Please wait for confirmation.'**
  String get deleteAccountMsg;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['en'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en':
      return AppLocalizationsEn();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
