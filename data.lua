for quality_name, _quality_data in pairs(data.raw.quality) do
  if settings.startup[quality_name .. "-custom-name"] and settings.startup[quality_name .. "-custom-name"].value then
    data.raw.quality[quality_name].localised_name = settings.startup[quality_name .. "-custom-name"].value
  end
end
