extends Control

const BG := Color("#10131f")
const PURPLE := Color("#9b7cff")
const GOLD := Color("#ffc857")
const MUTED := Color("#aab1c5")

func _ready() -> void:
	_build_screen()

func _build_screen() -> void:
	var background := ColorRect.new()
	background.color = BG
	background.set_anchors_and_offsets_preset(Control.PRESET_FULL_RECT)
	add_child(background)

	var margin := MarginContainer.new()
	margin.set_anchors_and_offsets_preset(Control.PRESET_FULL_RECT)
	margin.add_theme_constant_override("margin_left", 28)
	margin.add_theme_constant_override("margin_right", 28)
	margin.add_theme_constant_override("margin_top", 44)
	margin.add_theme_constant_override("margin_bottom", 36)
	add_child(margin)

	var layout := VBoxContainer.new()
	layout.add_theme_constant_override("separation", 18)
	margin.add_child(layout)

	var eyebrow := _label("HARARE • ZIMBABWE", 16, GOLD)
	eyebrow.horizontal_alignment = HORIZONTAL_ALIGNMENT_CENTER
	layout.add_child(eyebrow)

	var title := _label("MUSHIKA SHIKA\nTYCOON", 38, Color.WHITE)
	title.horizontal_alignment = HORIZONTAL_ALIGNMENT_CENTER
	layout.add_child(title)

	var subtitle := _label("Build your transport empire.", 17, MUTED)
	subtitle.horizontal_alignment = HORIZONTAL_ALIGNMENT_CENTER
	layout.add_child(subtitle)

	var spacer := Control.new()
	spacer.custom_minimum_size.y = 34
	layout.add_child(spacer)

	var taxi := PanelContainer.new()
	taxi.custom_minimum_size.y = 180
	var style := StyleBoxFlat.new()
	style.bg_color = Color("#20263a")
	style.border_color = PURPLE
	style.set_border_width_all(2)
	style.set_corner_radius_all(22)
	taxi.add_theme_stylebox_override("panel", style)
	layout.add_child(taxi)

	var taxi_text := _label("🚐", 72, Color.WHITE)
	taxi_text.horizontal_alignment = HORIZONTAL_ALIGNMENT_CENTER
	taxi.add_child(taxi_text)

	var stats := _label("CASH  $500     •     VEHICLES  1", 17, GOLD)
	stats.horizontal_alignment = HORIZONTAL_ALIGNMENT_CENTER
	layout.add_child(stats)

	var info := _label("Start small. Pick up passengers.\nGrow your fleet across Harare.", 16, MUTED)
	info.horizontal_alignment = HORIZONTAL_ALIGNMENT_CENTER
	layout.add_child(info)

	var start := Button.new()
	start.text = "START YOUR HUSTLE"
	start.custom_minimum_size.y = 58
	start.add_theme_font_size_override("font_size", 19)
	var button_style := StyleBoxFlat.new()
	button_style.bg_color = PURPLE
	button_style.set_corner_radius_all(16)
	start.add_theme_stylebox_override("normal", button_style)
	start.add_theme_color_override("font_color", Color("#111322"))
	start.pressed.connect(_on_start_pressed)
	layout.add_child(start)

	var footer := _label("EARLY DEVELOPMENT BUILD", 12, MUTED)
	footer.horizontal_alignment = HORIZONTAL_ALIGNMENT_CENTER
	layout.add_child(footer)

func _label(value: String, font_size: int, color: Color) -> Label:
	var label := Label.new()
	label.text = value
	label.add_theme_font_size_override("font_size", font_size)
	label.add_theme_color_override("font_color", color)
	label.autowrap_mode = TextServer.AUTOWRAP_WORD_SMART
	return label

func _on_start_pressed() -> void:
	var dialog := AcceptDialog.new()
	dialog.title = "Your hustle starts here"
	dialog.dialog_text = "Your Harare transport business is ready for its first upgrade. Passenger jobs and vehicle management are the next development milestone."
	add_child(dialog)
	dialog.popup_centered()
