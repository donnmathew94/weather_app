// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetSettingsCollection on Isar {
  IsarCollection<Settings> get settings => this.collection();
}

const SettingsSchema = CollectionSchema(
  name: r'Settings',
  id: -8656046621518759136,
  properties: {
    r'degrees': PropertySchema(
      id: 0,
      name: r'degrees',
      type: IsarType.string,
    ),
    r'location': PropertySchema(
      id: 1,
      name: r'location',
      type: IsarType.bool,
    ),
    r'materialColor': PropertySchema(
      id: 2,
      name: r'materialColor',
      type: IsarType.bool,
    ),
    r'measurements': PropertySchema(
      id: 3,
      name: r'measurements',
      type: IsarType.string,
    ),
    r'notifications': PropertySchema(
      id: 4,
      name: r'notifications',
      type: IsarType.bool,
    ),
    r'onboard': PropertySchema(
      id: 5,
      name: r'onboard',
      type: IsarType.bool,
    ),
    r'theme': PropertySchema(
      id: 6,
      name: r'theme',
      type: IsarType.bool,
    ),
    r'timeformat': PropertySchema(
      id: 7,
      name: r'timeformat',
      type: IsarType.string,
    )
  },
  estimateSize: _settingsEstimateSize,
  serialize: _settingsSerialize,
  deserialize: _settingsDeserialize,
  deserializeProp: _settingsDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _settingsGetId,
  getLinks: _settingsGetLinks,
  attach: _settingsAttach,
  version: '3.1.0+1',
);

int _settingsEstimateSize(
    Settings object,
    List<int> offsets,
    Map<Type, List<int>> allOffsets,
    ) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.degrees.length * 3;
  bytesCount += 3 + object.measurements.length * 3;
  bytesCount += 3 + object.timeformat.length * 3;
  return bytesCount;
}

void _settingsSerialize(
    Settings object,
    IsarWriter writer,
    List<int> offsets,
    Map<Type, List<int>> allOffsets,
    ) {
  writer.writeString(offsets[0], object.degrees);
  writer.writeBool(offsets[1], object.location);
  writer.writeBool(offsets[2], object.materialColor);
  writer.writeString(offsets[3], object.measurements);
  writer.writeBool(offsets[4], object.notifications);
  writer.writeBool(offsets[5], object.onboard);
  writer.writeBool(offsets[6], object.theme);
  writer.writeString(offsets[7], object.timeformat);
}

Settings _settingsDeserialize(
    Id id,
    IsarReader reader,
    List<int> offsets,
    Map<Type, List<int>> allOffsets,
    ) {
  final object = Settings();
  object.degrees = reader.readString(offsets[0]);
  object.id = id;
  object.location = reader.readBool(offsets[1]);
  object.materialColor = reader.readBool(offsets[2]);
  object.measurements = reader.readString(offsets[3]);
  object.notifications = reader.readBool(offsets[4]);
  object.onboard = reader.readBool(offsets[5]);
  object.theme = reader.readBoolOrNull(offsets[6]);
  object.timeformat = reader.readString(offsets[7]);
  return object;
}

P _settingsDeserializeProp<P>(
    IsarReader reader,
    int propertyId,
    int offset,
    Map<Type, List<int>> allOffsets,
    ) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readBool(offset)) as P;
    case 2:
      return (reader.readBool(offset)) as P;
    case 3:
      return (reader.readString(offset)) as P;
    case 4:
      return (reader.readBool(offset)) as P;
    case 5:
      return (reader.readBool(offset)) as P;
    case 6:
      return (reader.readBoolOrNull(offset)) as P;
    case 7:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _settingsGetId(Settings object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _settingsGetLinks(Settings object) {
  return [];
}

void _settingsAttach(IsarCollection<dynamic> col, Id id, Settings object) {
  object.id = id;
}

extension SettingsQueryWhereSort on QueryBuilder<Settings, Settings, QWhere> {
  QueryBuilder<Settings, Settings, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension SettingsQueryWhere on QueryBuilder<Settings, Settings, QWhereClause> {
  QueryBuilder<Settings, Settings, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<Settings, Settings, QAfterWhereClause> idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
          IdWhereClause.lessThan(upper: id, includeUpper: false),
        )
            .addWhereClause(
          IdWhereClause.greaterThan(lower: id, includeLower: false),
        );
      } else {
        return query
            .addWhereClause(
          IdWhereClause.greaterThan(lower: id, includeLower: false),
        )
            .addWhereClause(
          IdWhereClause.lessThan(upper: id, includeUpper: false),
        );
      }
    });
  }

  QueryBuilder<Settings, Settings, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<Settings, Settings, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<Settings, Settings, QAfterWhereClause> idBetween(
      Id lowerId,
      Id upperId, {
        bool includeLower = true,
        bool includeUpper = true,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension SettingsQueryFilter
on QueryBuilder<Settings, Settings, QFilterCondition> {
  QueryBuilder<Settings, Settings, QAfterFilterCondition> degreesEqualTo(
      String value, {
        bool caseSensitive = true,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'degrees',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Settings, Settings, QAfterFilterCondition> degreesGreaterThan(
      String value, {
        bool include = false,
        bool caseSensitive = true,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'degrees',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Settings, Settings, QAfterFilterCondition> degreesLessThan(
      String value, {
        bool include = false,
        bool caseSensitive = true,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'degrees',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Settings, Settings, QAfterFilterCondition> degreesBetween(
      String lower,
      String upper, {
        bool includeLower = true,
        bool includeUpper = true,
        bool caseSensitive = true,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'degrees',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Settings, Settings, QAfterFilterCondition> degreesStartsWith(
      String value, {
        bool caseSensitive = true,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'degrees',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Settings, Settings, QAfterFilterCondition> degreesEndsWith(
      String value, {
        bool caseSensitive = true,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'degrees',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Settings, Settings, QAfterFilterCondition> degreesContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'degrees',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Settings, Settings, QAfterFilterCondition> degreesMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'degrees',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Settings, Settings, QAfterFilterCondition> degreesIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'degrees',
        value: '',
      ));
    });
  }

  QueryBuilder<Settings, Settings, QAfterFilterCondition> degreesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'degrees',
        value: '',
      ));
    });
  }

  QueryBuilder<Settings, Settings, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Settings, Settings, QAfterFilterCondition> idGreaterThan(
      Id value, {
        bool include = false,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Settings, Settings, QAfterFilterCondition> idLessThan(
      Id value, {
        bool include = false,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Settings, Settings, QAfterFilterCondition> idBetween(
      Id lower,
      Id upper, {
        bool includeLower = true,
        bool includeUpper = true,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Settings, Settings, QAfterFilterCondition> locationEqualTo(
      bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'location',
        value: value,
      ));
    });
  }

  QueryBuilder<Settings, Settings, QAfterFilterCondition> materialColorEqualTo(
      bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'materialColor',
        value: value,
      ));
    });
  }

  QueryBuilder<Settings, Settings, QAfterFilterCondition> measurementsEqualTo(
      String value, {
        bool caseSensitive = true,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'measurements',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Settings, Settings, QAfterFilterCondition>
  measurementsGreaterThan(
      String value, {
        bool include = false,
        bool caseSensitive = true,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'measurements',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Settings, Settings, QAfterFilterCondition> measurementsLessThan(
      String value, {
        bool include = false,
        bool caseSensitive = true,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'measurements',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Settings, Settings, QAfterFilterCondition> measurementsBetween(
      String lower,
      String upper, {
        bool includeLower = true,
        bool includeUpper = true,
        bool caseSensitive = true,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'measurements',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Settings, Settings, QAfterFilterCondition>
  measurementsStartsWith(
      String value, {
        bool caseSensitive = true,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'measurements',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Settings, Settings, QAfterFilterCondition> measurementsEndsWith(
      String value, {
        bool caseSensitive = true,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'measurements',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Settings, Settings, QAfterFilterCondition> measurementsContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'measurements',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Settings, Settings, QAfterFilterCondition> measurementsMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'measurements',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Settings, Settings, QAfterFilterCondition>
  measurementsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'measurements',
        value: '',
      ));
    });
  }

  QueryBuilder<Settings, Settings, QAfterFilterCondition>
  measurementsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'measurements',
        value: '',
      ));
    });
  }

  QueryBuilder<Settings, Settings, QAfterFilterCondition> notificationsEqualTo(
      bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'notifications',
        value: value,
      ));
    });
  }

  QueryBuilder<Settings, Settings, QAfterFilterCondition> onboardEqualTo(
      bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'onboard',
        value: value,
      ));
    });
  }

  QueryBuilder<Settings, Settings, QAfterFilterCondition> themeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'theme',
      ));
    });
  }

  QueryBuilder<Settings, Settings, QAfterFilterCondition> themeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'theme',
      ));
    });
  }

  QueryBuilder<Settings, Settings, QAfterFilterCondition> themeEqualTo(
      bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'theme',
        value: value,
      ));
    });
  }

  QueryBuilder<Settings, Settings, QAfterFilterCondition> timeformatEqualTo(
      String value, {
        bool caseSensitive = true,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'timeformat',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Settings, Settings, QAfterFilterCondition> timeformatGreaterThan(
      String value, {
        bool include = false,
        bool caseSensitive = true,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'timeformat',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Settings, Settings, QAfterFilterCondition> timeformatLessThan(
      String value, {
        bool include = false,
        bool caseSensitive = true,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'timeformat',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Settings, Settings, QAfterFilterCondition> timeformatBetween(
      String lower,
      String upper, {
        bool includeLower = true,
        bool includeUpper = true,
        bool caseSensitive = true,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'timeformat',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Settings, Settings, QAfterFilterCondition> timeformatStartsWith(
      String value, {
        bool caseSensitive = true,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'timeformat',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Settings, Settings, QAfterFilterCondition> timeformatEndsWith(
      String value, {
        bool caseSensitive = true,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'timeformat',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Settings, Settings, QAfterFilterCondition> timeformatContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'timeformat',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Settings, Settings, QAfterFilterCondition> timeformatMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'timeformat',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Settings, Settings, QAfterFilterCondition> timeformatIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'timeformat',
        value: '',
      ));
    });
  }

  QueryBuilder<Settings, Settings, QAfterFilterCondition>
  timeformatIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'timeformat',
        value: '',
      ));
    });
  }
}

extension SettingsQueryObject
on QueryBuilder<Settings, Settings, QFilterCondition> {}

extension SettingsQueryLinks
on QueryBuilder<Settings, Settings, QFilterCondition> {}

extension SettingsQuerySortBy on QueryBuilder<Settings, Settings, QSortBy> {
  QueryBuilder<Settings, Settings, QAfterSortBy> sortByDegrees() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'degrees', Sort.asc);
    });
  }

  QueryBuilder<Settings, Settings, QAfterSortBy> sortByDegreesDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'degrees', Sort.desc);
    });
  }

  QueryBuilder<Settings, Settings, QAfterSortBy> sortByLocation() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'location', Sort.asc);
    });
  }

  QueryBuilder<Settings, Settings, QAfterSortBy> sortByLocationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'location', Sort.desc);
    });
  }

  QueryBuilder<Settings, Settings, QAfterSortBy> sortByMaterialColor() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'materialColor', Sort.asc);
    });
  }

  QueryBuilder<Settings, Settings, QAfterSortBy> sortByMaterialColorDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'materialColor', Sort.desc);
    });
  }

  QueryBuilder<Settings, Settings, QAfterSortBy> sortByMeasurements() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'measurements', Sort.asc);
    });
  }

  QueryBuilder<Settings, Settings, QAfterSortBy> sortByMeasurementsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'measurements', Sort.desc);
    });
  }

  QueryBuilder<Settings, Settings, QAfterSortBy> sortByNotifications() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'notifications', Sort.asc);
    });
  }

  QueryBuilder<Settings, Settings, QAfterSortBy> sortByNotificationsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'notifications', Sort.desc);
    });
  }

  QueryBuilder<Settings, Settings, QAfterSortBy> sortByOnboard() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'onboard', Sort.asc);
    });
  }

  QueryBuilder<Settings, Settings, QAfterSortBy> sortByOnboardDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'onboard', Sort.desc);
    });
  }

  QueryBuilder<Settings, Settings, QAfterSortBy> sortByTheme() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'theme', Sort.asc);
    });
  }

  QueryBuilder<Settings, Settings, QAfterSortBy> sortByThemeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'theme', Sort.desc);
    });
  }

  QueryBuilder<Settings, Settings, QAfterSortBy> sortByTimeformat() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timeformat', Sort.asc);
    });
  }

  QueryBuilder<Settings, Settings, QAfterSortBy> sortByTimeformatDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timeformat', Sort.desc);
    });
  }
}

