// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TokenDetails _$TokenDetailsFromJson(Map<String, dynamic> json) {
  return _TokenDetails.fromJson(json);
}

/// @nodoc
mixin _$TokenDetails {
  String get tokenType => throw _privateConstructorUsedError;
  String get accessToken => throw _privateConstructorUsedError;
  int get expiresIn => throw _privateConstructorUsedError;

  /// Serializes this TokenDetails to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TokenDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TokenDetailsCopyWith<TokenDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TokenDetailsCopyWith<$Res> {
  factory $TokenDetailsCopyWith(
          TokenDetails value, $Res Function(TokenDetails) then) =
      _$TokenDetailsCopyWithImpl<$Res, TokenDetails>;
  @useResult
  $Res call({String tokenType, String accessToken, int expiresIn});
}

/// @nodoc
class _$TokenDetailsCopyWithImpl<$Res, $Val extends TokenDetails>
    implements $TokenDetailsCopyWith<$Res> {
  _$TokenDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TokenDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tokenType = null,
    Object? accessToken = null,
    Object? expiresIn = null,
  }) {
    return _then(_value.copyWith(
      tokenType: null == tokenType
          ? _value.tokenType
          : tokenType // ignore: cast_nullable_to_non_nullable
              as String,
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      expiresIn: null == expiresIn
          ? _value.expiresIn
          : expiresIn // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TokenDetailsImplCopyWith<$Res>
    implements $TokenDetailsCopyWith<$Res> {
  factory _$$TokenDetailsImplCopyWith(
          _$TokenDetailsImpl value, $Res Function(_$TokenDetailsImpl) then) =
      __$$TokenDetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String tokenType, String accessToken, int expiresIn});
}

/// @nodoc
class __$$TokenDetailsImplCopyWithImpl<$Res>
    extends _$TokenDetailsCopyWithImpl<$Res, _$TokenDetailsImpl>
    implements _$$TokenDetailsImplCopyWith<$Res> {
  __$$TokenDetailsImplCopyWithImpl(
      _$TokenDetailsImpl _value, $Res Function(_$TokenDetailsImpl) _then)
      : super(_value, _then);

  /// Create a copy of TokenDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tokenType = null,
    Object? accessToken = null,
    Object? expiresIn = null,
  }) {
    return _then(_$TokenDetailsImpl(
      tokenType: null == tokenType
          ? _value.tokenType
          : tokenType // ignore: cast_nullable_to_non_nullable
              as String,
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      expiresIn: null == expiresIn
          ? _value.expiresIn
          : expiresIn // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TokenDetailsImpl implements _TokenDetails {
  const _$TokenDetailsImpl(
      {required this.tokenType,
      required this.accessToken,
      required this.expiresIn});

  factory _$TokenDetailsImpl.fromJson(Map<String, dynamic> json) =>
      _$$TokenDetailsImplFromJson(json);

  @override
  final String tokenType;
  @override
  final String accessToken;
  @override
  final int expiresIn;

  @override
  String toString() {
    return 'TokenDetails(tokenType: $tokenType, accessToken: $accessToken, expiresIn: $expiresIn)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TokenDetailsImpl &&
            (identical(other.tokenType, tokenType) ||
                other.tokenType == tokenType) &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.expiresIn, expiresIn) ||
                other.expiresIn == expiresIn));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, tokenType, accessToken, expiresIn);

  /// Create a copy of TokenDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TokenDetailsImplCopyWith<_$TokenDetailsImpl> get copyWith =>
      __$$TokenDetailsImplCopyWithImpl<_$TokenDetailsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TokenDetailsImplToJson(
      this,
    );
  }
}

abstract class _TokenDetails implements TokenDetails {
  const factory _TokenDetails(
      {required final String tokenType,
      required final String accessToken,
      required final int expiresIn}) = _$TokenDetailsImpl;

  factory _TokenDetails.fromJson(Map<String, dynamic> json) =
      _$TokenDetailsImpl.fromJson;

  @override
  String get tokenType;
  @override
  String get accessToken;
  @override
  int get expiresIn;

  /// Create a copy of TokenDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TokenDetailsImplCopyWith<_$TokenDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ContactDetails _$ContactDetailsFromJson(Map<String, dynamic> json) {
  return _ContactDetails.fromJson(json);
}

/// @nodoc
mixin _$ContactDetails {
  int get accountId => throw _privateConstructorUsedError;
  String get mobilePrefix => throw _privateConstructorUsedError;
  String? get mobileNumber => throw _privateConstructorUsedError;
  String get guid => throw _privateConstructorUsedError;
  bool get isActive => throw _privateConstructorUsedError;
  String get createdBy => throw _privateConstructorUsedError;
  String get createdOn => throw _privateConstructorUsedError;
  String? get updatedBy => throw _privateConstructorUsedError;
  String? get updatedOn => throw _privateConstructorUsedError;
  bool get isDeleted => throw _privateConstructorUsedError;
  String? get deletedBy => throw _privateConstructorUsedError;
  String? get deletedOn => throw _privateConstructorUsedError;

  /// Serializes this ContactDetails to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ContactDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ContactDetailsCopyWith<ContactDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContactDetailsCopyWith<$Res> {
  factory $ContactDetailsCopyWith(
          ContactDetails value, $Res Function(ContactDetails) then) =
      _$ContactDetailsCopyWithImpl<$Res, ContactDetails>;
  @useResult
  $Res call(
      {int accountId,
      String mobilePrefix,
      String? mobileNumber,
      String guid,
      bool isActive,
      String createdBy,
      String createdOn,
      String? updatedBy,
      String? updatedOn,
      bool isDeleted,
      String? deletedBy,
      String? deletedOn});
}

