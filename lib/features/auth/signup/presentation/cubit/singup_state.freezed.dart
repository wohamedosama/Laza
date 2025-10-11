// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'singup_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SingupState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SingupState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SingupState()';
}


}

/// @nodoc
class $SingupStateCopyWith<$Res>  {
$SingupStateCopyWith(SingupState _, $Res Function(SingupState) __);
}


/// Adds pattern-matching-related methods to [SingupState].
extension SingupStatePatterns on SingupState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( Singupnitial value)?  initial,TResult Function( SingupLoading value)?  loading,TResult Function( SignupSuccess value)?  success,TResult Function( SingupFailure value)?  failure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case Singupnitial() when initial != null:
return initial(_that);case SingupLoading() when loading != null:
return loading(_that);case SignupSuccess() when success != null:
return success(_that);case SingupFailure() when failure != null:
return failure(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( Singupnitial value)  initial,required TResult Function( SingupLoading value)  loading,required TResult Function( SignupSuccess value)  success,required TResult Function( SingupFailure value)  failure,}){
final _that = this;
switch (_that) {
case Singupnitial():
return initial(_that);case SingupLoading():
return loading(_that);case SignupSuccess():
return success(_that);case SingupFailure():
return failure(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( Singupnitial value)?  initial,TResult? Function( SingupLoading value)?  loading,TResult? Function( SignupSuccess value)?  success,TResult? Function( SingupFailure value)?  failure,}){
final _that = this;
switch (_that) {
case Singupnitial() when initial != null:
return initial(_that);case SingupLoading() when loading != null:
return loading(_that);case SignupSuccess() when success != null:
return success(_that);case SingupFailure() when failure != null:
return failure(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( SignupModelResponse response)?  success,TResult Function( String message)?  failure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case Singupnitial() when initial != null:
return initial();case SingupLoading() when loading != null:
return loading();case SignupSuccess() when success != null:
return success(_that.response);case SingupFailure() when failure != null:
return failure(_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( SignupModelResponse response)  success,required TResult Function( String message)  failure,}) {final _that = this;
switch (_that) {
case Singupnitial():
return initial();case SingupLoading():
return loading();case SignupSuccess():
return success(_that.response);case SingupFailure():
return failure(_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( SignupModelResponse response)?  success,TResult? Function( String message)?  failure,}) {final _that = this;
switch (_that) {
case Singupnitial() when initial != null:
return initial();case SingupLoading() when loading != null:
return loading();case SignupSuccess() when success != null:
return success(_that.response);case SingupFailure() when failure != null:
return failure(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class Singupnitial implements SingupState {
  const Singupnitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Singupnitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SingupState.initial()';
}


}




/// @nodoc


class SingupLoading implements SingupState {
  const SingupLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SingupLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SingupState.loading()';
}


}




/// @nodoc


class SignupSuccess implements SingupState {
  const SignupSuccess(this.response);
  

 final  SignupModelResponse response;

/// Create a copy of SingupState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SignupSuccessCopyWith<SignupSuccess> get copyWith => _$SignupSuccessCopyWithImpl<SignupSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignupSuccess&&(identical(other.response, response) || other.response == response));
}


@override
int get hashCode => Object.hash(runtimeType,response);

@override
String toString() {
  return 'SingupState.success(response: $response)';
}


}

/// @nodoc
abstract mixin class $SignupSuccessCopyWith<$Res> implements $SingupStateCopyWith<$Res> {
  factory $SignupSuccessCopyWith(SignupSuccess value, $Res Function(SignupSuccess) _then) = _$SignupSuccessCopyWithImpl;
@useResult
$Res call({
 SignupModelResponse response
});




}
/// @nodoc
class _$SignupSuccessCopyWithImpl<$Res>
    implements $SignupSuccessCopyWith<$Res> {
  _$SignupSuccessCopyWithImpl(this._self, this._then);

  final SignupSuccess _self;
  final $Res Function(SignupSuccess) _then;

/// Create a copy of SingupState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? response = null,}) {
  return _then(SignupSuccess(
null == response ? _self.response : response // ignore: cast_nullable_to_non_nullable
as SignupModelResponse,
  ));
}


}

/// @nodoc


class SingupFailure implements SingupState {
  const SingupFailure(this.message);
  

 final  String message;

/// Create a copy of SingupState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SingupFailureCopyWith<SingupFailure> get copyWith => _$SingupFailureCopyWithImpl<SingupFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SingupFailure&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'SingupState.failure(message: $message)';
}


}

/// @nodoc
abstract mixin class $SingupFailureCopyWith<$Res> implements $SingupStateCopyWith<$Res> {
  factory $SingupFailureCopyWith(SingupFailure value, $Res Function(SingupFailure) _then) = _$SingupFailureCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$SingupFailureCopyWithImpl<$Res>
    implements $SingupFailureCopyWith<$Res> {
  _$SingupFailureCopyWithImpl(this._self, this._then);

  final SingupFailure _self;
  final $Res Function(SingupFailure) _then;

/// Create a copy of SingupState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(SingupFailure(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