extension SettingsQuerySortThenBy
on QueryBuilder<Settings, Settings, QSortThenBy> {
  QueryBuilder<Settings, Settings, QAfterSortBy> thenByDegrees() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'degrees', Sort.asc);
    });
  }

  QueryBuilder<Settings, Settings, QAfterSortBy> thenByDegreesDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'degrees', Sort.desc);
    });
  }

  QueryBuilder<Settings, Settings, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Settings, Settings, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Settings, Settings, QAfterSortBy> thenByLocation() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'location', Sort.asc);
    });
  }

  QueryBuilder<Settings, Settings, QAfterSortBy> thenByLocationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'location', Sort.desc);
    });
  }

  QueryBuilder<Settings, Settings, QAfterSortBy> thenByMaterialColor() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'materialColor', Sort.asc);
    });
  }

  QueryBuilder<Settings, Settings, QAfterSortBy> thenByMaterialColorDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'materialColor', Sort.desc);
    });
  }

  QueryBuilder<Settings, Settings, QAfterSortBy> thenByMeasurements() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'measurements', Sort.asc);
    });
  }

  QueryBuilder<Settings, Settings, QAfterSortBy> thenByMeasurementsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'measurements', Sort.desc);
    });
  }

  QueryBuilder<Settings, Settings, QAfterSortBy> thenByNotifications() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'notifications', Sort.asc);
    });
  }

  QueryBuilder<Settings, Settings, QAfterSortBy> thenByNotificationsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'notifications', Sort.desc);
    });
  }

  QueryBuilder<Settings, Settings, QAfterSortBy> thenByOnboard() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'onboard', Sort.asc);
    });
  }

  QueryBuilder<Settings, Settings, QAfterSortBy> thenByOnboardDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'onboard', Sort.desc);
    });
  }

  QueryBuilder<Settings, Settings, QAfterSortBy> thenByTheme() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'theme', Sort.asc);
    });
  }

  QueryBuilder<Settings, Settings, QAfterSortBy> thenByThemeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'theme', Sort.desc);
    });
  }

  QueryBuilder<Settings, Settings, QAfterSortBy> thenByTimeformat() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timeformat', Sort.asc);
    });
  }

  QueryBuilder<Settings, Settings, QAfterSortBy> thenByTimeformatDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timeformat', Sort.desc);
    });
  }
}

extension SettingsQueryWhereDistinct
on QueryBuilder<Settings, Settings, QDistinct> {
  QueryBuilder<Settings, Settings, QDistinct> distinctByDegrees(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'degrees', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Settings, Settings, QDistinct> distinctByLocation() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'location');
    });
  }

  QueryBuilder<Settings, Settings, QDistinct> distinctByMaterialColor() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'materialColor');
    });
  }

  QueryBuilder<Settings, Settings, QDistinct> distinctByMeasurements(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'measurements', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Settings, Settings, QDistinct> distinctByNotifications() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'notifications');
    });
  }

  QueryBuilder<Settings, Settings, QDistinct> distinctByOnboard() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'onboard');
    });
  }

  QueryBuilder<Settings, Settings, QDistinct> distinctByTheme() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'theme');
    });
  }

  QueryBuilder<Settings, Settings, QDistinct> distinctByTimeformat(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'timeformat', caseSensitive: caseSensitive);
    });
  }
}

extension SettingsQueryProperty
on QueryBuilder<Settings, Settings, QQueryProperty> {
  QueryBuilder<Settings, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Settings, String, QQueryOperations> degreesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'degrees');
    });
  }

  QueryBuilder<Settings, bool, QQueryOperations> locationProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'location');
    });
  }

  QueryBuilder<Settings, bool, QQueryOperations> materialColorProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'materialColor');
    });
  }

  QueryBuilder<Settings, String, QQueryOperations> measurementsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'measurements');
    });
  }

  QueryBuilder<Settings, bool, QQueryOperations> notificationsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'notifications');
    });
  }

  QueryBuilder<Settings, bool, QQueryOperations> onboardProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'onboard');
    });
  }

  QueryBuilder<Settings, bool?, QQueryOperations> themeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'theme');
    });
  }

  QueryBuilder<Settings, String, QQueryOperations> timeformatProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'timeformat');
    });
  }
}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types


// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetWeatherCardCollection on Isar {
  IsarCollection<WeatherCard> get weatherCards => this.collection();
}

const WeatherCardSchema = CollectionSchema(
  name: r'WeatherCard',
  id: -6696987654183999616,
  properties: {
    r'apparentTemperature': PropertySchema(
      id: 0,
      name: r'apparentTemperature',
      type: IsarType.doubleList,
    ),
    r'apparentTemperatureMax': PropertySchema(
      id: 1,
      name: r'apparentTemperatureMax',
      type: IsarType.doubleList,
    ),
    r'apparentTemperatureMin': PropertySchema(
      id: 2,
      name: r'apparentTemperatureMin',
      type: IsarType.doubleList,
    ),
    r'city': PropertySchema(
      id: 3,
      name: r'city',
      type: IsarType.string,
    ),
    r'cloudcover': PropertySchema(
      id: 4,
      name: r'cloudcover',
      type: IsarType.longList,
    ),
    r'district': PropertySchema(
      id: 5,
      name: r'district',
      type: IsarType.string,
    ),
    r'evapotranspiration': PropertySchema(
      id: 6,
      name: r'evapotranspiration',
      type: IsarType.doubleList,
    ),
    r'lat': PropertySchema(
      id: 7,
      name: r'lat',
      type: IsarType.double,
    ),
    r'lon': PropertySchema(
      id: 8,
      name: r'lon',
      type: IsarType.double,
    ),
    r'precipitation': PropertySchema(
      id: 9,
      name: r'precipitation',
      type: IsarType.doubleList,
    ),
    r'precipitationProbabilityMax': PropertySchema(
      id: 10,
      name: r'precipitationProbabilityMax',
      type: IsarType.longList,
    ),
    r'precipitationSum': PropertySchema(
      id: 11,
      name: r'precipitationSum',
      type: IsarType.doubleList,
    ),
    r'rain': PropertySchema(
      id: 12,
      name: r'rain',
      type: IsarType.doubleList,
    ),
    r'rainSum': PropertySchema(
      id: 13,
      name: r'rainSum',
      type: IsarType.doubleList,
    ),
    r'relativehumidity2M': PropertySchema(
      id: 14,
      name: r'relativehumidity2M',
      type: IsarType.longList,
    ),
    r'sunrise': PropertySchema(
      id: 15,
      name: r'sunrise',
      type: IsarType.stringList,
    ),
    r'sunset': PropertySchema(
      id: 16,
      name: r'sunset',
      type: IsarType.stringList,
    ),
    r'surfacePressure': PropertySchema(
      id: 17,
      name: r'surfacePressure',
      type: IsarType.doubleList,
    ),
    r'temperature2M': PropertySchema(
      id: 18,
      name: r'temperature2M',
      type: IsarType.doubleList,
    ),
    r'temperature2MMax': PropertySchema(
      id: 19,
      name: r'temperature2MMax',
      type: IsarType.doubleList,
    ),
    r'temperature2MMin': PropertySchema(
      id: 20,
      name: r'temperature2MMin',
      type: IsarType.doubleList,
    ),
    r'time': PropertySchema(
      id: 21,
      name: r'time',
      type: IsarType.stringList,
    ),
    r'timeDaily': PropertySchema(
      id: 22,
      name: r'timeDaily',
      type: IsarType.dateTimeList,
    ),
    r'timestamp': PropertySchema(
      id: 23,
      name: r'timestamp',
      type: IsarType.dateTime,
    ),
    r'timezone': PropertySchema(
      id: 24,
      name: r'timezone',
      type: IsarType.string,
    ),
    r'uvIndex': PropertySchema(
      id: 25,
      name: r'uvIndex',
      type: IsarType.doubleList,
    ),
    r'uvIndexMax': PropertySchema(
      id: 26,
      name: r'uvIndexMax',
      type: IsarType.doubleList,
    ),
    r'visibility': PropertySchema(
      id: 27,
      name: r'visibility',
      type: IsarType.doubleList,
    ),
    r'weathercode': PropertySchema(
      id: 28,
      name: r'weathercode',
      type: IsarType.longList,
    ),
    r'weathercodeDaily': PropertySchema(
      id: 29,
      name: r'weathercodeDaily',
      type: IsarType.longList,
    ),
    r'winddirection10M': PropertySchema(
      id: 30,
      name: r'winddirection10M',
      type: IsarType.longList,
    ),
    r'winddirection10MDominant': PropertySchema(
      id: 31,
      name: r'winddirection10MDominant',
      type: IsarType.longList,
    ),
    r'windgusts10M': PropertySchema(
      id: 32,
      name: r'windgusts10M',
      type: IsarType.doubleList,
    ),
    r'windgusts10MMax': PropertySchema(
      id: 33,
      name: r'windgusts10MMax',
      type: IsarType.doubleList,
    ),
    r'windspeed10M': PropertySchema(
      id: 34,
      name: r'windspeed10M',
      type: IsarType.doubleList,
    ),
    r'windspeed10MMax': PropertySchema(
      id: 35,
      name: r'windspeed10MMax',
      type: IsarType.doubleList,
    )
  },
  estimateSize: _weatherCardEstimateSize,
  serialize: _weatherCardSerialize,
  deserialize: _weatherCardDeserialize,
  deserializeProp: _weatherCardDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _weatherCardGetId,
  getLinks: _weatherCardGetLinks,
  attach: _weatherCardAttach,
  version: '3.1.0+1',
);