/// @nodoc
class _$ContactDetailsCopyWithImpl<$Res, $Val extends ContactDetails>
    implements $ContactDetailsCopyWith<$Res> {
  _$ContactDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ContactDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accountId = null,
    Object? mobilePrefix = null,
    Object? mobileNumber = freezed,
    Object? guid = null,
    Object? isActive = null,
    Object? createdBy = null,
    Object? createdOn = null,
    Object? updatedBy = freezed,
    Object? updatedOn = freezed,
    Object? isDeleted = null,
    Object? deletedBy = freezed,
    Object? deletedOn = freezed,
  }) {
    return _then(_value.copyWith(
      accountId: null == accountId
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as int,
      mobilePrefix: null == mobilePrefix
          ? _value.mobilePrefix
          : mobilePrefix // ignore: cast_nullable_to_non_nullable
              as String,
      mobileNumber: freezed == mobileNumber
          ? _value.mobileNumber
          : mobileNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      guid: null == guid
          ? _value.guid
          : guid // ignore: cast_nullable_to_non_nullable
              as String,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      createdBy: null == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String,
      createdOn: null == createdOn
          ? _value.createdOn
          : createdOn // ignore: cast_nullable_to_non_nullable
              as String,
      updatedBy: freezed == updatedBy
          ? _value.updatedBy
          : updatedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedOn: freezed == updatedOn
          ? _value.updatedOn
          : updatedOn // ignore: cast_nullable_to_non_nullable
              as String?,
      isDeleted: null == isDeleted
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool,
      deletedBy: freezed == deletedBy
          ? _value.deletedBy
          : deletedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      deletedOn: freezed == deletedOn
          ? _value.deletedOn
          : deletedOn // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ContactDetailsImplCopyWith<$Res>
    implements $ContactDetailsCopyWith<$Res> {
  factory _$$ContactDetailsImplCopyWith(_$ContactDetailsImpl value,
          $Res Function(_$ContactDetailsImpl) then) =
      __$$ContactDetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int accountId,
      String mobilePrefix,
      String? mobileNumber,
      String guid,
      bool isActive,
      String createdBy,
      String createdOn,
      String? updatedBy,
      String? updatedOn,
      bool isDeleted,
      String? deletedBy,
      String? deletedOn});
}

/// @nodoc
class __$$ContactDetailsImplCopyWithImpl<$Res>
    extends _$ContactDetailsCopyWithImpl<$Res, _$ContactDetailsImpl>
    implements _$$ContactDetailsImplCopyWith<$Res> {
  __$$ContactDetailsImplCopyWithImpl(
      _$ContactDetailsImpl _value, $Res Function(_$ContactDetailsImpl) _then)
      : super(_value, _then);

  /// Create a copy of ContactDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accountId = null,
    Object? mobilePrefix = null,
    Object? mobileNumber = freezed,
    Object? guid = null,
    Object? isActive = null,
    Object? createdBy = null,
    Object? createdOn = null,
    Object? updatedBy = freezed,
    Object? updatedOn = freezed,
    Object? isDeleted = null,
    Object? deletedBy = freezed,
    Object? deletedOn = freezed,
  }) {
    return _then(_$ContactDetailsImpl(
      accountId: null == accountId
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as int,
      mobilePrefix: null == mobilePrefix
          ? _value.mobilePrefix
          : mobilePrefix // ignore: cast_nullable_to_non_nullable
              as String,
      mobileNumber: freezed == mobileNumber
          ? _value.mobileNumber
          : mobileNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      guid: null == guid
          ? _value.guid
          : guid // ignore: cast_nullable_to_non_nullable
              as String,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      createdBy: null == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String,
      createdOn: null == createdOn
          ? _value.createdOn
          : createdOn // ignore: cast_nullable_to_non_nullable
              as String,
      updatedBy: freezed == updatedBy
          ? _value.updatedBy
          : updatedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedOn: freezed == updatedOn
          ? _value.updatedOn
          : updatedOn // ignore: cast_nullable_to_non_nullable
              as String?,
      isDeleted: null == isDeleted
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool,
      deletedBy: freezed == deletedBy
          ? _value.deletedBy
          : deletedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      deletedOn: freezed == deletedOn
          ? _value.deletedOn
          : deletedOn // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ContactDetailsImpl implements _ContactDetails {
  const _$ContactDetailsImpl(
      {required this.accountId,
      required this.mobilePrefix,
      this.mobileNumber,
      required this.guid,
      required this.isActive,
      required this.createdBy,
      required this.createdOn,
      this.updatedBy,
      this.updatedOn,
      required this.isDeleted,
      this.deletedBy,
      this.deletedOn});

  factory _$ContactDetailsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ContactDetailsImplFromJson(json);

  @override
  final int accountId;
  @override
  final String mobilePrefix;
  @override
  final String? mobileNumber;
  @override
  final String guid;
  @override
  final bool isActive;
  @override
  final String createdBy;
  @override
  final String createdOn;
  @override
  final String? updatedBy;
  @override
  final String? updatedOn;
  @override
  final bool isDeleted;
  @override
  final String? deletedBy;
  @override
  final String? deletedOn;

  @override
  String toString() {
    return 'ContactDetails(accountId: $accountId, mobilePrefix: $mobilePrefix, mobileNumber: $mobileNumber, guid: $guid, isActive: $isActive, createdBy: $createdBy, createdOn: $createdOn, updatedBy: $updatedBy, updatedOn: $updatedOn, isDeleted: $isDeleted, deletedBy: $deletedBy, deletedOn: $deletedOn)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContactDetailsImpl &&
            (identical(other.accountId, accountId) ||
                other.accountId == accountId) &&
            (identical(other.mobilePrefix, mobilePrefix) ||
                other.mobilePrefix == mobilePrefix) &&
            (identical(other.mobileNumber, mobileNumber) ||
                other.mobileNumber == mobileNumber) &&
            (identical(other.guid, guid) || other.guid == guid) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
            (identical(other.createdOn, createdOn) ||
                other.createdOn == createdOn) &&
            (identical(other.updatedBy, updatedBy) ||
                other.updatedBy == updatedBy) &&
            (identical(other.updatedOn, updatedOn) ||
                other.updatedOn == updatedOn) &&
            (identical(other.isDeleted, isDeleted) ||
                other.isDeleted == isDeleted) &&
            (identical(other.deletedBy, deletedBy) ||
                other.deletedBy == deletedBy) &&
            (identical(other.deletedOn, deletedOn) ||
                other.deletedOn == deletedOn));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      accountId,
      mobilePrefix,
      mobileNumber,
      guid,
      isActive,
      createdBy,
      createdOn,
      updatedBy,
      updatedOn,
      isDeleted,
      deletedBy,
      deletedOn);

  /// Create a copy of ContactDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ContactDetailsImplCopyWith<_$ContactDetailsImpl> get copyWith =>
      __$$ContactDetailsImplCopyWithImpl<_$ContactDetailsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ContactDetailsImplToJson(
      this,
    );
  }
}

