// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TokenDetailsImpl _$$TokenDetailsImplFromJson(Map<String, dynamic> json) =>
    _$TokenDetailsImpl(
      tokenType: json['tokenType'] as String,
      accessToken: json['accessToken'] as String,
      expiresIn: (json['expiresIn'] as num).toInt(),
    );

Map<String, dynamic> _$$TokenDetailsImplToJson(_$TokenDetailsImpl instance) =>
    <String, dynamic>{
      'tokenType': instance.tokenType,
      'accessToken': instance.accessToken,
      'expiresIn': instance.expiresIn,
    };

_$ContactDetailsImpl _$$ContactDetailsImplFromJson(Map<String, dynamic> json) =>
    _$ContactDetailsImpl(
      accountId: (json['accountId'] as num).toInt(),
      mobilePrefix: json['mobilePrefix'] as String,
      mobileNumber: json['mobileNumber'] as String?,
      guid: json['guid'] as String,
      isActive: json['isActive'] as bool,
      createdBy: json['createdBy'] as String,
      createdOn: json['createdOn'] as String,
      updatedBy: json['updatedBy'] as String?,
      updatedOn: json['updatedOn'] as String?,
      isDeleted: json['isDeleted'] as bool,
      deletedBy: json['deletedBy'] as String?,
      deletedOn: json['deletedOn'] as String?,
    );

Map<String, dynamic> _$$ContactDetailsImplToJson(
        _$ContactDetailsImpl instance) =>
    <String, dynamic>{
      'accountId': instance.accountId,
      'mobilePrefix': instance.mobilePrefix,
      'mobileNumber': instance.mobileNumber,
      'guid': instance.guid,
      'isActive': instance.isActive,
      'createdBy': instance.createdBy,
      'createdOn': instance.createdOn,
      'updatedBy': instance.updatedBy,
      'updatedOn': instance.updatedOn,
      'isDeleted': instance.isDeleted,
      'deletedBy': instance.deletedBy,
      'deletedOn': instance.deletedOn,
    };

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      otherNationalityName: json['otherNationalityName'] as String?,
      nationalityCode: json['nationalityCode'] as String?,
      userId: (json['userId'] as num).toInt(),
      accountId: (json['accountId'] as num).toInt(),
      userName: json['userName'] as String,
      lastName: json['lastName'] as String,
      firstName: json['firstName'] as String,
      suffix: json['suffix'] as String?,
      middleName: json['middleName'] as String,
      dateOfBirth: json['dateOfBirth'] as String?,
      mobilePrefix: json['mobilePrefix'] as String,
      mobileNumber: json['mobileNumber'] as String,
      secondaryEmailAddress: json['secondaryEmailAddress'] as String?,
      companyPosition: json['companyPosition'] as String?,
      guid: json['guid'] as String,
      isActive: json['isActive'] as bool,
      createdBy: json['createdBy'] as String,
      createdOn: json['createdOn'] as String,
      updatedBy: json['updatedBy'] as String?,
      updatedOn: json['updatedOn'] as String?,
      isDeleted: json['isDeleted'] as bool,
      deletedBy: json['deletedBy'] as String?,
      deletedOn: json['deletedOn'] as String?,
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'otherNationalityName': instance.otherNationalityName,
      'nationalityCode': instance.nationalityCode,
      'userId': instance.userId,
      'accountId': instance.accountId,
      'userName': instance.userName,
      'lastName': instance.lastName,
      'firstName': instance.firstName,
      'suffix': instance.suffix,
      'middleName': instance.middleName,
      'dateOfBirth': instance.dateOfBirth,
      'mobilePrefix': instance.mobilePrefix,
      'mobileNumber': instance.mobileNumber,
      'secondaryEmailAddress': instance.secondaryEmailAddress,
      'companyPosition': instance.companyPosition,
      'guid': instance.guid,
      'isActive': instance.isActive,
      'createdBy': instance.createdBy,
      'createdOn': instance.createdOn,
      'updatedBy': instance.updatedBy,
      'updatedOn': instance.updatedOn,
      'isDeleted': instance.isDeleted,
      'deletedBy': instance.deletedBy,
      'deletedOn': instance.deletedOn,
    };

_$AccountDetailsImpl _$$AccountDetailsImplFromJson(Map<String, dynamic> json) =>
    _$AccountDetailsImpl(
      iframeUrl: json['iframeUrl'] as String,
      isAccountRegistered: json['isAccountRegistered'] as bool,
    );

Map<String, dynamic> _$$AccountDetailsImplToJson(
        _$AccountDetailsImpl instance) =>
    <String, dynamic>{
      'iframeUrl': instance.iframeUrl,
      'isAccountRegistered': instance.isAccountRegistered,
    };

_$AccountInfoImpl _$$AccountInfoImplFromJson(Map<String, dynamic> json) =>
    _$AccountInfoImpl(
      accountId: (json['accountId'] as num).toInt(),
      guid: json['guid'] as String,
      accountTypeCode: json['accountTypeCode'] as String,
      nationalityCode: json['nationalityCode'] as String?,
      code: json['code'] as String,
      accountCode: json['accountCode'] as String,
      name: json['name'] as String,
      emailAddress: json['emailAddress'] as String,
      addressDetails: json['addressDetails'] as String?,
      contactDetails: ContactDetails.fromJson(
          json['contactDetails'] as Map<String, dynamic>),
      users: (json['users'] as List<dynamic>)
          .map((e) => User.fromJson(e as Map<String, dynamic>))
          .toList(),
      isActive: json['isActive'] as bool,
      createdBy: json['createdBy'] as String,
      createdOn: json['createdOn'] as String,
      updatedBy: json['updatedBy'] as String?,
      updatedOn: json['updatedOn'] as String?,
      isDeleted: json['isDeleted'] as bool,
      deletedBy: json['deletedBy'] as String?,
      deletedOn: json['deletedOn'] as String?,
    );

Map<String, dynamic> _$$AccountInfoImplToJson(_$AccountInfoImpl instance) =>
    <String, dynamic>{
      'accountId': instance.accountId,
      'guid': instance.guid,
      'accountTypeCode': instance.accountTypeCode,
      'nationalityCode': instance.nationalityCode,
      'code': instance.code,
      'accountCode': instance.accountCode,
      'name': instance.name,
      'emailAddress': instance.emailAddress,
      'addressDetails': instance.addressDetails,
      'contactDetails': instance.contactDetails,
      'users': instance.users,
      'isActive': instance.isActive,
      'createdBy': instance.createdBy,
      'createdOn': instance.createdOn,
      'updatedBy': instance.updatedBy,
      'updatedOn': instance.updatedOn,
      'isDeleted': instance.isDeleted,
      'deletedBy': instance.deletedBy,
      'deletedOn': instance.deletedOn,
    };

_$ApiResponseImpl _$$ApiResponseImplFromJson(Map<String, dynamic> json) =>
    _$ApiResponseImpl(
      tokenDetails:
          TokenDetails.fromJson(json['tokenDetails'] as Map<String, dynamic>),
      accountDetails: AccountDetails.fromJson(
          json['accountDetails'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ApiResponseImplToJson(_$ApiResponseImpl instance) =>
    <String, dynamic>{
      'tokenDetails': instance.tokenDetails,
      'accountDetails': instance.accountDetails,
    };