int _weatherCardEstimateSize(
    WeatherCard object,
    List<int> offsets,
    Map<Type, List<int>> allOffsets,
    ) {
  var bytesCount = offsets.last;
  {
    final value = object.apparentTemperature;
    if (value != null) {
      bytesCount += 3 + value.length * 8;
    }
  }
  {
    final value = object.apparentTemperatureMax;
    if (value != null) {
      bytesCount += 3 + value.length * 8;
    }
  }
  {
    final value = object.apparentTemperatureMin;
    if (value != null) {
      bytesCount += 3 + value.length * 8;
    }
  }
  {
    final value = object.city;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.cloudcover;
    if (value != null) {
      bytesCount += 3 + value.length * 8;
    }
  }
  {
    final value = object.district;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.evapotranspiration;
    if (value != null) {
      bytesCount += 3 + value.length * 8;
    }
  }
  {
    final value = object.precipitation;
    if (value != null) {
      bytesCount += 3 + value.length * 8;
    }
  }
  {
    final value = object.precipitationProbabilityMax;
    if (value != null) {
      bytesCount += 3 + value.length * 8;
    }
  }
  {
    final value = object.precipitationSum;
    if (value != null) {
      bytesCount += 3 + value.length * 8;
    }
  }
  {
    final value = object.rain;
    if (value != null) {
      bytesCount += 3 + value.length * 8;
    }
  }
  {
    final value = object.rainSum;
    if (value != null) {
      bytesCount += 3 + value.length * 8;
    }
  }
  {
    final value = object.relativehumidity2M;
    if (value != null) {
      bytesCount += 3 + value.length * 8;
    }
  }
  {
    final list = object.sunrise;
    if (list != null) {
      bytesCount += 3 + list.length * 3;
      {
        for (var i = 0; i < list.length; i++) {
          final value = list[i];
          bytesCount += value.length * 3;
        }
      }
    }
  }
  {
    final list = object.sunset;
    if (list != null) {
      bytesCount += 3 + list.length * 3;
      {
        for (var i = 0; i < list.length; i++) {
          final value = list[i];
          bytesCount += value.length * 3;
        }
      }
    }
  }
  {
    final value = object.surfacePressure;
    if (value != null) {
      bytesCount += 3 + value.length * 8;
    }
  }
  {
    final value = object.temperature2M;
    if (value != null) {
      bytesCount += 3 + value.length * 8;
    }
  }
  {
    final value = object.temperature2MMax;
    if (value != null) {
      bytesCount += 3 + value.length * 8;
    }
  }
  {
    final value = object.temperature2MMin;
    if (value != null) {
      bytesCount += 3 + value.length * 8;
    }
  }
  {
    final list = object.time;
    if (list != null) {
      bytesCount += 3 + list.length * 3;
      {
        for (var i = 0; i < list.length; i++) {
          final value = list[i];
          bytesCount += value.length * 3;
        }
      }
    }
  }
  {
    final value = object.timeDaily;
    if (value != null) {
      bytesCount += 3 + value.length * 8;
    }
  }
  {
    final value = object.timezone;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.uvIndex;
    if (value != null) {
      bytesCount += 3 + value.length * 8;
    }
  }
  {
    final value = object.uvIndexMax;
    if (value != null) {
      bytesCount += 3 + value.length * 8;
    }
  }
  {
    final value = object.visibility;
    if (value != null) {
      bytesCount += 3 + value.length * 8;
    }
  }
  {
    final value = object.weathercode;
    if (value != null) {
      bytesCount += 3 + value.length * 8;
    }
  }
  {
    final value = object.weathercodeDaily;
    if (value != null) {
      bytesCount += 3 + value.length * 8;
    }
  }
  {
    final value = object.winddirection10M;
    if (value != null) {
      bytesCount += 3 + value.length * 8;
    }
  }
  {
    final value = object.winddirection10MDominant;
    if (value != null) {
      bytesCount += 3 + value.length * 8;
    }
  }
  {
    final value = object.windgusts10M;
    if (value != null) {
      bytesCount += 3 + value.length * 8;
    }
  }
  {
    final value = object.windgusts10MMax;
    if (value != null) {
      bytesCount += 3 + value.length * 8;
    }
  }
  {
    final value = object.windspeed10M;
    if (value != null) {
      bytesCount += 3 + value.length * 8;
    }
  }
  {
    final value = object.windspeed10MMax;
    if (value != null) {
      bytesCount += 3 + value.length * 8;
    }
  }
  return bytesCount;
}

void _weatherCardSerialize(
    WeatherCard object,
    IsarWriter writer,
    List<int> offsets,
    Map<Type, List<int>> allOffsets,
    ) {
  writer.writeDoubleList(offsets[0], object.apparentTemperature);
  writer.writeDoubleList(offsets[1], object.apparentTemperatureMax);
  writer.writeDoubleList(offsets[2], object.apparentTemperatureMin);
  writer.writeString(offsets[3], object.city);
  writer.writeLongList(offsets[4], object.cloudcover);
  writer.writeString(offsets[5], object.district);
  writer.writeDoubleList(offsets[6], object.evapotranspiration);
  writer.writeDouble(offsets[7], object.lat);
  writer.writeDouble(offsets[8], object.lon);
  writer.writeDoubleList(offsets[9], object.precipitation);
  writer.writeLongList(offsets[10], object.precipitationProbabilityMax);
  writer.writeDoubleList(offsets[11], object.precipitationSum);
  writer.writeDoubleList(offsets[12], object.rain);
  writer.writeDoubleList(offsets[13], object.rainSum);
  writer.writeLongList(offsets[14], object.relativehumidity2M);
  writer.writeStringList(offsets[15], object.sunrise);
  writer.writeStringList(offsets[16], object.sunset);
  writer.writeDoubleList(offsets[17], object.surfacePressure);
  writer.writeDoubleList(offsets[18], object.temperature2M);
  writer.writeDoubleList(offsets[19], object.temperature2MMax);
  writer.writeDoubleList(offsets[20], object.temperature2MMin);
  writer.writeStringList(offsets[21], object.time);
  writer.writeDateTimeList(offsets[22], object.timeDaily);
  writer.writeDateTime(offsets[23], object.timestamp);
  writer.writeString(offsets[24], object.timezone);
  writer.writeDoubleList(offsets[25], object.uvIndex);
  writer.writeDoubleList(offsets[26], object.uvIndexMax);
  writer.writeDoubleList(offsets[27], object.visibility);
  writer.writeLongList(offsets[28], object.weathercode);
  writer.writeLongList(offsets[29], object.weathercodeDaily);
  writer.writeLongList(offsets[30], object.winddirection10M);
  writer.writeLongList(offsets[31], object.winddirection10MDominant);
  writer.writeDoubleList(offsets[32], object.windgusts10M);
  writer.writeDoubleList(offsets[33], object.windgusts10MMax);
  writer.writeDoubleList(offsets[34], object.windspeed10M);
  writer.writeDoubleList(offsets[35], object.windspeed10MMax);
}

WeatherCard _weatherCardDeserialize(
    Id id,
    IsarReader reader,
    List<int> offsets,
    Map<Type, List<int>> allOffsets,
    ) {
  final object = WeatherCard(
    apparentTemperature: reader.readDoubleList(offsets[0]),
    apparentTemperatureMax: reader.readDoubleList(offsets[1]),
    apparentTemperatureMin: reader.readDoubleList(offsets[2]),
    city: reader.readStringOrNull(offsets[3]),
    cloudcover: reader.readLongList(offsets[4]),
    district: reader.readStringOrNull(offsets[5]),
    evapotranspiration: reader.readDoubleList(offsets[6]),
    lat: reader.readDoubleOrNull(offsets[7]),
    lon: reader.readDoubleOrNull(offsets[8]),
    precipitation: reader.readDoubleList(offsets[9]),
    precipitationProbabilityMax: reader.readLongList(offsets[10]),
    precipitationSum: reader.readDoubleList(offsets[11]),
    rain: reader.readDoubleList(offsets[12]),
    rainSum: reader.readDoubleList(offsets[13]),
    relativehumidity2M: reader.readLongList(offsets[14]),
    sunrise: reader.readStringList(offsets[15]),
    sunset: reader.readStringList(offsets[16]),
    surfacePressure: reader.readDoubleList(offsets[17]),
    temperature2M: reader.readDoubleList(offsets[18]),
    temperature2MMax: reader.readDoubleList(offsets[19]),
    temperature2MMin: reader.readDoubleList(offsets[20]),
    time: reader.readStringList(offsets[21]),
    timeDaily: reader.readDateTimeList(offsets[22]),
    timestamp: reader.readDateTimeOrNull(offsets[23]),
    timezone: reader.readStringOrNull(offsets[24]),
    uvIndex: reader.readDoubleList(offsets[25]),
    uvIndexMax: reader.readDoubleList(offsets[26]),
    visibility: reader.readDoubleList(offsets[27]),
    weathercode: reader.readLongList(offsets[28]),
    weathercodeDaily: reader.readLongList(offsets[29]),
    winddirection10M: reader.readLongList(offsets[30]),
    winddirection10MDominant: reader.readLongList(offsets[31]),
    windgusts10M: reader.readDoubleList(offsets[32]),
    windgusts10MMax: reader.readDoubleList(offsets[33]),
    windspeed10M: reader.readDoubleList(offsets[34]),
    windspeed10MMax: reader.readDoubleList(offsets[35]),
  );
  object.id = id;
  return object;
}

