import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_model.freezed.dart';
part 'api_model.g.dart';

@freezed
class TokenDetails with _$TokenDetails {
  const factory TokenDetails({
    required String tokenType,
    required String accessToken,
    required int expiresIn,
  }) = _TokenDetails;

  factory TokenDetails.fromJson(Map<String, dynamic> json) =>
      _$TokenDetailsFromJson(json);
}

@freezed
class ContactDetails with _$ContactDetails {
  const factory ContactDetails({
    required int accountId,
    required String mobilePrefix,
    String? mobileNumber,
    required String guid,
    required bool isActive,
    required String createdBy,
    required String createdOn,
    String? updatedBy,
    String? updatedOn,
    required bool isDeleted,
    String? deletedBy,
    String? deletedOn,
  }) = _ContactDetails;

  factory ContactDetails.fromJson(Map<String, dynamic> json) =>
      _$ContactDetailsFromJson(json);
}

@freezed
class User with _$User {
  const factory User({
    String? otherNationalityName,
    String? nationalityCode,
    required int userId,
    required int accountId,
    required String userName,
    required String lastName,
    required String firstName,
    String? suffix,
    required String middleName,
    String? dateOfBirth,
    required String mobilePrefix,
    required String mobileNumber,
    String? secondaryEmailAddress,
    String? companyPosition,
    required String guid,
    required bool isActive,
    required String createdBy,
    required String createdOn,
    String? updatedBy,
    String? updatedOn,
    required bool isDeleted,
    String? deletedBy,
    String? deletedOn,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

@freezed
class AccountDetails with _$AccountDetails {
  const factory AccountDetails({
    required String iframeUrl,
    required bool isAccountRegistered,
  }) = _AccountDetails;

  factory AccountDetails.fromJson(Map<String, dynamic> json) =>
      _$AccountDetailsFromJson(json);
}

@freezed
class AccountInfo with _$AccountInfo {
  const factory AccountInfo({
    required int accountId,
    required String guid,
    required String accountTypeCode,
    String? nationalityCode,
    required String code,
    required String accountCode,
    required String name,
    required String emailAddress,
    String? addressDetails,
    required ContactDetails contactDetails,
    required List<User> users,
    required bool isActive,
    required String createdBy,
    required String createdOn,
    String? updatedBy,
    String? updatedOn,
    required bool isDeleted,
    String? deletedBy,
    String? deletedOn,
  }) = _AccountInfo;

  factory AccountInfo.fromJson(Map<String, dynamic> json) =>
      _$AccountInfoFromJson(json);
}

@freezed
class ApiResponse with _$ApiResponse {
  const factory ApiResponse({
    required TokenDetails tokenDetails,
    required AccountDetails accountDetails,
  }) = _ApiResponse;

  factory ApiResponse.fromJson(Map<String, dynamic> json) =>
      _$ApiResponseFromJson(json);
}
