<?PHP
	session_start();
	require_once "boostgenfunc.php";
	$_SESSION['round'] = 0;
	$_SESSION['pack'] = 0;
	$_SESSION['player'] = 1;
	$_SESSION['counter'] = 0;
	$_SESSION['colors'] = array("G", "R", "B", "U", "W", "N");
	$_SESSION['types'] = array("C", "E", "A", "S", "I", "P", "L");
	$_SESSION['cardPool'] = array();
	for ($player = 0; $player < 8; $player++) {
		for ($pool = 0; $pool < 45; $pool++)
			$_SESSION['cardPool'][$player][$pool] = 0;
	}
	$_SESSION['table'] = array();
	for ($round = 0; $round < 3; $round++) {
		for ($player = 0; $player < 8; $player++) {
			$_SESSION['table'][$round][$player] = boostgen();
		}
	}
?>

<script>

var table = <?PHP echo json_encode($_SESSION['table'][0][0]); ?>

for (pick = 0; pick < table.length; pick++) {
	document.write("<img id=" + "\"" + table[pick] + "\"" + "onclick=cardPick(" + table[pick] + ")" + " src=\"bfz/" + table[pick] + ".jpg\" width=\"240\" height=\"340\"> ");
}

function cardPick(cardNum) {
	params = ("card=" + cardNum)
	request = new XMLHttpRequest()
	request.open("POST", "draft.php", true)
	request.setRequestHeader("Content-type", "application/x-www-form-urlencoded")
	//request.setRequestHeader("Content-length", cardNum.length)
	//request.setRequestHeader("Connection", "close")
	request.onreadystatechange = function() {
		if (this.readyState == 4) {
			if (this.status == 200) {
				if (this.responseText != null) {
					document.body.innerHTML = ""
					table = JSON.parse(this.responseText)
					for (pick = 0; pick < table.length; pick++) {
						document.write("<img id=" + "\"" + table[pick] + "\"" + "onclick=cardPick(" + table[pick] + ")" + " src=\"bfz/" + table[pick] + ".jpg\" width=\"240\" height=\"340\"> ")
					}
				}
				else alert("Ajax error: No data received")
			}
			else alert( "Ajax error: " + this.statusText)
		}
	}
	request.send(params)
}
	
</script>