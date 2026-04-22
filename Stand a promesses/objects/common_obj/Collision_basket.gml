if (!has_touched) {
	global.macron_credits+=100
	global.euros+=1
	has_touched=true
	instance_destroy(self)
}