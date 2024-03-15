extends ParallaxBackground

var scrollingSpeed = 40

func _process(delta):
	scroll_offset.x -= scrollingSpeed * delta
