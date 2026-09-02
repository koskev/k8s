{
  optional(condition, value):: if condition then if std.isArray(value) then value else [value] else [],
}