abstract class _ContactDetails implements ContactDetails {
  const factory _ContactDetails(
      {required final int accountId,
      required final String mobilePrefix,
      final String? mobileNumber,
      required final String guid,
      required final bool isActive,
      required final String createdBy,
      required final String createdOn,
      final String? updatedBy,
      final String? updatedOn,
      required final bool isDeleted,
      final String? deletedBy,
      final String? deletedOn}) = _$ContactDetailsImpl;

  factory _ContactDetails.fromJson(Map<String, dynamic> json) =
      _$ContactDetailsImpl.fromJson;

  @override
  int get accountId;
  @override
  String get mobilePrefix;
  @override
  String? get mobileNumber;
  @override
  String get guid;
  @override
  bool get isActive;
  @override
  String get createdBy;
  @override
  String get createdOn;
  @override
  String? get updatedBy;
  @override
  String? get updatedOn;
  @override
  bool get isDeleted;
  @override
  String? get deletedBy;
  @override
  String? get deletedOn;

  /// Create a copy of ContactDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ContactDetailsImplCopyWith<_$ContactDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
mixin _$User {
  String? get otherNationalityName => throw _privateConstructorUsedError;
  String? get nationalityCode => throw _privateConstructorUsedError;
  int get userId => throw _privateConstructorUsedError;
  int get accountId => throw _privateConstructorUsedError;
  String get userName => throw _privateConstructorUsedError;
  String get lastName => throw _privateConstructorUsedError;
  String get firstName => throw _privateConstructorUsedError;
  String? get suffix => throw _privateConstructorUsedError;
  String get middleName => throw _privateConstructorUsedError;
  String? get dateOfBirth => throw _privateConstructorUsedError;
  String get mobilePrefix => throw _privateConstructorUsedError;
  String get mobileNumber => throw _privateConstructorUsedError;
  String? get secondaryEmailAddress => throw _privateConstructorUsedError;
  String? get companyPosition => throw _privateConstructorUsedError;
  String get guid => throw _privateConstructorUsedError;
  bool get isActive => throw _privateConstructorUsedError;
  String get createdBy => throw _privateConstructorUsedError;
  String get createdOn => throw _privateConstructorUsedError;
  String? get updatedBy => throw _privateConstructorUsedError;
  String? get updatedOn => throw _privateConstructorUsedError;
  bool get isDeleted => throw _privateConstructorUsedError;
  String? get deletedBy => throw _privateConstructorUsedError;
  String? get deletedOn => throw _privateConstructorUsedError;

  /// Serializes this User to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
  @useResult
  $Res call(
      {String? otherNationalityName,
      String? nationalityCode,
      int userId,
      int accountId,
      String userName,
      String lastName,
      String firstName,
      String? suffix,
      String middleName,
      String? dateOfBirth,
      String mobilePrefix,
      String mobileNumber,
      String? secondaryEmailAddress,
      String? companyPosition,
      String guid,
      bool isActive,
      String createdBy,
      String createdOn,
      String? updatedBy,
      String? updatedOn,
      bool isDeleted,
      String? deletedBy,
      String? deletedOn});
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? otherNationalityName = freezed,
    Object? nationalityCode = freezed,
    Object? userId = null,
    Object? accountId = null,
    Object? userName = null,
    Object? lastName = null,
    Object? firstName = null,
    Object? suffix = freezed,
    Object? middleName = null,
    Object? dateOfBirth = freezed,
    Object? mobilePrefix = null,
    Object? mobileNumber = null,
    Object? secondaryEmailAddress = freezed,
    Object? companyPosition = freezed,
    Object? guid = null,
    Object? isActive = null,
    Object? createdBy = null,
    Object? createdOn = null,
    Object? updatedBy = freezed,
    Object? updatedOn = freezed,
    Object? isDeleted = null,
    Object? deletedBy = freezed,
    Object? deletedOn = freezed,
  }) {
    return _then(_value.copyWith(
      otherNationalityName: freezed == otherNationalityName
          ? _value.otherNationalityName
          : otherNationalityName // ignore: cast_nullable_to_non_nullable
              as String?,
      nationalityCode: freezed == nationalityCode
          ? _value.nationalityCode
          : nationalityCode // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      accountId: null == accountId
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as int,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      suffix: freezed == suffix
          ? _value.suffix
          : suffix // ignore: cast_nullable_to_non_nullable
              as String?,
      middleName: null == middleName
          ? _value.middleName
          : middleName // ignore: cast_nullable_to_non_nullable
              as String,
      dateOfBirth: freezed == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as String?,
      mobilePrefix: null == mobilePrefix
          ? _value.mobilePrefix
          : mobilePrefix // ignore: cast_nullable_to_non_nullable
              as String,
      mobileNumber: null == mobileNumber
          ? _value.mobileNumber
          : mobileNumber // ignore: cast_nullable_to_non_nullable
              as String,
      secondaryEmailAddress: freezed == secondaryEmailAddress
          ? _value.secondaryEmailAddress
          : secondaryEmailAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      companyPosition: freezed == companyPosition
          ? _value.companyPosition
          : companyPosition // ignore: cast_nullable_to_non_nullable
              as String?,
      guid: null == guid
          ? _value.guid
          : guid // ignore: cast_nullable_to_non_nullable
              as String,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      createdBy: null == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String,
      createdOn: null == createdOn
          ? _value.createdOn
          : createdOn // ignore: cast_nullable_to_non_nullable
              as String,
      updatedBy: freezed == updatedBy
          ? _value.updatedBy
          : updatedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedOn: freezed == updatedOn
          ? _value.updatedOn
          : updatedOn // ignore: cast_nullable_to_non_nullable
              as String?,
      isDeleted: null == isDeleted
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool,
      deletedBy: freezed == deletedBy
          ? _value.deletedBy
          : deletedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      deletedOn: freezed == deletedOn
          ? _value.deletedOn
          : deletedOn // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserImplCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$UserImplCopyWith(
          _$UserImpl value, $Res Function(_$UserImpl) then) =
      __$$UserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? otherNationalityName,
      String? nationalityCode,
      int userId,
      int accountId,
      String userName,
      String lastName,
      String firstName,
      String? suffix,
      String middleName,
      String? dateOfBirth,
      String mobilePrefix,
      String mobileNumber,
      String? secondaryEmailAddress,
      String? companyPosition,
      String guid,
      bool isActive,
      String createdBy,
      String createdOn,
      String? updatedBy,
      String? updatedOn,
      bool isDeleted,
      String? deletedBy,
      String? deletedOn});
}

