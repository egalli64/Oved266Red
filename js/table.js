$(function() {
	let PRIMA = false;

	$('#changeMsg1').click(function() {
		let msg = $('#msg1');
		$('#target').html(msg.html());
		if (PRIMA) {
			msg.html('CLASSE SELEZIONATA <b>PRIMA</b>');
		} else {
			msg.html('CLASSE SELEZIONATA  <b>SECONDA</b> ');
		}
		PRIMA = !PRIMA;
	});

	$('#changeTextMsg1').click(function() {
		let msg = $('#msg1');
		$('#target').text(msg.text());
		if (important) {
			msg.text('CLASSE SELEZIONATA  <b>PRIMA</b> ');
		} else {
			msg.text('CLASSE SELEZIONATA  <b>SECONDA</b>');
		}
		PRIMA = !PRIMA;
	});

	$('#changeMsg2').click(function() {
		let msg = $('#msg2');
		$('#target').text(msg.val());
		if (important) {
			msg.val('PRIMA');
		} else {
			msg.val('SECONDA');
		}
		PRIMA = !PRIMA;
	});
});