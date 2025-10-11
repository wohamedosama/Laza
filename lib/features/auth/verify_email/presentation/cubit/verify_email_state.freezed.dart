// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verify_email_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$VerifyEmailState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VerifyEmailState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'VerifyEmailState()';
}


}

/// @nodoc
class $VerifyEmailStateCopyWith<$Res>  {
$VerifyEmailStateCopyWith(VerifyEmailState _, $Res Function(VerifyEmailState) __);
}


/// Adds pattern-matching-related methods to [VerifyEmailState].
extension VerifyEmailStatePatterns on VerifyEmailState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( VerifyEmailInitial value)?  initial,TResult Function( VerifyEmailLoading value)?  loading,TResult Function( VerifyEmailSuccess value)?  success,TResult Function( VerifyEmailError value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case VerifyEmailInitial() when initial != null:
return initial(_that);case VerifyEmailLoading() when loading != null:
return loading(_that);case VerifyEmailSuccess() when success != null:
return success(_that);case VerifyEmailError() when error != null:
return error(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( VerifyEmailInitial value)  initial,required TResult Function( VerifyEmailLoading value)  loading,required TResult Function( VerifyEmailSuccess value)  success,required TResult Function( VerifyEmailError value)  error,}){
final _that = this;
switch (_that) {
case VerifyEmailInitial():
return initial(_that);case VerifyEmailLoading():
return loading(_that);case VerifyEmailSuccess():
return success(_that);case VerifyEmailError():
return error(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( VerifyEmailInitial value)?  initial,TResult? Function( VerifyEmailLoading value)?  loading,TResult? Function( VerifyEmailSuccess value)?  success,TResult? Function( VerifyEmailError value)?  error,}){
final _that = this;
switch (_that) {
case VerifyEmailInitial() when initial != null:
return initial(_that);case VerifyEmailLoading() when loading != null:
return loading(_that);case VerifyEmailSuccess() when success != null:
return success(_that);case VerifyEmailError() when error != null:
return error(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function()?  success,TResult Function( NetworkExceptions message)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case VerifyEmailInitial() when initial != null:
return initial();case VerifyEmailLoading() when loading != null:
return loading();case VerifyEmailSuccess() when success != null:
return success();case VerifyEmailError() when error != null:
return error(_that.message);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function()  success,required TResult Function( NetworkExceptions message)  error,}) {final _that = this;
switch (_that) {
case VerifyEmailInitial():
return initial();case VerifyEmailLoading():
return loading();case VerifyEmailSuccess():
return success();case VerifyEmailError():
return error(_that.message);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function()?  success,TResult? Function( NetworkExceptions message)?  error,}) {final _that = this;
switch (_that) {
case VerifyEmailInitial() when initial != null:
return initial();case VerifyEmailLoading() when loading != null:
return loading();case VerifyEmailSuccess() when success != null:
return success();case VerifyEmailError() when error != null:
return error(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class VerifyEmailInitial implements VerifyEmailState {
  const VerifyEmailInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VerifyEmailInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'VerifyEmailState.initial()';
}


}




/// @nodoc


class VerifyEmailLoading implements VerifyEmailState {
  const VerifyEmailLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VerifyEmailLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'VerifyEmailState.loading()';
}


}




/// @nodoc


class VerifyEmailSuccess implements VerifyEmailState {
  const VerifyEmailSuccess();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VerifyEmailSuccess);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'VerifyEmailState.success()';
}


}




/// @nodoc


class VerifyEmailError implements VerifyEmailState {
  const VerifyEmailError(this.message);
  

 final  NetworkExceptions message;

/// Create a copy of VerifyEmailState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VerifyEmailErrorCopyWith<VerifyEmailError> get copyWith => _$VerifyEmailErrorCopyWithImpl<VerifyEmailError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VerifyEmailError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'VerifyEmailState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $VerifyEmailErrorCopyWith<$Res> implements $VerifyEmailStateCopyWith<$Res> {
  factory $VerifyEmailErrorCopyWith(VerifyEmailError value, $Res Function(VerifyEmailError) _then) = _$VerifyEmailErrorCopyWithImpl;
@useResult
$Res call({
 NetworkExceptions message
});


$NetworkExceptionsCopyWith<$Res> get message;

}
/// @nodoc
class _$VerifyEmailErrorCopyWithImpl<$Res>
    implements $VerifyEmailErrorCopyWith<$Res> {
  _$VerifyEmailErrorCopyWithImpl(this._self, this._then);

  final VerifyEmailError _self;
  final $Res Function(VerifyEmailError) _then;

/// Create a copy of VerifyEmailState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(VerifyEmailError(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as NetworkExceptions,
  ));
}

/// Create a copy of VerifyEmailState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NetworkExceptionsCopyWith<$Res> get message {
  
  return $NetworkExceptionsCopyWith<$Res>(_self.message, (value) {
    return _then(_self.copyWith(message: value));
  });
}
}

// dart format on