/// @nodoc
class __$$UserImplCopyWithImpl<$Res>
    extends _$UserCopyWithImpl<$Res, _$UserImpl>
    implements _$$UserImplCopyWith<$Res> {
  __$$UserImplCopyWithImpl(_$UserImpl _value, $Res Function(_$UserImpl) _then)
      : super(_value, _then);

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? otherNationalityName = freezed,
    Object? nationalityCode = freezed,
    Object? userId = null,
    Object? accountId = null,
    Object? userName = null,
    Object? lastName = null,
    Object? firstName = null,
    Object? suffix = freezed,
    Object? middleName = null,
    Object? dateOfBirth = freezed,
    Object? mobilePrefix = null,
    Object? mobileNumber = null,
    Object? secondaryEmailAddress = freezed,
    Object? companyPosition = freezed,
    Object? guid = null,
    Object? isActive = null,
    Object? createdBy = null,
    Object? createdOn = null,
    Object? updatedBy = freezed,
    Object? updatedOn = freezed,
    Object? isDeleted = null,
    Object? deletedBy = freezed,
    Object? deletedOn = freezed,
  }) {
    return _then(_$UserImpl(
      otherNationalityName: freezed == otherNationalityName
          ? _value.otherNationalityName
          : otherNationalityName // ignore: cast_nullable_to_non_nullable
              as String?,
      nationalityCode: freezed == nationalityCode
          ? _value.nationalityCode
          : nationalityCode // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      accountId: null == accountId
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as int,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      suffix: freezed == suffix
          ? _value.suffix
          : suffix // ignore: cast_nullable_to_non_nullable
              as String?,
      middleName: null == middleName
          ? _value.middleName
          : middleName // ignore: cast_nullable_to_non_nullable
              as String,
      dateOfBirth: freezed == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as String?,
      mobilePrefix: null == mobilePrefix
          ? _value.mobilePrefix
          : mobilePrefix // ignore: cast_nullable_to_non_nullable
              as String,
      mobileNumber: null == mobileNumber
          ? _value.mobileNumber
          : mobileNumber // ignore: cast_nullable_to_non_nullable
              as String,
      secondaryEmailAddress: freezed == secondaryEmailAddress
          ? _value.secondaryEmailAddress
          : secondaryEmailAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      companyPosition: freezed == companyPosition
          ? _value.companyPosition
          : companyPosition // ignore: cast_nullable_to_non_nullable
              as String?,
      guid: null == guid
          ? _value.guid
          : guid // ignore: cast_nullable_to_non_nullable
              as String,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      createdBy: null == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String,
      createdOn: null == createdOn
          ? _value.createdOn
          : createdOn // ignore: cast_nullable_to_non_nullable
              as String,
      updatedBy: freezed == updatedBy
          ? _value.updatedBy
          : updatedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedOn: freezed == updatedOn
          ? _value.updatedOn
          : updatedOn // ignore: cast_nullable_to_non_nullable
              as String?,
      isDeleted: null == isDeleted
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool,
      deletedBy: freezed == deletedBy
          ? _value.deletedBy
          : deletedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      deletedOn: freezed == deletedOn
          ? _value.deletedOn
          : deletedOn // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserImpl implements _User {
  const _$UserImpl(
      {this.otherNationalityName,
      this.nationalityCode,
      required this.userId,
      required this.accountId,
      required this.userName,
      required this.lastName,
      required this.firstName,
      this.suffix,
      required this.middleName,
      this.dateOfBirth,
      required this.mobilePrefix,
      required this.mobileNumber,
      this.secondaryEmailAddress,
      this.companyPosition,
      required this.guid,
      required this.isActive,
      required this.createdBy,
      required this.createdOn,
      this.updatedBy,
      this.updatedOn,
      required this.isDeleted,
      this.deletedBy,
      this.deletedOn});

  factory _$UserImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserImplFromJson(json);

  @override
  final String? otherNationalityName;
  @override
  final String? nationalityCode;
  @override
  final int userId;
  @override
  final int accountId;
  @override
  final String userName;
  @override
  final String lastName;
  @override
  final String firstName;
  @override
  final String? suffix;
  @override
  final String middleName;
  @override
  final String? dateOfBirth;
  @override
  final String mobilePrefix;
  @override
  final String mobileNumber;
  @override
  final String? secondaryEmailAddress;
  @override
  final String? companyPosition;
  @override
  final String guid;
  @override
  final bool isActive;
  @override
  final String createdBy;
  @override
  final String createdOn;
  @override
  final String? updatedBy;
  @override
  final String? updatedOn;
  @override
  final bool isDeleted;
  @override
  final String? deletedBy;
  @override
  final String? deletedOn;

  @override
  String toString() {
    return 'User(otherNationalityName: $otherNationalityName, nationalityCode: $nationalityCode, userId: $userId, accountId: $accountId, userName: $userName, lastName: $lastName, firstName: $firstName, suffix: $suffix, middleName: $middleName, dateOfBirth: $dateOfBirth, mobilePrefix: $mobilePrefix, mobileNumber: $mobileNumber, secondaryEmailAddress: $secondaryEmailAddress, companyPosition: $companyPosition, guid: $guid, isActive: $isActive, createdBy: $createdBy, createdOn: $createdOn, updatedBy: $updatedBy, updatedOn: $updatedOn, isDeleted: $isDeleted, deletedBy: $deletedBy, deletedOn: $deletedOn)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserImpl &&
            (identical(other.otherNationalityName, otherNationalityName) ||
                other.otherNationalityName == otherNationalityName) &&
            (identical(other.nationalityCode, nationalityCode) ||
                other.nationalityCode == nationalityCode) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.accountId, accountId) ||
                other.accountId == accountId) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.suffix, suffix) || other.suffix == suffix) &&
            (identical(other.middleName, middleName) ||
                other.middleName == middleName) &&
            (identical(other.dateOfBirth, dateOfBirth) ||
                other.dateOfBirth == dateOfBirth) &&
            (identical(other.mobilePrefix, mobilePrefix) ||
                other.mobilePrefix == mobilePrefix) &&
            (identical(other.mobileNumber, mobileNumber) ||
                other.mobileNumber == mobileNumber) &&
            (identical(other.secondaryEmailAddress, secondaryEmailAddress) ||
                other.secondaryEmailAddress == secondaryEmailAddress) &&
            (identical(other.companyPosition, companyPosition) ||
                other.companyPosition == companyPosition) &&
            (identical(other.guid, guid) || other.guid == guid) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
            (identical(other.createdOn, createdOn) ||
                other.createdOn == createdOn) &&
            (identical(other.updatedBy, updatedBy) ||
                other.updatedBy == updatedBy) &&
            (identical(other.updatedOn, updatedOn) ||
                other.updatedOn == updatedOn) &&
            (identical(other.isDeleted, isDeleted) ||
                other.isDeleted == isDeleted) &&
            (identical(other.deletedBy, deletedBy) ||
                other.deletedBy == deletedBy) &&
            (identical(other.deletedOn, deletedOn) ||
                other.deletedOn == deletedOn));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        otherNationalityName,
        nationalityCode,
        userId,
        accountId,
        userName,
        lastName,
        firstName,
        suffix,
        middleName,
        dateOfBirth,
        mobilePrefix,
        mobileNumber,
        secondaryEmailAddress,
        companyPosition,
        guid,
        isActive,
        createdBy,
        createdOn,
        updatedBy,
        updatedOn,
        isDeleted,
        deletedBy,
        deletedOn
      ]);

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      __$$UserImplCopyWithImpl<_$UserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserImplToJson(
      this,
    );
  }
}

