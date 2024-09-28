local colors = {
  none = "NONE",

  black = "#262626",
  light_black = "#777777",
  red = "#AA3731",
  light_red = "#F05050",
  green = "#106B10",
  light_green = "#BEE6BE",
  yellow = "#CB9000",
  blue = "#1740E6",
  dark_blue = "#071591",
  light_blue = "#CAD9FA",
  gray = "#808080",
  light_gray = "#ECECEC",
  cyan = "#458383",
  purple = "#660E7A",
}

-- more semantically meaningful colors
colors.fg = colors.black
colors.bg = "#FAFBFC"

colors.error = colors.red
colors.warn = colors.yellow
colors.info = "#4585BE"
colors.active = "#F2F3F5"
colors.float = "#F5F7F8"
colors.search = "#BFDEBA"

colors.diff_add = "#106B10"
colors.diff_add_bg = "#BEE6BE"
colors.diff_add_bg_accent = "#a3e0a3"
colors.diff_change = "#071591"
colors.diff_change_bg = "#CAD9FA"
colors.diff_remove = "#AA3731"
colors.diff_remove_bg = "#FFD5CC"
colors.diff_remove_bg_accent = "#ffbaad"
colors.diff_text_bg = "#B8CBF5"

return colors
