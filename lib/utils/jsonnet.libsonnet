{
  manifestJsonnet(val, stripDocsonnet=true)::
    local filterField(field) = !(std.startsWith(field, '#') && stripDocsonnet) && val[field] != null && !std.isFunction(val[field]);
    if std.isObject(val) then
      local allFields = std.filter(filterField, std.objectFieldsAll(val));
      local visibleFields = std.filter(filterField, std.objectFields(val));
      '{' + std.join(', ', [
        local isHidden = !std.member(visibleFields, field);
        local separator = if isHidden then ':: ' else ': ';
        '"' + field + '"' + separator + self.manifestJsonnet(val[field])
        for field in allFields
      ]) + '}'
    else if std.isArray(val) then
      '[' + std.join(', ', [
        self.manifestJsonnet(item)
        for item in val
      ]) + ']'
    else if std.isString(val) then std.escapeStringBash(val)
    else if std.isFunction(val) then null
    else
      std.toString(val),
}