abstract class _User implements User {
  const factory _User(
      {final String? otherNationalityName,
      final String? nationalityCode,
      required final int userId,
      required final int accountId,
      required final String userName,
      required final String lastName,
      required final String firstName,
      final String? suffix,
      required final String middleName,
      final String? dateOfBirth,
      required final String mobilePrefix,
      required final String mobileNumber,
      final String? secondaryEmailAddress,
      final String? companyPosition,
      required final String guid,
      required final bool isActive,
      required final String createdBy,
      required final String createdOn,
      final String? updatedBy,
      final String? updatedOn,
      required final bool isDeleted,
      final String? deletedBy,
      final String? deletedOn}) = _$UserImpl;

  factory _User.fromJson(Map<String, dynamic> json) = _$UserImpl.fromJson;

  @override
  String? get otherNationalityName;
  @override
  String? get nationalityCode;
  @override
  int get userId;
  @override
  int get accountId;
  @override
  String get userName;
  @override
  String get lastName;
  @override
  String get firstName;
  @override
  String? get suffix;
  @override
  String get middleName;
  @override
  String? get dateOfBirth;
  @override
  String get mobilePrefix;
  @override
  String get mobileNumber;
  @override
  String? get secondaryEmailAddress;
  @override
  String? get companyPosition;
  @override
  String get guid;
  @override
  bool get isActive;
  @override
  String get createdBy;
  @override
  String get createdOn;
  @override
  String? get updatedBy;
  @override
  String? get updatedOn;
  @override
  bool get isDeleted;
  @override
  String? get deletedBy;
  @override
  String? get deletedOn;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AccountDetails _$AccountDetailsFromJson(Map<String, dynamic> json) {
  return _AccountDetails.fromJson(json);
}

/// @nodoc
mixin _$AccountDetails {
  String get iframeUrl => throw _privateConstructorUsedError;
  bool get isAccountRegistered => throw _privateConstructorUsedError;

  /// Serializes this AccountDetails to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AccountDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AccountDetailsCopyWith<AccountDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountDetailsCopyWith<$Res> {
  factory $AccountDetailsCopyWith(
          AccountDetails value, $Res Function(AccountDetails) then) =
      _$AccountDetailsCopyWithImpl<$Res, AccountDetails>;
  @useResult
  $Res call({String iframeUrl, bool isAccountRegistered});
}

/// @nodoc
class _$AccountDetailsCopyWithImpl<$Res, $Val extends AccountDetails>
    implements $AccountDetailsCopyWith<$Res> {
  _$AccountDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AccountDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? iframeUrl = null,
    Object? isAccountRegistered = null,
  }) {
    return _then(_value.copyWith(
      iframeUrl: null == iframeUrl
          ? _value.iframeUrl
          : iframeUrl // ignore: cast_nullable_to_non_nullable
              as String,
      isAccountRegistered: null == isAccountRegistered
          ? _value.isAccountRegistered
          : isAccountRegistered // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AccountDetailsImplCopyWith<$Res>
    implements $AccountDetailsCopyWith<$Res> {
  factory _$$AccountDetailsImplCopyWith(_$AccountDetailsImpl value,
          $Res Function(_$AccountDetailsImpl) then) =
      __$$AccountDetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String iframeUrl, bool isAccountRegistered});
}

/// @nodoc
class __$$AccountDetailsImplCopyWithImpl<$Res>
    extends _$AccountDetailsCopyWithImpl<$Res, _$AccountDetailsImpl>
    implements _$$AccountDetailsImplCopyWith<$Res> {
  __$$AccountDetailsImplCopyWithImpl(
      _$AccountDetailsImpl _value, $Res Function(_$AccountDetailsImpl) _then)
      : super(_value, _then);

  /// Create a copy of AccountDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? iframeUrl = null,
    Object? isAccountRegistered = null,
  }) {
    return _then(_$AccountDetailsImpl(
      iframeUrl: null == iframeUrl
          ? _value.iframeUrl
          : iframeUrl // ignore: cast_nullable_to_non_nullable
              as String,
      isAccountRegistered: null == isAccountRegistered
          ? _value.isAccountRegistered
          : isAccountRegistered // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AccountDetailsImpl implements _AccountDetails {
  const _$AccountDetailsImpl(
      {required this.iframeUrl, required this.isAccountRegistered});

  factory _$AccountDetailsImpl.fromJson(Map<String, dynamic> json) =>
      _$$AccountDetailsImplFromJson(json);

  @override
  final String iframeUrl;
  @override
  final bool isAccountRegistered;

  @override
  String toString() {
    return 'AccountDetails(iframeUrl: $iframeUrl, isAccountRegistered: $isAccountRegistered)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountDetailsImpl &&
            (identical(other.iframeUrl, iframeUrl) ||
                other.iframeUrl == iframeUrl) &&
            (identical(other.isAccountRegistered, isAccountRegistered) ||
                other.isAccountRegistered == isAccountRegistered));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, iframeUrl, isAccountRegistered);

  /// Create a copy of AccountDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AccountDetailsImplCopyWith<_$AccountDetailsImpl> get copyWith =>
      __$$AccountDetailsImplCopyWithImpl<_$AccountDetailsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AccountDetailsImplToJson(
      this,
    );
  }
}