P _weatherCardDeserializeProp<P>(
    IsarReader reader,
    int propertyId,
    int offset,
    Map<Type, List<int>> allOffsets,
    ) {
  switch (propertyId) {
    case 0:
      return (reader.readDoubleList(offset)) as P;
    case 1:
      return (reader.readDoubleList(offset)) as P;
    case 2:
      return (reader.readDoubleList(offset)) as P;
    case 3:
      return (reader.readStringOrNull(offset)) as P;
    case 4:
      return (reader.readLongList(offset)) as P;
    case 5:
      return (reader.readStringOrNull(offset)) as P;
    case 6:
      return (reader.readDoubleList(offset)) as P;
    case 7:
      return (reader.readDoubleOrNull(offset)) as P;
    case 8:
      return (reader.readDoubleOrNull(offset)) as P;
    case 9:
      return (reader.readDoubleList(offset)) as P;
    case 10:
      return (reader.readLongList(offset)) as P;
    case 11:
      return (reader.readDoubleList(offset)) as P;
    case 12:
      return (reader.readDoubleList(offset)) as P;
    case 13:
      return (reader.readDoubleList(offset)) as P;
    case 14:
      return (reader.readLongList(offset)) as P;
    case 15:
      return (reader.readStringList(offset)) as P;
    case 16:
      return (reader.readStringList(offset)) as P;
    case 17:
      return (reader.readDoubleList(offset)) as P;
    case 18:
      return (reader.readDoubleList(offset)) as P;
    case 19:
      return (reader.readDoubleList(offset)) as P;
    case 20:
      return (reader.readDoubleList(offset)) as P;
    case 21:
      return (reader.readStringList(offset)) as P;
    case 22:
      return (reader.readDateTimeList(offset)) as P;
    case 23:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 24:
      return (reader.readStringOrNull(offset)) as P;
    case 25:
      return (reader.readDoubleList(offset)) as P;
    case 26:
      return (reader.readDoubleList(offset)) as P;
    case 27:
      return (reader.readDoubleList(offset)) as P;
    case 28:
      return (reader.readLongList(offset)) as P;
    case 29:
      return (reader.readLongList(offset)) as P;
    case 30:
      return (reader.readLongList(offset)) as P;
    case 31:
      return (reader.readLongList(offset)) as P;
    case 32:
      return (reader.readDoubleList(offset)) as P;
    case 33:
      return (reader.readDoubleList(offset)) as P;
    case 34:
      return (reader.readDoubleList(offset)) as P;
    case 35:
      return (reader.readDoubleList(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _weatherCardGetId(WeatherCard object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _weatherCardGetLinks(WeatherCard object) {
  return [];
}

void _weatherCardAttach(
    IsarCollection<dynamic> col, Id id, WeatherCard object) {
  object.id = id;
}

extension WeatherCardQueryWhereSort
on QueryBuilder<WeatherCard, WeatherCard, QWhere> {
  QueryBuilder<WeatherCard, WeatherCard, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension WeatherCardQueryWhere
on QueryBuilder<WeatherCard, WeatherCard, QWhereClause> {
  QueryBuilder<WeatherCard, WeatherCard, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterWhereClause> idNotEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
          IdWhereClause.lessThan(upper: id, includeUpper: false),
        )
            .addWhereClause(
          IdWhereClause.greaterThan(lower: id, includeLower: false),
        );
      } else {
        return query
            .addWhereClause(
          IdWhereClause.greaterThan(lower: id, includeLower: false),
        )
            .addWhereClause(
          IdWhereClause.lessThan(upper: id, includeUpper: false),
        );
      }
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterWhereClause> idBetween(
      Id lowerId,
      Id upperId, {
        bool includeLower = true,
        bool includeUpper = true,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension WeatherCardQueryFilter
on QueryBuilder<WeatherCard, WeatherCard, QFilterCondition> {
  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  apparentTemperatureIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'apparentTemperature',
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  apparentTemperatureIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'apparentTemperature',
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  apparentTemperatureElementEqualTo(
      double value, {
        double epsilon = Query.epsilon,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'apparentTemperature',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  apparentTemperatureElementGreaterThan(
      double value, {
        bool include = false,
        double epsilon = Query.epsilon,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'apparentTemperature',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  apparentTemperatureElementLessThan(
      double value, {
        bool include = false,
        double epsilon = Query.epsilon,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'apparentTemperature',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  apparentTemperatureElementBetween(
      double lower,
      double upper, {
        bool includeLower = true,
        bool includeUpper = true,
        double epsilon = Query.epsilon,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'apparentTemperature',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  apparentTemperatureLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'apparentTemperature',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  apparentTemperatureIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'apparentTemperature',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  apparentTemperatureIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'apparentTemperature',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  apparentTemperatureLengthLessThan(
      int length, {
        bool include = false,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'apparentTemperature',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  apparentTemperatureLengthGreaterThan(
      int length, {
        bool include = false,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'apparentTemperature',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  apparentTemperatureLengthBetween(
      int lower,
      int upper, {
        bool includeLower = true,
        bool includeUpper = true,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'apparentTemperature',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  apparentTemperatureMaxIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'apparentTemperatureMax',
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  apparentTemperatureMaxIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'apparentTemperatureMax',
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  apparentTemperatureMaxElementEqualTo(
      double value, {
        double epsilon = Query.epsilon,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'apparentTemperatureMax',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  apparentTemperatureMaxElementGreaterThan(
      double value, {
        bool include = false,
        double epsilon = Query.epsilon,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'apparentTemperatureMax',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  apparentTemperatureMaxElementLessThan(
      double value, {
        bool include = false,
        double epsilon = Query.epsilon,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'apparentTemperatureMax',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  apparentTemperatureMaxElementBetween(
      double lower,
      double upper, {
        bool includeLower = true,
        bool includeUpper = true,
        double epsilon = Query.epsilon,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'apparentTemperatureMax',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  apparentTemperatureMaxLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'apparentTemperatureMax',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  apparentTemperatureMaxIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'apparentTemperatureMax',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  apparentTemperatureMaxIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'apparentTemperatureMax',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  apparentTemperatureMaxLengthLessThan(
      int length, {
        bool include = false,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'apparentTemperatureMax',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  apparentTemperatureMaxLengthGreaterThan(
      int length, {
        bool include = false,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'apparentTemperatureMax',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  apparentTemperatureMaxLengthBetween(
      int lower,
      int upper, {
        bool includeLower = true,
        bool includeUpper = true,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'apparentTemperatureMax',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  apparentTemperatureMinIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'apparentTemperatureMin',
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  apparentTemperatureMinIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'apparentTemperatureMin',
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  apparentTemperatureMinElementEqualTo(
      double value, {
        double epsilon = Query.epsilon,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'apparentTemperatureMin',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  apparentTemperatureMinElementGreaterThan(
      double value, {
        bool include = false,
        double epsilon = Query.epsilon,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'apparentTemperatureMin',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  apparentTemperatureMinElementLessThan(
      double value, {
        bool include = false,
        double epsilon = Query.epsilon,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'apparentTemperatureMin',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  apparentTemperatureMinElementBetween(
      double lower,
      double upper, {
        bool includeLower = true,
        bool includeUpper = true,
        double epsilon = Query.epsilon,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'apparentTemperatureMin',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  apparentTemperatureMinLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'apparentTemperatureMin',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  apparentTemperatureMinIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'apparentTemperatureMin',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  apparentTemperatureMinIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'apparentTemperatureMin',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  apparentTemperatureMinLengthLessThan(
      int length, {
        bool include = false,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'apparentTemperatureMin',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  apparentTemperatureMinLengthGreaterThan(
      int length, {
        bool include = false,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'apparentTemperatureMin',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  apparentTemperatureMinLengthBetween(
      int lower,
      int upper, {
        bool includeLower = true,
        bool includeUpper = true,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'apparentTemperatureMin',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition> cityIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'city',
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  cityIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'city',
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition> cityEqualTo(
      String? value, {
        bool caseSensitive = true,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'city',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition> cityGreaterThan(
      String? value, {
        bool include = false,
        bool caseSensitive = true,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'city',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition> cityLessThan(
      String? value, {
        bool include = false,
        bool caseSensitive = true,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'city',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition> cityBetween(
      String? lower,
      String? upper, {
        bool includeLower = true,
        bool includeUpper = true,
        bool caseSensitive = true,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'city',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition> cityStartsWith(
      String value, {
        bool caseSensitive = true,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'city',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition> cityEndsWith(
      String value, {
        bool caseSensitive = true,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'city',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition> cityContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'city',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition> cityMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'city',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition> cityIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'city',
        value: '',
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  cityIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'city',
        value: '',
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  cloudcoverIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'cloudcover',
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  cloudcoverIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'cloudcover',
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  cloudcoverElementEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'cloudcover',
        value: value,
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  cloudcoverElementGreaterThan(
      int value, {
        bool include = false,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'cloudcover',
        value: value,
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  cloudcoverElementLessThan(
      int value, {
        bool include = false,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'cloudcover',
        value: value,
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  cloudcoverElementBetween(
      int lower,
      int upper, {
        bool includeLower = true,
        bool includeUpper = true,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'cloudcover',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  cloudcoverLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'cloudcover',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  cloudcoverIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'cloudcover',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  cloudcoverIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'cloudcover',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  cloudcoverLengthLessThan(
      int length, {
        bool include = false,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'cloudcover',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  cloudcoverLengthGreaterThan(
      int length, {
        bool include = false,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'cloudcover',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  cloudcoverLengthBetween(
      int lower,
      int upper, {
        bool includeLower = true,
        bool includeUpper = true,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'cloudcover',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  districtIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'district',
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  districtIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'district',
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition> districtEqualTo(
      String? value, {
        bool caseSensitive = true,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'district',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  districtGreaterThan(
      String? value, {
        bool include = false,
        bool caseSensitive = true,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'district',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  districtLessThan(
      String? value, {
        bool include = false,
        bool caseSensitive = true,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'district',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition> districtBetween(
      String? lower,
      String? upper, {
        bool includeLower = true,
        bool includeUpper = true,
        bool caseSensitive = true,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'district',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  districtStartsWith(
      String value, {
        bool caseSensitive = true,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'district',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  districtEndsWith(
      String value, {
        bool caseSensitive = true,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'district',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  districtContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'district',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition> districtMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'district',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  districtIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'district',
        value: '',
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  districtIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'district',
        value: '',
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  evapotranspirationIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'evapotranspiration',
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  evapotranspirationIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'evapotranspiration',
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  evapotranspirationElementEqualTo(
      double value, {
        double epsilon = Query.epsilon,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'evapotranspiration',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  evapotranspirationElementGreaterThan(
      double value, {
        bool include = false,
        double epsilon = Query.epsilon,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'evapotranspiration',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  evapotranspirationElementLessThan(
      double value, {
        bool include = false,
        double epsilon = Query.epsilon,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'evapotranspiration',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  evapotranspirationElementBetween(
      double lower,
      double upper, {
        bool includeLower = true,
        bool includeUpper = true,
        double epsilon = Query.epsilon,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'evapotranspiration',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  evapotranspirationLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'evapotranspiration',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  evapotranspirationIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'evapotranspiration',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  evapotranspirationIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'evapotranspiration',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  evapotranspirationLengthLessThan(
      int length, {
        bool include = false,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'evapotranspiration',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  evapotranspirationLengthGreaterThan(
      int length, {
        bool include = false,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'evapotranspiration',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  evapotranspirationLengthBetween(
      int lower,
      int upper, {
        bool includeLower = true,
        bool includeUpper = true,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'evapotranspiration',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition> idGreaterThan(
      Id value, {
        bool include = false,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition> idLessThan(
      Id value, {
        bool include = false,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition> idBetween(
      Id lower,
      Id upper, {
        bool includeLower = true,
        bool includeUpper = true,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition> latIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'lat',
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition> latIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'lat',
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition> latEqualTo(
      double? value, {
        double epsilon = Query.epsilon,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lat',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition> latGreaterThan(
      double? value, {
        bool include = false,
        double epsilon = Query.epsilon,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'lat',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition> latLessThan(
      double? value, {
        bool include = false,
        double epsilon = Query.epsilon,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'lat',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition> latBetween(
      double? lower,
      double? upper, {
        bool includeLower = true,
        bool includeUpper = true,
        double epsilon = Query.epsilon,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'lat',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition> lonIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'lon',
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition> lonIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'lon',
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition> lonEqualTo(
      double? value, {
        double epsilon = Query.epsilon,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lon',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition> lonGreaterThan(
      double? value, {
        bool include = false,
        double epsilon = Query.epsilon,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'lon',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition> lonLessThan(
      double? value, {
        bool include = false,
        double epsilon = Query.epsilon,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'lon',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition> lonBetween(
      double? lower,
      double? upper, {
        bool includeLower = true,
        bool includeUpper = true,
        double epsilon = Query.epsilon,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'lon',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  precipitationIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'precipitation',
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  precipitationIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'precipitation',
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  precipitationElementEqualTo(
      double value, {
        double epsilon = Query.epsilon,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'precipitation',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  precipitationElementGreaterThan(
      double value, {
        bool include = false,
        double epsilon = Query.epsilon,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'precipitation',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  precipitationElementLessThan(
      double value, {
        bool include = false,
        double epsilon = Query.epsilon,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'precipitation',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  precipitationElementBetween(
      double lower,
      double upper, {
        bool includeLower = true,
        bool includeUpper = true,
        double epsilon = Query.epsilon,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'precipitation',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  precipitationLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'precipitation',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  precipitationIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'precipitation',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  precipitationIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'precipitation',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  precipitationLengthLessThan(
      int length, {
        bool include = false,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'precipitation',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  precipitationLengthGreaterThan(
      int length, {
        bool include = false,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'precipitation',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  precipitationLengthBetween(
      int lower,
      int upper, {
        bool includeLower = true,
        bool includeUpper = true,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'precipitation',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  precipitationProbabilityMaxIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'precipitationProbabilityMax',
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  precipitationProbabilityMaxIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'precipitationProbabilityMax',
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  precipitationProbabilityMaxElementEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'precipitationProbabilityMax',
        value: value,
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  precipitationProbabilityMaxElementGreaterThan(
      int value, {
        bool include = false,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'precipitationProbabilityMax',
        value: value,
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  precipitationProbabilityMaxElementLessThan(
      int value, {
        bool include = false,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'precipitationProbabilityMax',
        value: value,
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  precipitationProbabilityMaxElementBetween(
      int lower,
      int upper, {
        bool includeLower = true,
        bool includeUpper = true,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'precipitationProbabilityMax',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  precipitationProbabilityMaxLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'precipitationProbabilityMax',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  precipitationProbabilityMaxIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'precipitationProbabilityMax',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  precipitationProbabilityMaxIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'precipitationProbabilityMax',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  precipitationProbabilityMaxLengthLessThan(
      int length, {
        bool include = false,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'precipitationProbabilityMax',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  precipitationProbabilityMaxLengthGreaterThan(
      int length, {
        bool include = false,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'precipitationProbabilityMax',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  precipitationProbabilityMaxLengthBetween(
      int lower,
      int upper, {
        bool includeLower = true,
        bool includeUpper = true,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'precipitationProbabilityMax',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  precipitationSumIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'precipitationSum',
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  precipitationSumIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'precipitationSum',
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  precipitationSumElementEqualTo(
      double value, {
        double epsilon = Query.epsilon,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'precipitationSum',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  precipitationSumElementGreaterThan(
      double value, {
        bool include = false,
        double epsilon = Query.epsilon,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'precipitationSum',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  precipitationSumElementLessThan(
      double value, {
        bool include = false,
        double epsilon = Query.epsilon,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'precipitationSum',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  precipitationSumElementBetween(
      double lower,
      double upper, {
        bool includeLower = true,
        bool includeUpper = true,
        double epsilon = Query.epsilon,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'precipitationSum',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  precipitationSumLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'precipitationSum',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  precipitationSumIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'precipitationSum',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  precipitationSumIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'precipitationSum',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  precipitationSumLengthLessThan(
      int length, {
        bool include = false,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'precipitationSum',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  precipitationSumLengthGreaterThan(
      int length, {
        bool include = false,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'precipitationSum',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  precipitationSumLengthBetween(
      int lower,
      int upper, {
        bool includeLower = true,
        bool includeUpper = true,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'precipitationSum',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition> rainIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'rain',
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  rainIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'rain',
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  rainElementEqualTo(
      double value, {
        double epsilon = Query.epsilon,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'rain',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  rainElementGreaterThan(
      double value, {
        bool include = false,
        double epsilon = Query.epsilon,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'rain',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  rainElementLessThan(
      double value, {
        bool include = false,
        double epsilon = Query.epsilon,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'rain',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  rainElementBetween(
      double lower,
      double upper, {
        bool includeLower = true,
        bool includeUpper = true,
        double epsilon = Query.epsilon,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'rain',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  rainLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'rain',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition> rainIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'rain',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  rainIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'rain',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  rainLengthLessThan(
      int length, {
        bool include = false,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'rain',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  rainLengthGreaterThan(
      int length, {
        bool include = false,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'rain',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  rainLengthBetween(
      int lower,
      int upper, {
        bool includeLower = true,
        bool includeUpper = true,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'rain',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  rainSumIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'rainSum',
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  rainSumIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'rainSum',
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  rainSumElementEqualTo(
      double value, {
        double epsilon = Query.epsilon,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'rainSum',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  rainSumElementGreaterThan(
      double value, {
        bool include = false,
        double epsilon = Query.epsilon,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'rainSum',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  rainSumElementLessThan(
      double value, {
        bool include = false,
        double epsilon = Query.epsilon,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'rainSum',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  rainSumElementBetween(
      double lower,
      double upper, {
        bool includeLower = true,
        bool includeUpper = true,
        double epsilon = Query.epsilon,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'rainSum',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  rainSumLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'rainSum',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  rainSumIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'rainSum',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  rainSumIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'rainSum',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  rainSumLengthLessThan(
      int length, {
        bool include = false,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'rainSum',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  rainSumLengthGreaterThan(
      int length, {
        bool include = false,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'rainSum',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  rainSumLengthBetween(
      int lower,
      int upper, {
        bool includeLower = true,
        bool includeUpper = true,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'rainSum',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  relativehumidity2MIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'relativehumidity2M',
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  relativehumidity2MIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'relativehumidity2M',
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  relativehumidity2MElementEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'relativehumidity2M',
        value: value,
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  relativehumidity2MElementGreaterThan(
      int value, {
        bool include = false,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'relativehumidity2M',
        value: value,
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  relativehumidity2MElementLessThan(
      int value, {
        bool include = false,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'relativehumidity2M',
        value: value,
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  relativehumidity2MElementBetween(
      int lower,
      int upper, {
        bool includeLower = true,
        bool includeUpper = true,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'relativehumidity2M',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  relativehumidity2MLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'relativehumidity2M',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  relativehumidity2MIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'relativehumidity2M',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  relativehumidity2MIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'relativehumidity2M',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  relativehumidity2MLengthLessThan(
      int length, {
        bool include = false,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'relativehumidity2M',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  relativehumidity2MLengthGreaterThan(
      int length, {
        bool include = false,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'relativehumidity2M',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  relativehumidity2MLengthBetween(
      int lower,
      int upper, {
        bool includeLower = true,
        bool includeUpper = true,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'relativehumidity2M',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  sunriseIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'sunrise',
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  sunriseIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'sunrise',
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  sunriseElementEqualTo(
      String value, {
        bool caseSensitive = true,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'sunrise',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  sunriseElementGreaterThan(
      String value, {
        bool include = false,
        bool caseSensitive = true,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'sunrise',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  sunriseElementLessThan(
      String value, {
        bool include = false,
        bool caseSensitive = true,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'sunrise',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  sunriseElementBetween(
      String lower,
      String upper, {
        bool includeLower = true,
        bool includeUpper = true,
        bool caseSensitive = true,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'sunrise',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  sunriseElementStartsWith(
      String value, {
        bool caseSensitive = true,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'sunrise',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  sunriseElementEndsWith(
      String value, {
        bool caseSensitive = true,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'sunrise',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  sunriseElementContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'sunrise',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  sunriseElementMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'sunrise',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  sunriseElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'sunrise',
        value: '',
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  sunriseElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'sunrise',
        value: '',
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  sunriseLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'sunrise',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  sunriseIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'sunrise',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  sunriseIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'sunrise',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  sunriseLengthLessThan(
      int length, {
        bool include = false,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'sunrise',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  sunriseLengthGreaterThan(
      int length, {
        bool include = false,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'sunrise',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  sunriseLengthBetween(
      int lower,
      int upper, {
        bool includeLower = true,
        bool includeUpper = true,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'sunrise',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition> sunsetIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'sunset',
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  sunsetIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'sunset',
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  sunsetElementEqualTo(
      String value, {
        bool caseSensitive = true,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'sunset',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  sunsetElementGreaterThan(
      String value, {
        bool include = false,
        bool caseSensitive = true,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'sunset',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  sunsetElementLessThan(
      String value, {
        bool include = false,
        bool caseSensitive = true,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'sunset',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  sunsetElementBetween(
      String lower,
      String upper, {
        bool includeLower = true,
        bool includeUpper = true,
        bool caseSensitive = true,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'sunset',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  sunsetElementStartsWith(
      String value, {
        bool caseSensitive = true,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'sunset',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  sunsetElementEndsWith(
      String value, {
        bool caseSensitive = true,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'sunset',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  sunsetElementContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'sunset',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  sunsetElementMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'sunset',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  sunsetElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'sunset',
        value: '',
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  sunsetElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'sunset',
        value: '',
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  sunsetLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'sunset',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  sunsetIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'sunset',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  sunsetIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'sunset',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  sunsetLengthLessThan(
      int length, {
        bool include = false,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'sunset',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  sunsetLengthGreaterThan(
      int length, {
        bool include = false,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'sunset',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  sunsetLengthBetween(
      int lower,
      int upper, {
        bool includeLower = true,
        bool includeUpper = true,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'sunset',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  surfacePressureIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'surfacePressure',
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  surfacePressureIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'surfacePressure',
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  surfacePressureElementEqualTo(
      double value, {
        double epsilon = Query.epsilon,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'surfacePressure',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  surfacePressureElementGreaterThan(
      double value, {
        bool include = false,
        double epsilon = Query.epsilon,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'surfacePressure',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  surfacePressureElementLessThan(
      double value, {
        bool include = false,
        double epsilon = Query.epsilon,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'surfacePressure',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  surfacePressureElementBetween(
      double lower,
      double upper, {
        bool includeLower = true,
        bool includeUpper = true,
        double epsilon = Query.epsilon,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'surfacePressure',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  surfacePressureLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'surfacePressure',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  surfacePressureIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'surfacePressure',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  surfacePressureIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'surfacePressure',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  surfacePressureLengthLessThan(
      int length, {
        bool include = false,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'surfacePressure',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  surfacePressureLengthGreaterThan(
      int length, {
        bool include = false,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'surfacePressure',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  surfacePressureLengthBetween(
      int lower,
      int upper, {
        bool includeLower = true,
        bool includeUpper = true,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'surfacePressure',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  temperature2MIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'temperature2M',
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  temperature2MIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'temperature2M',
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  temperature2MElementEqualTo(
      double value, {
        double epsilon = Query.epsilon,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'temperature2M',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  temperature2MElementGreaterThan(
      double value, {
        bool include = false,
        double epsilon = Query.epsilon,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'temperature2M',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  temperature2MElementLessThan(
      double value, {
        bool include = false,
        double epsilon = Query.epsilon,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'temperature2M',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  temperature2MElementBetween(
      double lower,
      double upper, {
        bool includeLower = true,
        bool includeUpper = true,
        double epsilon = Query.epsilon,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'temperature2M',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  temperature2MLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'temperature2M',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  temperature2MIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'temperature2M',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  temperature2MIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'temperature2M',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  temperature2MLengthLessThan(
      int length, {
        bool include = false,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'temperature2M',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  temperature2MLengthGreaterThan(
      int length, {
        bool include = false,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'temperature2M',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  temperature2MLengthBetween(
      int lower,
      int upper, {
        bool includeLower = true,
        bool includeUpper = true,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'temperature2M',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  temperature2MMaxIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'temperature2MMax',
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  temperature2MMaxIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'temperature2MMax',
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  temperature2MMaxElementEqualTo(
      double value, {
        double epsilon = Query.epsilon,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'temperature2MMax',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  temperature2MMaxElementGreaterThan(
      double value, {
        bool include = false,
        double epsilon = Query.epsilon,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'temperature2MMax',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  temperature2MMaxElementLessThan(
      double value, {
        bool include = false,
        double epsilon = Query.epsilon,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'temperature2MMax',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  temperature2MMaxElementBetween(
      double lower,
      double upper, {
        bool includeLower = true,
        bool includeUpper = true,
        double epsilon = Query.epsilon,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'temperature2MMax',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  temperature2MMaxLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'temperature2MMax',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  temperature2MMaxIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'temperature2MMax',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  temperature2MMaxIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'temperature2MMax',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  temperature2MMaxLengthLessThan(
      int length, {
        bool include = false,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'temperature2MMax',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  temperature2MMaxLengthGreaterThan(
      int length, {
        bool include = false,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'temperature2MMax',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  temperature2MMaxLengthBetween(
      int lower,
      int upper, {
        bool includeLower = true,
        bool includeUpper = true,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'temperature2MMax',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  temperature2MMinIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'temperature2MMin',
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  temperature2MMinIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'temperature2MMin',
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  temperature2MMinElementEqualTo(
      double value, {
        double epsilon = Query.epsilon,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'temperature2MMin',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  temperature2MMinElementGreaterThan(
      double value, {
        bool include = false,
        double epsilon = Query.epsilon,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'temperature2MMin',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  temperature2MMinElementLessThan(
      double value, {
        bool include = false,
        double epsilon = Query.epsilon,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'temperature2MMin',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  temperature2MMinElementBetween(
      double lower,
      double upper, {
        bool includeLower = true,
        bool includeUpper = true,
        double epsilon = Query.epsilon,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'temperature2MMin',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  temperature2MMinLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'temperature2MMin',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  temperature2MMinIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'temperature2MMin',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  temperature2MMinIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'temperature2MMin',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  temperature2MMinLengthLessThan(
      int length, {
        bool include = false,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'temperature2MMin',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  temperature2MMinLengthGreaterThan(
      int length, {
        bool include = false,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'temperature2MMin',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  temperature2MMinLengthBetween(
      int lower,
      int upper, {
        bool includeLower = true,
        bool includeUpper = true,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'temperature2MMin',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition> timeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'time',
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  timeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'time',
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  timeElementEqualTo(
      String value, {
        bool caseSensitive = true,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'time',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  timeElementGreaterThan(
      String value, {
        bool include = false,
        bool caseSensitive = true,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'time',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  timeElementLessThan(
      String value, {
        bool include = false,
        bool caseSensitive = true,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'time',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  timeElementBetween(
      String lower,
      String upper, {
        bool includeLower = true,
        bool includeUpper = true,
        bool caseSensitive = true,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'time',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  timeElementStartsWith(
      String value, {
        bool caseSensitive = true,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'time',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  timeElementEndsWith(
      String value, {
        bool caseSensitive = true,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'time',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  timeElementContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'time',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  timeElementMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'time',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  timeElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'time',
        value: '',
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  timeElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'time',
        value: '',
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  timeLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'time',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition> timeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'time',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  timeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'time',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  timeLengthLessThan(
      int length, {
        bool include = false,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'time',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  timeLengthGreaterThan(
      int length, {
        bool include = false,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'time',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  timeLengthBetween(
      int lower,
      int upper, {
        bool includeLower = true,
        bool includeUpper = true,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'time',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  timeDailyIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'timeDaily',
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  timeDailyIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'timeDaily',
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  timeDailyElementEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'timeDaily',
        value: value,
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  timeDailyElementGreaterThan(
      DateTime value, {
        bool include = false,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'timeDaily',
        value: value,
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  timeDailyElementLessThan(
      DateTime value, {
        bool include = false,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'timeDaily',
        value: value,
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  timeDailyElementBetween(
      DateTime lower,
      DateTime upper, {
        bool includeLower = true,
        bool includeUpper = true,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'timeDaily',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  timeDailyLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'timeDaily',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  timeDailyIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'timeDaily',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  timeDailyIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'timeDaily',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  timeDailyLengthLessThan(
      int length, {
        bool include = false,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'timeDaily',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  timeDailyLengthGreaterThan(
      int length, {
        bool include = false,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'timeDaily',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  timeDailyLengthBetween(
      int lower,
      int upper, {
        bool includeLower = true,
        bool includeUpper = true,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'timeDaily',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  timestampIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'timestamp',
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  timestampIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'timestamp',
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  timestampEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'timestamp',
        value: value,
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  timestampGreaterThan(
      DateTime? value, {
        bool include = false,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'timestamp',
        value: value,
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  timestampLessThan(
      DateTime? value, {
        bool include = false,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'timestamp',
        value: value,
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  timestampBetween(
      DateTime? lower,
      DateTime? upper, {
        bool includeLower = true,
        bool includeUpper = true,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'timestamp',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  timezoneIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'timezone',
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  timezoneIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'timezone',
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition> timezoneEqualTo(
      String? value, {
        bool caseSensitive = true,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'timezone',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  timezoneGreaterThan(
      String? value, {
        bool include = false,
        bool caseSensitive = true,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'timezone',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  timezoneLessThan(
      String? value, {
        bool include = false,
        bool caseSensitive = true,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'timezone',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition> timezoneBetween(
      String? lower,
      String? upper, {
        bool includeLower = true,
        bool includeUpper = true,
        bool caseSensitive = true,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'timezone',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  timezoneStartsWith(
      String value, {
        bool caseSensitive = true,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'timezone',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  timezoneEndsWith(
      String value, {
        bool caseSensitive = true,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'timezone',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  timezoneContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'timezone',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition> timezoneMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'timezone',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  timezoneIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'timezone',
        value: '',
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  timezoneIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'timezone',
        value: '',
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  uvIndexIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'uvIndex',
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  uvIndexIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'uvIndex',
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  uvIndexElementEqualTo(
      double value, {
        double epsilon = Query.epsilon,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'uvIndex',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  uvIndexElementGreaterThan(
      double value, {
        bool include = false,
        double epsilon = Query.epsilon,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'uvIndex',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  uvIndexElementLessThan(
      double value, {
        bool include = false,
        double epsilon = Query.epsilon,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'uvIndex',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  uvIndexElementBetween(
      double lower,
      double upper, {
        bool includeLower = true,
        bool includeUpper = true,
        double epsilon = Query.epsilon,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'uvIndex',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  uvIndexLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'uvIndex',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  uvIndexIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'uvIndex',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  uvIndexIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'uvIndex',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  uvIndexLengthLessThan(
      int length, {
        bool include = false,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'uvIndex',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  uvIndexLengthGreaterThan(
      int length, {
        bool include = false,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'uvIndex',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  uvIndexLengthBetween(
      int lower,
      int upper, {
        bool includeLower = true,
        bool includeUpper = true,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'uvIndex',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  uvIndexMaxIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'uvIndexMax',
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  uvIndexMaxIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'uvIndexMax',
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  uvIndexMaxElementEqualTo(
      double value, {
        double epsilon = Query.epsilon,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'uvIndexMax',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  uvIndexMaxElementGreaterThan(
      double value, {
        bool include = false,
        double epsilon = Query.epsilon,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'uvIndexMax',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  uvIndexMaxElementLessThan(
      double value, {
        bool include = false,
        double epsilon = Query.epsilon,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'uvIndexMax',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  uvIndexMaxElementBetween(
      double lower,
      double upper, {
        bool includeLower = true,
        bool includeUpper = true,
        double epsilon = Query.epsilon,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'uvIndexMax',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  uvIndexMaxLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'uvIndexMax',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  uvIndexMaxIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'uvIndexMax',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  uvIndexMaxIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'uvIndexMax',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  uvIndexMaxLengthLessThan(
      int length, {
        bool include = false,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'uvIndexMax',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  uvIndexMaxLengthGreaterThan(
      int length, {
        bool include = false,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'uvIndexMax',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  uvIndexMaxLengthBetween(
      int lower,
      int upper, {
        bool includeLower = true,
        bool includeUpper = true,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'uvIndexMax',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  visibilityIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'visibility',
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  visibilityIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'visibility',
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  visibilityElementEqualTo(
      double value, {
        double epsilon = Query.epsilon,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'visibility',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  visibilityElementGreaterThan(
      double value, {
        bool include = false,
        double epsilon = Query.epsilon,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'visibility',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  visibilityElementLessThan(
      double value, {
        bool include = false,
        double epsilon = Query.epsilon,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'visibility',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  visibilityElementBetween(
      double lower,
      double upper, {
        bool includeLower = true,
        bool includeUpper = true,
        double epsilon = Query.epsilon,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'visibility',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  visibilityLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'visibility',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  visibilityIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'visibility',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  visibilityIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'visibility',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  visibilityLengthLessThan(
      int length, {
        bool include = false,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'visibility',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  visibilityLengthGreaterThan(
      int length, {
        bool include = false,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'visibility',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  visibilityLengthBetween(
      int lower,
      int upper, {
        bool includeLower = true,
        bool includeUpper = true,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'visibility',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  weathercodeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'weathercode',
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  weathercodeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'weathercode',
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  weathercodeElementEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'weathercode',
        value: value,
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  weathercodeElementGreaterThan(
      int value, {
        bool include = false,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'weathercode',
        value: value,
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  weathercodeElementLessThan(
      int value, {
        bool include = false,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'weathercode',
        value: value,
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  weathercodeElementBetween(
      int lower,
      int upper, {
        bool includeLower = true,
        bool includeUpper = true,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'weathercode',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  weathercodeLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'weathercode',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  weathercodeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'weathercode',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  weathercodeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'weathercode',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  weathercodeLengthLessThan(
      int length, {
        bool include = false,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'weathercode',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  weathercodeLengthGreaterThan(
      int length, {
        bool include = false,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'weathercode',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  weathercodeLengthBetween(
      int lower,
      int upper, {
        bool includeLower = true,
        bool includeUpper = true,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'weathercode',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  weathercodeDailyIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'weathercodeDaily',
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  weathercodeDailyIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'weathercodeDaily',
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  weathercodeDailyElementEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'weathercodeDaily',
        value: value,
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  weathercodeDailyElementGreaterThan(
      int value, {
        bool include = false,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'weathercodeDaily',
        value: value,
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  weathercodeDailyElementLessThan(
      int value, {
        bool include = false,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'weathercodeDaily',
        value: value,
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  weathercodeDailyElementBetween(
      int lower,
      int upper, {
        bool includeLower = true,
        bool includeUpper = true,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'weathercodeDaily',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  weathercodeDailyLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'weathercodeDaily',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  weathercodeDailyIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'weathercodeDaily',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  weathercodeDailyIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'weathercodeDaily',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  weathercodeDailyLengthLessThan(
      int length, {
        bool include = false,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'weathercodeDaily',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  weathercodeDailyLengthGreaterThan(
      int length, {
        bool include = false,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'weathercodeDaily',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  weathercodeDailyLengthBetween(
      int lower,
      int upper, {
        bool includeLower = true,
        bool includeUpper = true,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'weathercodeDaily',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  winddirection10MIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'winddirection10M',
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  winddirection10MIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'winddirection10M',
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  winddirection10MElementEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'winddirection10M',
        value: value,
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  winddirection10MElementGreaterThan(
      int value, {
        bool include = false,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'winddirection10M',
        value: value,
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  winddirection10MElementLessThan(
      int value, {
        bool include = false,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'winddirection10M',
        value: value,
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  winddirection10MElementBetween(
      int lower,
      int upper, {
        bool includeLower = true,
        bool includeUpper = true,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'winddirection10M',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  winddirection10MLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'winddirection10M',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  winddirection10MIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'winddirection10M',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  winddirection10MIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'winddirection10M',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  winddirection10MLengthLessThan(
      int length, {
        bool include = false,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'winddirection10M',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  winddirection10MLengthGreaterThan(
      int length, {
        bool include = false,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'winddirection10M',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  winddirection10MLengthBetween(
      int lower,
      int upper, {
        bool includeLower = true,
        bool includeUpper = true,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'winddirection10M',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  winddirection10MDominantIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'winddirection10MDominant',
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  winddirection10MDominantIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'winddirection10MDominant',
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  winddirection10MDominantElementEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'winddirection10MDominant',
        value: value,
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  winddirection10MDominantElementGreaterThan(
      int value, {
        bool include = false,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'winddirection10MDominant',
        value: value,
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  winddirection10MDominantElementLessThan(
      int value, {
        bool include = false,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'winddirection10MDominant',
        value: value,
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  winddirection10MDominantElementBetween(
      int lower,
      int upper, {
        bool includeLower = true,
        bool includeUpper = true,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'winddirection10MDominant',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  winddirection10MDominantLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'winddirection10MDominant',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  winddirection10MDominantIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'winddirection10MDominant',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  winddirection10MDominantIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'winddirection10MDominant',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  winddirection10MDominantLengthLessThan(
      int length, {
        bool include = false,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'winddirection10MDominant',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  winddirection10MDominantLengthGreaterThan(
      int length, {
        bool include = false,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'winddirection10MDominant',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  winddirection10MDominantLengthBetween(
      int lower,
      int upper, {
        bool includeLower = true,
        bool includeUpper = true,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'winddirection10MDominant',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  windgusts10MIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'windgusts10M',
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  windgusts10MIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'windgusts10M',
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  windgusts10MElementEqualTo(
      double value, {
        double epsilon = Query.epsilon,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'windgusts10M',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  windgusts10MElementGreaterThan(
      double value, {
        bool include = false,
        double epsilon = Query.epsilon,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'windgusts10M',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  windgusts10MElementLessThan(
      double value, {
        bool include = false,
        double epsilon = Query.epsilon,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'windgusts10M',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  windgusts10MElementBetween(
      double lower,
      double upper, {
        bool includeLower = true,
        bool includeUpper = true,
        double epsilon = Query.epsilon,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'windgusts10M',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  windgusts10MLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'windgusts10M',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  windgusts10MIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'windgusts10M',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  windgusts10MIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'windgusts10M',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  windgusts10MLengthLessThan(
      int length, {
        bool include = false,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'windgusts10M',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  windgusts10MLengthGreaterThan(
      int length, {
        bool include = false,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'windgusts10M',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  windgusts10MLengthBetween(
      int lower,
      int upper, {
        bool includeLower = true,
        bool includeUpper = true,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'windgusts10M',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  windgusts10MMaxIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'windgusts10MMax',
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  windgusts10MMaxIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'windgusts10MMax',
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  windgusts10MMaxElementEqualTo(
      double value, {
        double epsilon = Query.epsilon,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'windgusts10MMax',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  windgusts10MMaxElementGreaterThan(
      double value, {
        bool include = false,
        double epsilon = Query.epsilon,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'windgusts10MMax',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  windgusts10MMaxElementLessThan(
      double value, {
        bool include = false,
        double epsilon = Query.epsilon,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'windgusts10MMax',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  windgusts10MMaxElementBetween(
      double lower,
      double upper, {
        bool includeLower = true,
        bool includeUpper = true,
        double epsilon = Query.epsilon,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'windgusts10MMax',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  windgusts10MMaxLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'windgusts10MMax',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  windgusts10MMaxIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'windgusts10MMax',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  windgusts10MMaxIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'windgusts10MMax',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  windgusts10MMaxLengthLessThan(
      int length, {
        bool include = false,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'windgusts10MMax',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  windgusts10MMaxLengthGreaterThan(
      int length, {
        bool include = false,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'windgusts10MMax',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  windgusts10MMaxLengthBetween(
      int lower,
      int upper, {
        bool includeLower = true,
        bool includeUpper = true,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'windgusts10MMax',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  windspeed10MIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'windspeed10M',
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  windspeed10MIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'windspeed10M',
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  windspeed10MElementEqualTo(
      double value, {
        double epsilon = Query.epsilon,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'windspeed10M',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  windspeed10MElementGreaterThan(
      double value, {
        bool include = false,
        double epsilon = Query.epsilon,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'windspeed10M',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  windspeed10MElementLessThan(
      double value, {
        bool include = false,
        double epsilon = Query.epsilon,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'windspeed10M',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  windspeed10MElementBetween(
      double lower,
      double upper, {
        bool includeLower = true,
        bool includeUpper = true,
        double epsilon = Query.epsilon,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'windspeed10M',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  windspeed10MLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'windspeed10M',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  windspeed10MIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'windspeed10M',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  windspeed10MIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'windspeed10M',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  windspeed10MLengthLessThan(
      int length, {
        bool include = false,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'windspeed10M',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  windspeed10MLengthGreaterThan(
      int length, {
        bool include = false,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'windspeed10M',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  windspeed10MLengthBetween(
      int lower,
      int upper, {
        bool includeLower = true,
        bool includeUpper = true,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'windspeed10M',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  windspeed10MMaxIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'windspeed10MMax',
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  windspeed10MMaxIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'windspeed10MMax',
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  windspeed10MMaxElementEqualTo(
      double value, {
        double epsilon = Query.epsilon,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'windspeed10MMax',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  windspeed10MMaxElementGreaterThan(
      double value, {
        bool include = false,
        double epsilon = Query.epsilon,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'windspeed10MMax',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  windspeed10MMaxElementLessThan(
      double value, {
        bool include = false,
        double epsilon = Query.epsilon,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'windspeed10MMax',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  windspeed10MMaxElementBetween(
      double lower,
      double upper, {
        bool includeLower = true,
        bool includeUpper = true,
        double epsilon = Query.epsilon,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'windspeed10MMax',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  windspeed10MMaxLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'windspeed10MMax',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  windspeed10MMaxIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'windspeed10MMax',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  windspeed10MMaxIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'windspeed10MMax',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  windspeed10MMaxLengthLessThan(
      int length, {
        bool include = false,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'windspeed10MMax',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  windspeed10MMaxLengthGreaterThan(
      int length, {
        bool include = false,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'windspeed10MMax',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterFilterCondition>
  windspeed10MMaxLengthBetween(
      int lower,
      int upper, {
        bool includeLower = true,
        bool includeUpper = true,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'windspeed10MMax',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }
}

extension WeatherCardQueryObject
on QueryBuilder<WeatherCard, WeatherCard, QFilterCondition> {}

extension WeatherCardQueryLinks
on QueryBuilder<WeatherCard, WeatherCard, QFilterCondition> {}

extension WeatherCardQuerySortBy
on QueryBuilder<WeatherCard, WeatherCard, QSortBy> {
  QueryBuilder<WeatherCard, WeatherCard, QAfterSortBy> sortByCity() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'city', Sort.asc);
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterSortBy> sortByCityDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'city', Sort.desc);
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterSortBy> sortByDistrict() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'district', Sort.asc);
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterSortBy> sortByDistrictDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'district', Sort.desc);
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterSortBy> sortByLat() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lat', Sort.asc);
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterSortBy> sortByLatDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lat', Sort.desc);
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterSortBy> sortByLon() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lon', Sort.asc);
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterSortBy> sortByLonDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lon', Sort.desc);
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterSortBy> sortByTimestamp() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timestamp', Sort.asc);
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterSortBy> sortByTimestampDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timestamp', Sort.desc);
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterSortBy> sortByTimezone() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timezone', Sort.asc);
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterSortBy> sortByTimezoneDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timezone', Sort.desc);
    });
  }
}

extension WeatherCardQuerySortThenBy
on QueryBuilder<WeatherCard, WeatherCard, QSortThenBy> {
  QueryBuilder<WeatherCard, WeatherCard, QAfterSortBy> thenByCity() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'city', Sort.asc);
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterSortBy> thenByCityDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'city', Sort.desc);
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterSortBy> thenByDistrict() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'district', Sort.asc);
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterSortBy> thenByDistrictDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'district', Sort.desc);
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterSortBy> thenByLat() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lat', Sort.asc);
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterSortBy> thenByLatDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lat', Sort.desc);
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterSortBy> thenByLon() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lon', Sort.asc);
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterSortBy> thenByLonDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lon', Sort.desc);
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterSortBy> thenByTimestamp() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timestamp', Sort.asc);
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterSortBy> thenByTimestampDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timestamp', Sort.desc);
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterSortBy> thenByTimezone() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timezone', Sort.asc);
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QAfterSortBy> thenByTimezoneDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timezone', Sort.desc);
    });
  }
}

extension WeatherCardQueryWhereDistinct
on QueryBuilder<WeatherCard, WeatherCard, QDistinct> {
  QueryBuilder<WeatherCard, WeatherCard, QDistinct>
  distinctByApparentTemperature() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'apparentTemperature');
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QDistinct>
  distinctByApparentTemperatureMax() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'apparentTemperatureMax');
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QDistinct>
  distinctByApparentTemperatureMin() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'apparentTemperatureMin');
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QDistinct> distinctByCity(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'city', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QDistinct> distinctByCloudcover() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'cloudcover');
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QDistinct> distinctByDistrict(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'district', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QDistinct>
  distinctByEvapotranspiration() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'evapotranspiration');
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QDistinct> distinctByLat() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'lat');
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QDistinct> distinctByLon() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'lon');
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QDistinct> distinctByPrecipitation() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'precipitation');
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QDistinct>
  distinctByPrecipitationProbabilityMax() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'precipitationProbabilityMax');
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QDistinct>
  distinctByPrecipitationSum() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'precipitationSum');
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QDistinct> distinctByRain() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'rain');
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QDistinct> distinctByRainSum() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'rainSum');
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QDistinct>
  distinctByRelativehumidity2M() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'relativehumidity2M');
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QDistinct> distinctBySunrise() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'sunrise');
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QDistinct> distinctBySunset() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'sunset');
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QDistinct>
  distinctBySurfacePressure() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'surfacePressure');
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QDistinct> distinctByTemperature2M() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'temperature2M');
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QDistinct>
  distinctByTemperature2MMax() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'temperature2MMax');
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QDistinct>
  distinctByTemperature2MMin() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'temperature2MMin');
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QDistinct> distinctByTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'time');
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QDistinct> distinctByTimeDaily() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'timeDaily');
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QDistinct> distinctByTimestamp() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'timestamp');
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QDistinct> distinctByTimezone(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'timezone', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QDistinct> distinctByUvIndex() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'uvIndex');
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QDistinct> distinctByUvIndexMax() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'uvIndexMax');
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QDistinct> distinctByVisibility() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'visibility');
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QDistinct> distinctByWeathercode() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'weathercode');
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QDistinct>
  distinctByWeathercodeDaily() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'weathercodeDaily');
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QDistinct>
  distinctByWinddirection10M() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'winddirection10M');
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QDistinct>
  distinctByWinddirection10MDominant() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'winddirection10MDominant');
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QDistinct> distinctByWindgusts10M() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'windgusts10M');
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QDistinct>
  distinctByWindgusts10MMax() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'windgusts10MMax');
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QDistinct> distinctByWindspeed10M() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'windspeed10M');
    });
  }

  QueryBuilder<WeatherCard, WeatherCard, QDistinct>
  distinctByWindspeed10MMax() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'windspeed10MMax');
    });
  }
}

extension WeatherCardQueryProperty
on QueryBuilder<WeatherCard, WeatherCard, QQueryProperty> {
  QueryBuilder<WeatherCard, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<WeatherCard, List<double>?, QQueryOperations>
  apparentTemperatureProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'apparentTemperature');
    });
  }

  QueryBuilder<WeatherCard, List<double>?, QQueryOperations>
  apparentTemperatureMaxProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'apparentTemperatureMax');
    });
  }

  QueryBuilder<WeatherCard, List<double>?, QQueryOperations>
  apparentTemperatureMinProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'apparentTemperatureMin');
    });
  }

  QueryBuilder<WeatherCard, String?, QQueryOperations> cityProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'city');
    });
  }

  QueryBuilder<WeatherCard, List<int>?, QQueryOperations> cloudcoverProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'cloudcover');
    });
  }

  QueryBuilder<WeatherCard, String?, QQueryOperations> districtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'district');
    });
  }

  QueryBuilder<WeatherCard, List<double>?, QQueryOperations>
  evapotranspirationProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'evapotranspiration');
    });
  }

  QueryBuilder<WeatherCard, double?, QQueryOperations> latProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'lat');
    });
  }

  QueryBuilder<WeatherCard, double?, QQueryOperations> lonProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'lon');
    });
  }

  QueryBuilder<WeatherCard, List<double>?, QQueryOperations>
  precipitationProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'precipitation');
    });
  }

  QueryBuilder<WeatherCard, List<int>?, QQueryOperations>
  precipitationProbabilityMaxProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'precipitationProbabilityMax');
    });
  }

  QueryBuilder<WeatherCard, List<double>?, QQueryOperations>
  precipitationSumProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'precipitationSum');
    });
  }

  QueryBuilder<WeatherCard, List<double>?, QQueryOperations> rainProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'rain');
    });
  }

  QueryBuilder<WeatherCard, List<double>?, QQueryOperations> rainSumProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'rainSum');
    });
  }

  QueryBuilder<WeatherCard, List<int>?, QQueryOperations>
  relativehumidity2MProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'relativehumidity2M');
    });
  }

  QueryBuilder<WeatherCard, List<String>?, QQueryOperations> sunriseProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'sunrise');
    });
  }

  QueryBuilder<WeatherCard, List<String>?, QQueryOperations> sunsetProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'sunset');
    });
  }

  QueryBuilder<WeatherCard, List<double>?, QQueryOperations>
  surfacePressureProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'surfacePressure');
    });
  }

  QueryBuilder<WeatherCard, List<double>?, QQueryOperations>
  temperature2MProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'temperature2M');
    });
  }

  QueryBuilder<WeatherCard, List<double>?, QQueryOperations>
  temperature2MMaxProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'temperature2MMax');
    });
  }

  QueryBuilder<WeatherCard, List<double>?, QQueryOperations>
  temperature2MMinProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'temperature2MMin');
    });
  }

  QueryBuilder<WeatherCard, List<String>?, QQueryOperations> timeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'time');
    });
  }

  QueryBuilder<WeatherCard, List<DateTime>?, QQueryOperations>
  timeDailyProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'timeDaily');
    });
  }

  QueryBuilder<WeatherCard, DateTime?, QQueryOperations> timestampProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'timestamp');
    });
  }

  QueryBuilder<WeatherCard, String?, QQueryOperations> timezoneProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'timezone');
    });
  }

  QueryBuilder<WeatherCard, List<double>?, QQueryOperations> uvIndexProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'uvIndex');
    });
  }

  QueryBuilder<WeatherCard, List<double>?, QQueryOperations>
  uvIndexMaxProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'uvIndexMax');
    });
  }

  QueryBuilder<WeatherCard, List<double>?, QQueryOperations>
  visibilityProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'visibility');
    });
  }

  QueryBuilder<WeatherCard, List<int>?, QQueryOperations>
  weathercodeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'weathercode');
    });
  }

  QueryBuilder<WeatherCard, List<int>?, QQueryOperations>
  weathercodeDailyProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'weathercodeDaily');
    });
  }

  QueryBuilder<WeatherCard, List<int>?, QQueryOperations>
  winddirection10MProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'winddirection10M');
    });
  }

  QueryBuilder<WeatherCard, List<int>?, QQueryOperations>
  winddirection10MDominantProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'winddirection10MDominant');
    });
  }

  QueryBuilder<WeatherCard, List<double>?, QQueryOperations>
  windgusts10MProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'windgusts10M');
    });
  }

  QueryBuilder<WeatherCard, List<double>?, QQueryOperations>
  windgusts10MMaxProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'windgusts10MMax');
    });
  }

  QueryBuilder<WeatherCard, List<double>?, QQueryOperations>
  windspeed10MProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'windspeed10M');
    });
  }

  QueryBuilder<WeatherCard, List<double>?, QQueryOperations>
  windspeed10MMaxProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'windspeed10MMax');
    });
  }
}
