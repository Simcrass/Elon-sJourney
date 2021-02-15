if (health <= 0) {
	room_goto(rm_loose);
}
if(score >= 20) {
	room_goto(rm_mars);
}