abstract class _AccountDetails implements AccountDetails {
  const factory _AccountDetails(
      {required final String iframeUrl,
      required final bool isAccountRegistered}) = _$AccountDetailsImpl;

  factory _AccountDetails.fromJson(Map<String, dynamic> json) =
      _$AccountDetailsImpl.fromJson;

  @override
  String get iframeUrl;
  @override
  bool get isAccountRegistered;

  /// Create a copy of AccountDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AccountDetailsImplCopyWith<_$AccountDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AccountInfo _$AccountInfoFromJson(Map<String, dynamic> json) {
  return _AccountInfo.fromJson(json);
}

/// @nodoc
mixin _$AccountInfo {
  int get accountId => throw _privateConstructorUsedError;
  String get guid => throw _privateConstructorUsedError;
  String get accountTypeCode => throw _privateConstructorUsedError;
  String? get nationalityCode => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;
  String get accountCode => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get emailAddress => throw _privateConstructorUsedError;
  String? get addressDetails => throw _privateConstructorUsedError;
  ContactDetails get contactDetails => throw _privateConstructorUsedError;
  List<User> get users => throw _privateConstructorUsedError;
  bool get isActive => throw _privateConstructorUsedError;
  String get createdBy => throw _privateConstructorUsedError;
  String get createdOn => throw _privateConstructorUsedError;
  String? get updatedBy => throw _privateConstructorUsedError;
  String? get updatedOn => throw _privateConstructorUsedError;
  bool get isDeleted => throw _privateConstructorUsedError;
  String? get deletedBy => throw _privateConstructorUsedError;
  String? get deletedOn => throw _privateConstructorUsedError;

  /// Serializes this AccountInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AccountInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AccountInfoCopyWith<AccountInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountInfoCopyWith<$Res> {
  factory $AccountInfoCopyWith(
          AccountInfo value, $Res Function(AccountInfo) then) =
      _$AccountInfoCopyWithImpl<$Res, AccountInfo>;
  @useResult
  $Res call(
      {int accountId,
      String guid,
      String accountTypeCode,
      String? nationalityCode,
      String code,
      String accountCode,
      String name,
      String emailAddress,
      String? addressDetails,
      ContactDetails contactDetails,
      List<User> users,
      bool isActive,
      String createdBy,
      String createdOn,
      String? updatedBy,
      String? updatedOn,
      bool isDeleted,
      String? deletedBy,
      String? deletedOn});

  $ContactDetailsCopyWith<$Res> get contactDetails;
}

