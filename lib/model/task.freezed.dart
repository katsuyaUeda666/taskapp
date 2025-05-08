// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'task.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TaskList {
  String? get id;
  String? get task;
  String? get description;
  Status? get status;

  /// Create a copy of TaskList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TaskListCopyWith<TaskList> get copyWith =>
      _$TaskListCopyWithImpl<TaskList>(this as TaskList, _$identity);

  /// Serializes this TaskList to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TaskList &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.task, task) || other.task == task) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, task, description, status);

  @override
  String toString() {
    return 'TaskList(id: $id, task: $task, description: $description, status: $status)';
  }
}

/// @nodoc
abstract mixin class $TaskListCopyWith<$Res> {
  factory $TaskListCopyWith(TaskList value, $Res Function(TaskList) _then) =
      _$TaskListCopyWithImpl;
  @useResult
  $Res call({String? id, String? task, String? description, Status? status});
}

/// @nodoc
class _$TaskListCopyWithImpl<$Res> implements $TaskListCopyWith<$Res> {
  _$TaskListCopyWithImpl(this._self, this._then);

  final TaskList _self;
  final $Res Function(TaskList) _then;

  /// Create a copy of TaskList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? task = freezed,
    Object? description = freezed,
    Object? status = freezed,
  }) {
    return _then(_self.copyWith(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      task: freezed == task
          ? _self.task
          : task // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _TaskList implements TaskList {
  _TaskList({this.id, this.task, this.description, this.status});
  factory _TaskList.fromJson(Map<String, dynamic> json) =>
      _$TaskListFromJson(json);

  @override
  final String? id;
  @override
  final String? task;
  @override
  final String? description;
  @override
  final Status? status;

  /// Create a copy of TaskList
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$TaskListCopyWith<_TaskList> get copyWith =>
      __$TaskListCopyWithImpl<_TaskList>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$TaskListToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TaskList &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.task, task) || other.task == task) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, task, description, status);

  @override
  String toString() {
    return 'TaskList(id: $id, task: $task, description: $description, status: $status)';
  }
}

/// @nodoc
abstract mixin class _$TaskListCopyWith<$Res>
    implements $TaskListCopyWith<$Res> {
  factory _$TaskListCopyWith(_TaskList value, $Res Function(_TaskList) _then) =
      __$TaskListCopyWithImpl;
  @override
  @useResult
  $Res call({String? id, String? task, String? description, Status? status});
}

/// @nodoc
class __$TaskListCopyWithImpl<$Res> implements _$TaskListCopyWith<$Res> {
  __$TaskListCopyWithImpl(this._self, this._then);

  final _TaskList _self;
  final $Res Function(_TaskList) _then;

  /// Create a copy of TaskList
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = freezed,
    Object? task = freezed,
    Object? description = freezed,
    Object? status = freezed,
  }) {
    return _then(_TaskList(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      task: freezed == task
          ? _self.task
          : task // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status?,
    ));
  }
}

// dart format on
