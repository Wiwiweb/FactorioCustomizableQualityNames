local default_names = {
  ["normal"] = "Standard",
  ["uncommon"] = "Improved",
  ["rare"] = "Superior",
  ["epic"] = "Exceptional",
  ["legendary"] = "Flawless",
}

local quality_settings = {}
for i, quality_name in pairs({"normal", "uncommon", "rare", "epic", "legendary"}) do
  local quality_setting = {
    type = "string-setting",
    name = quality_name .. "-custom-name",
    setting_type = "startup",
    order = tostring(i),
    default_value = default_names[quality_name],
    localised_name = {"", {"quality-name."..quality_name}, " ([img=quality."..quality_name.."])"}
  }
  table.insert(quality_settings, quality_setting)
end

data:extend(quality_settings)