/// @nodoc
class _$AccountInfoCopyWithImpl<$Res, $Val extends AccountInfo>
    implements $AccountInfoCopyWith<$Res> {
  _$AccountInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AccountInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accountId = null,
    Object? guid = null,
    Object? accountTypeCode = null,
    Object? nationalityCode = freezed,
    Object? code = null,
    Object? accountCode = null,
    Object? name = null,
    Object? emailAddress = null,
    Object? addressDetails = freezed,
    Object? contactDetails = null,
    Object? users = null,
    Object? isActive = null,
    Object? createdBy = null,
    Object? createdOn = null,
    Object? updatedBy = freezed,
    Object? updatedOn = freezed,
    Object? isDeleted = null,
    Object? deletedBy = freezed,
    Object? deletedOn = freezed,
  }) {
    return _then(_value.copyWith(
      accountId: null == accountId
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as int,
      guid: null == guid
          ? _value.guid
          : guid // ignore: cast_nullable_to_non_nullable
              as String,
      accountTypeCode: null == accountTypeCode
          ? _value.accountTypeCode
          : accountTypeCode // ignore: cast_nullable_to_non_nullable
              as String,
      nationalityCode: freezed == nationalityCode
          ? _value.nationalityCode
          : nationalityCode // ignore: cast_nullable_to_non_nullable
              as String?,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      accountCode: null == accountCode
          ? _value.accountCode
          : accountCode // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      emailAddress: null == emailAddress
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as String,
      addressDetails: freezed == addressDetails
          ? _value.addressDetails
          : addressDetails // ignore: cast_nullable_to_non_nullable
              as String?,
      contactDetails: null == contactDetails
          ? _value.contactDetails
          : contactDetails // ignore: cast_nullable_to_non_nullable
              as ContactDetails,
      users: null == users
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<User>,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      createdBy: null == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String,
      createdOn: null == createdOn
          ? _value.createdOn
          : createdOn // ignore: cast_nullable_to_non_nullable
              as String,
      updatedBy: freezed == updatedBy
          ? _value.updatedBy
          : updatedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedOn: freezed == updatedOn
          ? _value.updatedOn
          : updatedOn // ignore: cast_nullable_to_non_nullable
              as String?,
      isDeleted: null == isDeleted
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool,
      deletedBy: freezed == deletedBy
          ? _value.deletedBy
          : deletedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      deletedOn: freezed == deletedOn
          ? _value.deletedOn
          : deletedOn // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of AccountInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ContactDetailsCopyWith<$Res> get contactDetails {
    return $ContactDetailsCopyWith<$Res>(_value.contactDetails, (value) {
      return _then(_value.copyWith(contactDetails: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AccountInfoImplCopyWith<$Res>
    implements $AccountInfoCopyWith<$Res> {
  factory _$$AccountInfoImplCopyWith(
          _$AccountInfoImpl value, $Res Function(_$AccountInfoImpl) then) =
      __$$AccountInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int accountId,
      String guid,
      String accountTypeCode,
      String? nationalityCode,
      String code,
      String accountCode,
      String name,
      String emailAddress,
      String? addressDetails,
      ContactDetails contactDetails,
      List<User> users,
      bool isActive,
      String createdBy,
      String createdOn,
      String? updatedBy,
      String? updatedOn,
      bool isDeleted,
      String? deletedBy,
      String? deletedOn});

  @override
  $ContactDetailsCopyWith<$Res> get contactDetails;
}

/// @nodoc
class __$$AccountInfoImplCopyWithImpl<$Res>
    extends _$AccountInfoCopyWithImpl<$Res, _$AccountInfoImpl>
    implements _$$AccountInfoImplCopyWith<$Res> {
  __$$AccountInfoImplCopyWithImpl(
      _$AccountInfoImpl _value, $Res Function(_$AccountInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of AccountInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accountId = null,
    Object? guid = null,
    Object? accountTypeCode = null,
    Object? nationalityCode = freezed,
    Object? code = null,
    Object? accountCode = null,
    Object? name = null,
    Object? emailAddress = null,
    Object? addressDetails = freezed,
    Object? contactDetails = null,
    Object? users = null,
    Object? isActive = null,
    Object? createdBy = null,
    Object? createdOn = null,
    Object? updatedBy = freezed,
    Object? updatedOn = freezed,
    Object? isDeleted = null,
    Object? deletedBy = freezed,
    Object? deletedOn = freezed,
  }) {
    return _then(_$AccountInfoImpl(
      accountId: null == accountId
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as int,
      guid: null == guid
          ? _value.guid
          : guid // ignore: cast_nullable_to_non_nullable
              as String,
      accountTypeCode: null == accountTypeCode
          ? _value.accountTypeCode
          : accountTypeCode // ignore: cast_nullable_to_non_nullable
              as String,
      nationalityCode: freezed == nationalityCode
          ? _value.nationalityCode
          : nationalityCode // ignore: cast_nullable_to_non_nullable
              as String?,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      accountCode: null == accountCode
          ? _value.accountCode
          : accountCode // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      emailAddress: null == emailAddress
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as String,
      addressDetails: freezed == addressDetails
          ? _value.addressDetails
          : addressDetails // ignore: cast_nullable_to_non_nullable
              as String?,
      contactDetails: null == contactDetails
          ? _value.contactDetails
          : contactDetails // ignore: cast_nullable_to_non_nullable
              as ContactDetails,
      users: null == users
          ? _value._users
          : users // ignore: cast_nullable_to_non_nullable
              as List<User>,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      createdBy: null == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String,
      createdOn: null == createdOn
          ? _value.createdOn
          : createdOn // ignore: cast_nullable_to_non_nullable
              as String,
      updatedBy: freezed == updatedBy
          ? _value.updatedBy
          : updatedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedOn: freezed == updatedOn
          ? _value.updatedOn
          : updatedOn // ignore: cast_nullable_to_non_nullable
              as String?,
      isDeleted: null == isDeleted
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool,
      deletedBy: freezed == deletedBy
          ? _value.deletedBy
          : deletedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      deletedOn: freezed == deletedOn
          ? _value.deletedOn
          : deletedOn // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AccountInfoImpl implements _AccountInfo {
  const _$AccountInfoImpl(
      {required this.accountId,
      required this.guid,
      required this.accountTypeCode,
      this.nationalityCode,
      required this.code,
      required this.accountCode,
      required this.name,
      required this.emailAddress,
      this.addressDetails,
      required this.contactDetails,
      required final List<User> users,
      required this.isActive,
      required this.createdBy,
      required this.createdOn,
      this.updatedBy,
      this.updatedOn,
      required this.isDeleted,
      this.deletedBy,
      this.deletedOn})
      : _users = users;

  factory _$AccountInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$AccountInfoImplFromJson(json);

  @override
  final int accountId;
  @override
  final String guid;
  @override
  final String accountTypeCode;
  @override
  final String? nationalityCode;
  @override
  final String code;
  @override
  final String accountCode;
  @override
  final String name;
  @override
  final String emailAddress;
  @override
  final String? addressDetails;
  @override
  final ContactDetails contactDetails;
  final List<User> _users;
  @override
  List<User> get users {
    if (_users is EqualUnmodifiableListView) return _users;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_users);
  }

  @override
  final bool isActive;
  @override
  final String createdBy;
  @override
  final String createdOn;
  @override
  final String? updatedBy;
  @override
  final String? updatedOn;
  @override
  final bool isDeleted;
  @override
  final String? deletedBy;
  @override
  final String? deletedOn;

  @override
  String toString() {
    return 'AccountInfo(accountId: $accountId, guid: $guid, accountTypeCode: $accountTypeCode, nationalityCode: $nationalityCode, code: $code, accountCode: $accountCode, name: $name, emailAddress: $emailAddress, addressDetails: $addressDetails, contactDetails: $contactDetails, users: $users, isActive: $isActive, createdBy: $createdBy, createdOn: $createdOn, updatedBy: $updatedBy, updatedOn: $updatedOn, isDeleted: $isDeleted, deletedBy: $deletedBy, deletedOn: $deletedOn)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountInfoImpl &&
            (identical(other.accountId, accountId) ||
                other.accountId == accountId) &&
            (identical(other.guid, guid) || other.guid == guid) &&
            (identical(other.accountTypeCode, accountTypeCode) ||
                other.accountTypeCode == accountTypeCode) &&
            (identical(other.nationalityCode, nationalityCode) ||
                other.nationalityCode == nationalityCode) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.accountCode, accountCode) ||
                other.accountCode == accountCode) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.emailAddress, emailAddress) ||
                other.emailAddress == emailAddress) &&
            (identical(other.addressDetails, addressDetails) ||
                other.addressDetails == addressDetails) &&
            (identical(other.contactDetails, contactDetails) ||
                other.contactDetails == contactDetails) &&
            const DeepCollectionEquality().equals(other._users, _users) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
            (identical(other.createdOn, createdOn) ||
                other.createdOn == createdOn) &&
            (identical(other.updatedBy, updatedBy) ||
                other.updatedBy == updatedBy) &&
            (identical(other.updatedOn, updatedOn) ||
                other.updatedOn == updatedOn) &&
            (identical(other.isDeleted, isDeleted) ||
                other.isDeleted == isDeleted) &&
            (identical(other.deletedBy, deletedBy) ||
                other.deletedBy == deletedBy) &&
            (identical(other.deletedOn, deletedOn) ||
                other.deletedOn == deletedOn));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        accountId,
        guid,
        accountTypeCode,
        nationalityCode,
        code,
        accountCode,
        name,
        emailAddress,
        addressDetails,
        contactDetails,
        const DeepCollectionEquality().hash(_users),
        isActive,
        createdBy,
        createdOn,
        updatedBy,
        updatedOn,
        isDeleted,
        deletedBy,
        deletedOn
      ]);

  /// Create a copy of AccountInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AccountInfoImplCopyWith<_$AccountInfoImpl> get copyWith =>
      __$$AccountInfoImplCopyWithImpl<_$AccountInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AccountInfoImplToJson(
      this,
    );
  }
}

abstract class _AccountInfo implements AccountInfo {
  const factory _AccountInfo(
      {required final int accountId,
      required final String guid,
      required final String accountTypeCode,
      final String? nationalityCode,
      required final String code,
      required final String accountCode,
      required final String name,
      required final String emailAddress,
      final String? addressDetails,
      required final ContactDetails contactDetails,
      required final List<User> users,
      required final bool isActive,
      required final String createdBy,
      required final String createdOn,
      final String? updatedBy,
      final String? updatedOn,
      required final bool isDeleted,
      final String? deletedBy,
      final String? deletedOn}) = _$AccountInfoImpl;

  factory _AccountInfo.fromJson(Map<String, dynamic> json) =
      _$AccountInfoImpl.fromJson;

  @override
  int get accountId;
  @override
  String get guid;
  @override
  String get accountTypeCode;
  @override
  String? get nationalityCode;
  @override
  String get code;
  @override
  String get accountCode;
  @override
  String get name;
  @override
  String get emailAddress;
  @override
  String? get addressDetails;
  @override
  ContactDetails get contactDetails;
  @override
  List<User> get users;
  @override
  bool get isActive;
  @override
  String get createdBy;
  @override
  String get createdOn;
  @override
  String? get updatedBy;
  @override
  String? get updatedOn;
  @override
  bool get isDeleted;
  @override
  String? get deletedBy;
  @override
  String? get deletedOn;

  /// Create a copy of AccountInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AccountInfoImplCopyWith<_$AccountInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ApiResponse _$ApiResponseFromJson(Map<String, dynamic> json) {
  return _ApiResponse.fromJson(json);
}

/// @nodoc
mixin _$ApiResponse {
  TokenDetails get tokenDetails => throw _privateConstructorUsedError;
  AccountDetails get accountDetails => throw _privateConstructorUsedError;

  /// Serializes this ApiResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ApiResponseCopyWith<ApiResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiResponseCopyWith<$Res> {
  factory $ApiResponseCopyWith(
          ApiResponse value, $Res Function(ApiResponse) then) =
      _$ApiResponseCopyWithImpl<$Res, ApiResponse>;
  @useResult
  $Res call({TokenDetails tokenDetails, AccountDetails accountDetails});

  $TokenDetailsCopyWith<$Res> get tokenDetails;
  $AccountDetailsCopyWith<$Res> get accountDetails;
}

/// @nodoc
class _$ApiResponseCopyWithImpl<$Res, $Val extends ApiResponse>
    implements $ApiResponseCopyWith<$Res> {
  _$ApiResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tokenDetails = null,
    Object? accountDetails = null,
  }) {
    return _then(_value.copyWith(
      tokenDetails: null == tokenDetails
          ? _value.tokenDetails
          : tokenDetails // ignore: cast_nullable_to_non_nullable
              as TokenDetails,
      accountDetails: null == accountDetails
          ? _value.accountDetails
          : accountDetails // ignore: cast_nullable_to_non_nullable
              as AccountDetails,
    ) as $Val);
  }

  /// Create a copy of ApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TokenDetailsCopyWith<$Res> get tokenDetails {
    return $TokenDetailsCopyWith<$Res>(_value.tokenDetails, (value) {
      return _then(_value.copyWith(tokenDetails: value) as $Val);
    });
  }

  /// Create a copy of ApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AccountDetailsCopyWith<$Res> get accountDetails {
    return $AccountDetailsCopyWith<$Res>(_value.accountDetails, (value) {
      return _then(_value.copyWith(accountDetails: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ApiResponseImplCopyWith<$Res>
    implements $ApiResponseCopyWith<$Res> {
  factory _$$ApiResponseImplCopyWith(
          _$ApiResponseImpl value, $Res Function(_$ApiResponseImpl) then) =
      __$$ApiResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TokenDetails tokenDetails, AccountDetails accountDetails});

  @override
  $TokenDetailsCopyWith<$Res> get tokenDetails;
  @override
  $AccountDetailsCopyWith<$Res> get accountDetails;
}

/// @nodoc
class __$$ApiResponseImplCopyWithImpl<$Res>
    extends _$ApiResponseCopyWithImpl<$Res, _$ApiResponseImpl>
    implements _$$ApiResponseImplCopyWith<$Res> {
  __$$ApiResponseImplCopyWithImpl(
      _$ApiResponseImpl _value, $Res Function(_$ApiResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of ApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tokenDetails = null,
    Object? accountDetails = null,
  }) {
    return _then(_$ApiResponseImpl(
      tokenDetails: null == tokenDetails
          ? _value.tokenDetails
          : tokenDetails // ignore: cast_nullable_to_non_nullable
              as TokenDetails,
      accountDetails: null == accountDetails
          ? _value.accountDetails
          : accountDetails // ignore: cast_nullable_to_non_nullable
              as AccountDetails,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ApiResponseImpl implements _ApiResponse {
  const _$ApiResponseImpl(
      {required this.tokenDetails, required this.accountDetails});

  factory _$ApiResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ApiResponseImplFromJson(json);

  @override
  final TokenDetails tokenDetails;
  @override
  final AccountDetails accountDetails;

  @override
  String toString() {
    return 'ApiResponse(tokenDetails: $tokenDetails, accountDetails: $accountDetails)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiResponseImpl &&
            (identical(other.tokenDetails, tokenDetails) ||
                other.tokenDetails == tokenDetails) &&
            (identical(other.accountDetails, accountDetails) ||
                other.accountDetails == accountDetails));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, tokenDetails, accountDetails);

  /// Create a copy of ApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiResponseImplCopyWith<_$ApiResponseImpl> get copyWith =>
      __$$ApiResponseImplCopyWithImpl<_$ApiResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ApiResponseImplToJson(
      this,
    );
  }
}

abstract class _ApiResponse implements ApiResponse {
  const factory _ApiResponse(
      {required final TokenDetails tokenDetails,
      required final AccountDetails accountDetails}) = _$ApiResponseImpl;

  factory _ApiResponse.fromJson(Map<String, dynamic> json) =
      _$ApiResponseImpl.fromJson;

  @override
  TokenDetails get tokenDetails;
  @override
  AccountDetails get accountDetails;

  /// Create a copy of ApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ApiResponseImplCopyWith<_$ApiResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
