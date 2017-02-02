<?PHP
session_start();

	require_once "login.php";

if (isset($_POST['card'])) {
	$_SESSION['cardPool'][0][$_SESSION['counter']] = $_POST['card'];
	
	array_splice ($_SESSION['table'][$_SESSION['round']][$_SESSION['pack']], (array_search ($_POST['card'], $_SESSION['table'][$_SESSION['round']][$_SESSION['pack']])), 1);
	for ($i = 0; $i < 8; $i++) {
		if ($i == $_SESSION['pack']) {
			continue; //skips the pack that the human player has picked from
		} elseif (count($_SESSION['table'][$_SESSION['round']][$_SESSION['pack']]) > 10 && $_SESSION['round'] == 0) { //the first 5 picks are made on the grounds of LSV rating alone
			$temp['LSV'] = array(); //to hold LSV values of cards in the booster
			for ($card = 0; $card < count($_SESSION['table'][$_SESSION['round']][$i]); $card++) { //fetch LSV values from the DB for this booster
				$sql = "SELECT LSV FROM btz WHERE number=\"" . $_SESSION['table'][$_SESSION['round']][$i][$card] . "\"";
				if ($result = $conn->query($sql)) {
					while ($row = $result->fetch_row()) {
						array_push ($temp['LSV'], $row[0]);
					}
				}
			}
			$splicer = array_search (max($temp['LSV']), $temp['LSV']); //finds the key of the first max LSV value which corresponds to the key of the card in the booster the program is picking from
			$_SESSION['cardPool'][$_SESSION['player']][$_SESSION['counter']] = $_SESSION['table'][$_SESSION['round']][$i][$splicer]; //applies the key of the max LSV value to add the corresponding card from the booster to this player's cardpool
			array_splice ($_SESSION['table'][$_SESSION['round']][$i], $splicer, 1); //applies the key of the max LSV value to remove the corresponding card from the booster
			unset($temp['LSV']); //purge the array for subsequent passes
			$_SESSION['player']++; //move to the next player's pick into corresponding cardpool
		} elseif (count($_SESSION['table'][$_SESSION['round']][$_SESSION['pack']]) < 10 && count($_SESSION['table'][$_SESSION['round']][$_SESSION['pack']]) > 5 && $_SESSION['round'] == 0) { //the next few picks start taking color into account
			$temp['LSV'] = array(); //to hold LSV values of cards in the booster
			$temp['color'] = array(); //to hold the colors of cards in the booster
			$temp['poolColors'] = array(); //to hold the colors of cards in this player's cardpool
			for ($card = 0; $card < count($_SESSION['table'][$_SESSION['round']][$i]); $card++) { //fetch LSV values and card colors from the DB for this booster
				$sql = "SELECT LSV, color FROM btz WHERE number=\"" . $_SESSION['table'][$_SESSION['round']][$i][$card] . "\"";
				if ($result = $conn->query($sql)) {
					while ($row = $result->fetch_row()) {
						array_push ($temp['LSV'], $row[0]);						
						array_push ($temp['color'], $row[1]);
					}
				}
			}
			for ($card = 0; $card < count($_SESSION['cardPool'][$_SESSION['player']]); $card++) { //fetch the colors of cards in this player's cardpool from the DB
				if ($_SESSION['cardPool'][$_SESSION['player']][$card] != 0) {
					$sql = "SELECT color FROM btz WHERE number=\"" . $_SESSION['cardPool'][$_SESSION['player']][$card] . "\"";
					if ($result = $conn->query($sql)) {
						while ($row = $result->fetch_row()) {						
							array_push ($temp['poolColors'], $row[0]);
						}
					}
				} else {
					break;
				}
			}			
			$color = 0;
			for ($m = 0; $m < count($_SESSION['colors']); $m++) { //determine the most common color in this player's cardpool
				$count = array_keys($temp['poolColors'], $_SESSION['colors'][$m]);
				if (count($count) > $color) {
					$color = count($count);
					$priority = $_SESSION['colors'][$m];
				}
			}
			$increment = array_keys($temp['color'], $priority); //find the keys of all the cards that have the same color as the most common color in this player's cardpool
			for ($l = 0; $l < count($increment); $l++) {
				$temp['LSV'][$increment[$l]] += 5;
			}
			$splicer = array_search (max($temp['LSV']), $temp['LSV']); //find the first max LSV value in the array
			$_SESSION['cardPool'][$_SESSION['player']][$_SESSION['counter']] = $_SESSION['table'][$_SESSION['round']][$i][$splicer]; //applies the key of the max LSV value to add the corresponding card from the booster to this player's cardpool
			array_splice ($_SESSION['table'][$_SESSION['round']][$i], $splicer, 1); //applies the key of the max LSV value to remove the corresponding card from the booster
			unset($temp['LSV']); //purge the array for subsequent passes
			unset($temp['color']); //purge the array for subsequent passes
			unset ($temp['poolColors']); //purge the array for subsequent passes
			$_SESSION['player']++; //move to the next player's pick into corresponding cardpool
		} elseif (count($_SESSION['table'][$_SESSION['round']][$_SESSION['pack']]) <= 5 && $_SESSION['round'] == 0) { //a second color is given slight priority with furhter emphasis put on the dominating color
			$temp['LSV'] = array(); //to hold LSV values of cards in the booster
			$temp['color'] = array(); //to hold the colors of cards in the booster
			$temp['poolColors'] = array(); //to hold the colors of cards in this player's cardpool
			for ($card = 0; $card < count($_SESSION['table'][$_SESSION['round']][$i]); $card++) { //fetch LSV values and card colors from the DB for this booster
				$sql = "SELECT LSV, color FROM btz WHERE number=\"" . $_SESSION['table'][$_SESSION['round']][$i][$card] . "\"";
				if ($result = $conn->query($sql)) {
					while ($row = $result->fetch_row()) {
						array_push ($temp['LSV'], $row[0]);						
						array_push ($temp['color'], $row[1]);
					}
				}
			}
			for ($card = 0; $card < count($_SESSION['cardPool'][$_SESSION['player']]); $card++) { //fetch the colors of cards in this player's cardpool from the DB
				if ($_SESSION['cardPool'][$_SESSION['player']][$card] != 0) {
					$sql = "SELECT color FROM btz WHERE number=\"" . $_SESSION['cardPool'][$_SESSION['player']][$card] . "\"";
					if ($result = $conn->query($sql)) {
						while ($row = $result->fetch_row()) {						
							array_push ($temp['poolColors'], $row[0]);
						}
					}
				} else {
					break;
				}
			}			
			$color1 = 0; //temporary variable to hold the number of cards with one of the predominant colors
			$color2 = 0; //temporary variable to hold the number of cards with one of the predominant colors
			for ($m = 0; $m < count($_SESSION['colors']); $m++) { //determine the two most common color in this player's cardpool
				$count = array_keys($temp['poolColors'], $_SESSION['colors'][$m]);
				if (count($count) > $color1) {
					$color1 = count($count);
					$priority1 = $_SESSION['colors'][$m];
				} elseif (count($count) > $color2) {
					$color2 = count($count);
					$priority2 = $_SESSION['colors'][$m];
				}
			}
			$increment1 = array_keys($temp['color'], $priority1); //find the keys of all the cards that have the same color as the first most common color in this player's cardpool
			for ($l = 0; $l < count($increment1); $l++) {
				$temp['LSV'][$increment1[$l]] += 10;
			}
			$increment2 = array_keys($temp['color'], $priority2); //find the keys of all the cards that have the same color as the second most common color in this player's cardpool
			for ($d = 0; $d < count($increment2); $d++) {
				$temp['LSV'][$increment2[$d]] += 5;
			}
			$splicer = array_search (max($temp['LSV']), $temp['LSV']); //find the first max LSV value in the array
			$_SESSION['cardPool'][$_SESSION['player']][$_SESSION['counter']] = $_SESSION['table'][$_SESSION['round']][$i][$splicer]; //applies the key of the max LSV value to add the corresponding card from the booster to this player's cardpool
			array_splice ($_SESSION['table'][$_SESSION['round']][$i], $splicer, 1); //applies the key of the max LSV value to remove the corresponding card from the booster
			unset($temp['LSV']); //purge the array for subsequent passes
			unset($temp['color']); //purge the array for subsequent passes
			unset ($temp['poolColors']); //purge the array for subsequent passes
			$_SESSION['player']++; //move to the next player's pick into corresponding cardpool
		} elseif (count($_SESSION['table'][$_SESSION['round']][$_SESSION['pack']]) > 5 && $_SESSION['round'] == 1) { //a second color is given slight priority with furhter emphasis put on the dominating color
			$temp['LSV'] = array(); //to hold LSV values of cards in the booster
			$temp['color'] = array(); //to hold the colors of cards in the booster
			$temp['poolColors'] = array(); //to hold the colors of cards in this player's cardpool
			for ($card = 0; $card < count($_SESSION['table'][$_SESSION['round']][$i]); $card++) { //fetch LSV values and card colors from the DB for this booster
				$sql = "SELECT LSV, color FROM btz WHERE number=\"" . $_SESSION['table'][$_SESSION['round']][$i][$card] . "\"";
				if ($result = $conn->query($sql)) {
					while ($row = $result->fetch_row()) {
						array_push ($temp['LSV'], $row[0]);						
						array_push ($temp['color'], $row[1]);
					}
				}
			}
			for ($card = 0; $card < count($_SESSION['cardPool'][$_SESSION['player']]); $card++) { //fetch the colors of cards in this player's cardpool from the DB
				if ($_SESSION['cardPool'][$_SESSION['player']][$card] != 0) {
					$sql = "SELECT color FROM btz WHERE number=\"" . $_SESSION['cardPool'][$_SESSION['player']][$card] . "\"";
					if ($result = $conn->query($sql)) {
						while ($row = $result->fetch_row()) {						
							array_push ($temp['poolColors'], $row[0]);
						}
					}
				} else {
					break;
				}
			}			
			$color1 = 0; //temporary variable to hold the number of cards with one the predominant colors
			$color2 = 0; //temporary variable to hold the number of cards with one the predominant colors
			for ($m = 0; $m < count($_SESSION['colors']); $m++) { //determine the two most common colors in this player's cardpool
				$count = array_keys($temp['poolColors'], $_SESSION['colors'][$m]);
				if (count($count) > $color1) {
					$color1 = count($count);
					$priority1 = $_SESSION['colors'][$m];
				} elseif (count($count) > $color2) {
					$color2 = count($count);
					$priority2 = $_SESSION['colors'][$m];
				}
			}
			$increment1 = array_keys($temp['color'], $priority1); //find the keys of all the cards that have the same color as the first most common color in this player's cardpool
			for ($l = 0; $l < count($increment1); $l++) {
				$temp['LSV'][$increment1[$l]] += 10;
			}
			$increment2 = array_keys($temp['color'], $priority2); //find the keys of all the cards that have the same color as the second most common color in this player's cardpool
			for ($d = 0; $d < count($increment2); $d++) {
				$temp['LSV'][$increment2[$d]] += 10;
			}
			$splicer = array_search (max($temp['LSV']), $temp['LSV']); //find the first max LSV value in the array
			$_SESSION['cardPool'][$_SESSION['player']][$_SESSION['counter']] = $_SESSION['table'][$_SESSION['round']][$i][$splicer]; //applies the key of the max LSV value to add the corresponding card from the booster to this player's cardpool
			array_splice ($_SESSION['table'][$_SESSION['round']][$i], $splicer, 1); //applies the key of the max LSV value to remove the corresponding card from the booster
			unset($temp['LSV']); //purge the array for subsequent passes
			unset($temp['color']); //purge the array for subsequent passes
			unset ($temp['poolColors']); //purge the array for subsequent passes
			$_SESSION['player']++; //move to the next player's pick into corresponding cardpool
		} elseif (count($_SESSION['table'][$_SESSION['round']][$_SESSION['pack']]) <= 10 && $_SESSION['round'] == 1) { //two dominating colors get the same priority and if creature count is low, creatures are prioritized as well
			$temp['LSV'] = array(); //to hold LSV values of cards in the booster
			$temp['color'] = array(); //to hold the colors of cards in the booster
			$temp['type'] = array(); //to hold the types of cards in the booster
			$temp['poolColors'] = array(); //to hold the colors of cards in this player's cardpool
			$temp['poolTypes'] = array(); //to hold the types of cards in this player's cardpool
			for ($card = 0; $card < count($_SESSION['table'][$_SESSION['round']][$i]); $card++) { //fetch LSV values and card colors from the DB for this booster
				$sql = "SELECT LSV, color, archetype FROM btz WHERE number=\"" . $_SESSION['table'][$_SESSION['round']][$i][$card] . "\"";
				if ($result = $conn->query($sql)) {
					while ($row = $result->fetch_row()) {
						array_push ($temp['LSV'], $row[0]);						
						array_push ($temp['color'], $row[1]);
						array_push ($temp['type'], $row[2]);
					}
				}
			}
			for ($card = 0; $card < count($_SESSION['cardPool'][$_SESSION['player']]); $card++) { //fetch the colors of cards in this player's cardpool from the DB
				if ($_SESSION['cardPool'][$_SESSION['player']][$card] != 0) {
					$sql = "SELECT color FROM btz WHERE number=\"" . $_SESSION['cardPool'][$_SESSION['player']][$card] . "\"";
					if ($result = $conn->query($sql)) {
						while ($row = $result->fetch_row()) {						
							array_push ($temp['poolColors'], $row[0]);
							array_push ($temp['poolTypes'], $row[1]);
						}
					}
				} else {
					break;
				}
			}			
			$color1 = 0; //temporary variable to hold the number of cards with one the predominant colors
			$color2 = 0; //temporary variable to hold the number of cards with one the predominant colors
			for ($m = 0; $m < count($_SESSION['colors']); $m++) { //determine the two most common colors in this player's cardpool
				$count = array_keys($temp['poolColors'], $_SESSION['colors'][$m]);
				if (count($count) > $color1) {
					$color1 = count($count);
					$priority1 = $_SESSION['colors'][$m];
				} elseif (count($count) > $color2) {
					$color2 = count($count);
					$priority2 = $_SESSION['colors'][$m];
				}
			}
			$increment1 = array_keys($temp['color'], $priority1); //find the keys of all the cards that have the same color as the first most common color in this player's cardpool
			for ($l = 0; $l < count($increment1); $l++) {
				$temp['LSV'][$increment1[$l]] += 10;
			}
			$increment2 = array_keys($temp['color'], $priority2); //find the keys of all the cards that have the same color as the second most common color in this player's cardpool
			for ($d = 0; $d < count($increment2); $d++) {
				$temp['LSV'][$increment2[$d]] += 10;
			}
			$typeCount = array_keys($temp['poolTypes'], "C"); //determine the number of creatures in the player's cardpool
			if (count($typeCount) < 10) {
				$typeCount = array_keys($temp['type'], "C"); //if condition is met, use the same array to find keys for creature cards in the booster
				for ($c = 0; $c < count($typeCount); $c++) {
					$temp['LSV'][$typeCount[$c]] += 10; //increment corresponding LSV values
				}
			}
			$splicer = array_search (max($temp['LSV']), $temp['LSV']); //find the first max LSV value in the array
			$_SESSION['cardPool'][$_SESSION['player']][$_SESSION['counter']] = $_SESSION['table'][$_SESSION['round']][$i][$splicer]; //applies the key of the max LSV value to add the corresponding card from the booster to this player's cardpool
			array_splice ($_SESSION['table'][$_SESSION['round']][$i], $splicer, 1); //applies the key of the max LSV value to remove the corresponding card from the booster
			unset($temp['LSV']); //purge the array for subsequent passes
			unset($temp['color']); //purge the array for subsequent passes
			unset($temp['type']); //purge the array for subsequent passes
			unset ($temp['poolColors']); //purge the array for subsequent passes
			unset ($temp['poolTypes']); //purge the array for subsequent passes
			$_SESSION['player']++; //move to the next player's pick into corresponding cardpool
		} elseif (count($_SESSION['table'][$_SESSION['round']][$_SESSION['pack']]) <= 5 && $_SESSION['round'] == 1) { //two dominating colors get the same priority and if creature count is low, creatures are prioritized as well
			$temp['LSV'] = array(); //to hold LSV values of cards in the booster
			$temp['color'] = array(); //to hold the colors of cards in the booster
			$temp['type'] = array(); //to hold the types of cards in the booster
			$temp['poolColors'] = array(); //to hold the colors of cards in this player's cardpool
			$temp['poolTypes'] = array(); //to hold the types of cards in this player's cardpool
			for ($card = 0; $card < count($_SESSION['table'][$_SESSION['round']][$i]); $card++) { //fetch LSV values and card colors from the DB for this booster
				$sql = "SELECT LSV, color, archetype FROM btz WHERE number=\"" . $_SESSION['table'][$_SESSION['round']][$i][$card] . "\"";
				if ($result = $conn->query($sql)) {
					while ($row = $result->fetch_row()) {
						array_push ($temp['LSV'], $row[0]);						
						array_push ($temp['color'], $row[1]);
						array_push ($temp['type'], $row[2]);
					}
				}
			}
			for ($card = 0; $card < count($_SESSION['cardPool'][$_SESSION['player']]); $card++) { //fetch the converted costs of cards in this player's cardpool from the DB
				if ($_SESSION['cardPool'][$_SESSION['player']][$card] != 0) {
					$sql = "SELECT color, archetype, concost FROM btz WHERE number=\"" . $_SESSION['cardPool'][$_SESSION['player']][$card] . "\"";
					if ($result = $conn->query($sql)) {
						while ($row = $result->fetch_row()) {						
							array_push ($temp['poolColors'], $row[0]);
							array_push ($temp['poolTypes'], $row[1]);							
						}
					}
				} else {
					break;
				}
			}		
			$color1 = 0; //temporary variable to hold the number of cards with one the predominant colors
			$color2 = 0; //temporary variable to hold the number of cards with one the predominant colors
			for ($m = 0; $m < count($_SESSION['colors']); $m++) { //determine the two most common colors in this player's cardpool
				$count = array_keys($temp['poolColors'], $_SESSION['colors'][$m]);
				if (count($count) > $color1) {
					$color1 = count($count);
					$priority1 = $_SESSION['colors'][$m];
				} elseif (count($count) > $color2) {
					$color2 = count($count);
					$priority2 = $_SESSION['colors'][$m];
				}
			}
			$increment1 = array_keys($temp['color'], $priority1); //find the keys of all the cards that have the same color as the first most common color in this player's cardpool
			for ($l = 0; $l < count($increment1); $l++) {
				$temp['LSV'][$increment1[$l]] += 10;
			}
			$increment2 = array_keys($temp['color'], $priority2); //find the keys of all the cards that have the same color as the second most common color in this player's cardpool
			for ($d = 0; $d < count($increment2); $d++) {
				$temp['LSV'][$increment2[$d]] += 10;
			}
			$typeCount = array_keys($temp['poolTypes'], "C"); //determine the number of creatures in the player's cardpool
			if (count($typeCount) < 12) {
				$typeCount = array_keys($temp['type'], "C"); //if condition is met, use the same array to find keys for creature cards in the booster
				for ($c = 0; $c < count($typeCount); $c++) {
					$temp['LSV'][$typeCount[$c]] += 10; //increment corresponding LSV values
				}
			} elseif (count($typeCount) < 10) {
				$typeCount = array_keys($temp['type'], "C"); //if condition is met, use the same array to find keys for creature cards in the booster
				for ($c = 0; $c < count($typeCount); $c++) {
					$temp['LSV'][$typeCount[$c]] += 15; //increment corresponding LSV values
				}
			}
			$splicer = array_search (max($temp['LSV']), $temp['LSV']); //find the first max LSV value in the array
			$_SESSION['cardPool'][$_SESSION['player']][$_SESSION['counter']] = $_SESSION['table'][$_SESSION['round']][$i][$splicer]; //applies the key of the max LSV value to add the corresponding card from the booster to this player's cardpool
			array_splice ($_SESSION['table'][$_SESSION['round']][$i], $splicer, 1); //applies the key of the max LSV value to remove the corresponding card from the booster
			unset($temp['LSV']); //purge the array for subsequent passes
			unset($temp['color']); //purge the array for subsequent passes
			unset($temp['type']); //purge the array for subsequent passes
			unset ($temp['poolColors']); //purge the array for subsequent passes
			unset ($temp['poolTypes']); //purge the array for subsequent passes
			$_SESSION['player']++; //move to the next player's pick into corresponding cardpool
		} elseif (count($_SESSION['table'][$_SESSION['round']][$_SESSION['pack']]) > 10 && $_SESSION['round'] == 2) { //two dominating colors get the same priority and if creature count is low, creatures are prioritized as well
			$temp['LSV'] = array(); //to hold LSV values of cards in the booster
			$temp['color'] = array(); //to hold the colors of cards in the booster
			$temp['type'] = array(); //to hold the types of cards in the booster
			$temp['cost'] = array(); //to hold the converted costs of cards in the booster
			$temp['poolColors'] = array(); //to hold the colors of cards in this player's cardpool
			$temp['poolTypes'] = array(); //to hold the types of cards in this player's cardpool
			$temp['poolCosts'] = array(); //to hold the converted costs of cards in this player's cardpool
			for ($card = 0; $card < count($_SESSION['table'][$_SESSION['round']][$i]); $card++) { //fetch LSV values and card colors from the DB for this booster
				$sql = "SELECT LSV, color, archetype, concost FROM btz WHERE number=\"" . $_SESSION['table'][$_SESSION['round']][$i][$card] . "\"";
				if ($result = $conn->query($sql)) {
					while ($row = $result->fetch_row()) {
						array_push ($temp['LSV'], $row[0]);						
						array_push ($temp['color'], $row[1]);
						array_push ($temp['type'], $row[2]);
						array_push ($temp['cost'], $row[3]);
					}
				}
			}
			for ($card = 0; $card < count($_SESSION['cardPool'][$_SESSION['player']]); $card++) { //fetch the converted costs of cards in this player's cardpool from the DB
				if ($_SESSION['cardPool'][$_SESSION['player']][$card] != 0) {
					$sql = "SELECT color, archetype, concost FROM btz WHERE number=\"" . $_SESSION['cardPool'][$_SESSION['player']][$card] . "\"";
					if ($result = $conn->query($sql)) {
						while ($row = $result->fetch_row()) {						
							array_push ($temp['poolColors'], $row[0]);
							array_push ($temp['poolTypes'], $row[1]);
							array_push ($temp['poolCosts'], $row[2]);							
						}
					}
				} else {
					break;
				}
			}
			$color1 = 0; //temporary variable to hold the number of cards with one the predominant colors
			$color2 = 0; //temporary variable to hold the number of cards with one the predominant colors
			for ($m = 0; $m < count($_SESSION['colors']); $m++) { //determine the two most common colors in this player's cardpool
				$count = array_keys($temp['poolColors'], $_SESSION['colors'][$m]);
				if (count($count) > $color1) {
					$color1 = count($count);
					$priority1 = $_SESSION['colors'][$m];
				} elseif (count($count) > $color2) {
					$color2 = count($count);
					$priority2 = $_SESSION['colors'][$m];
				}
			}
			$increment1 = array_keys($temp['color'], $priority1); //find the keys of all the cards that have the same color as the first most common color in this player's cardpool
			for ($l = 0; $l < count($increment1); $l++) {
				$temp['LSV'][$increment1[$l]] += 10;
			}
			$increment2 = array_keys($temp['color'], $priority2); //find the keys of all the cards that have the same color as the second most common color in this player's cardpool
			for ($d = 0; $d < count($increment2); $d++) {
				$temp['LSV'][$increment2[$d]] += 10;
			}
			$typeCount = array_keys($temp['poolTypes'], "C"); //determine the number of creatures in the player's cardpool
			if (count($typeCount) < 12) {
				$typeCount = array_keys($temp['type'], "C"); //if condition is met, use the same array to find keys for creature cards in the booster
				for ($c = 0; $c < count($typeCount); $c++) {
					$temp['LSV'][$typeCount[$c]] += 10; //increment corresponding LSV values
				}
			} elseif (count($typeCount) < 10) {
				$typeCount = array_keys($temp['type'], "C"); //if condition is met, use the same array to find keys for creature cards in the booster
				for ($c = 0; $c < count($typeCount); $c++) {
					$temp['LSV'][$typeCount[$c]] += 15; //increment corresponding LSV values
				}
			}
			$sorcCount = array_keys($temp['poolTypes'], "S"); //determine the number of sorceries in the player's cardpool
			$instCount = array_keys($temp['poolTypes'], "I"); //determine the number of instants in the player's cardpool
			$totCount = $sorcCount + $instCount;
			if ($totCount < 5) {
				$sorcCount = array_keys($temp['type'], "S"); //if condition is met, use the same array to find keys for sorcery cards in the booster
				for ($s = 0; $s < count($sorcCount); $s++) {
					$temp['LSV'][$sorcCount[$s]] += 5; //increment corresponding LSV values
				}
				$instCount = array_keys($temp['type'], "I"); //if condition is met, use the same array to find keys for instant cards in the booster
				for ($i = 0; $i < count($instCount); $i++) {
					$temp['LSV'][$instCount[$i]] += 5; //increment corresponding LSV values
				}
			}
			$count2 = array_keys($temp['poolCosts'], "2");
			$count3 = array_keys($temp['poolCosts'], "3");
			$count4 = array_keys($temp['poolCosts'], "4");
			$count234 = $count2 + $count3 + $count4;
			$count1 = array_keys($temp['poolCosts'], "1");
			$count5 = array_keys($temp['poolCosts'], "5");
			$count6 = array_keys($temp['poolCosts'], "6");
			$count156 = $count1 + $count5 + $count6;
			if ($count234 < $count156) {
				$count2 = array_keys($temp['cost'], "2"); //if condition is met, use the same array to find keys for cards with CC 2 in the booster
				for ($r = 0; $r < count($count2); $r++) {
					$temp['LSV'][$count2[$r]] += 5; //increment corresponding LSV values
				}
				$count3 = array_keys($temp['cost'], "3"); //if condition is met, use the same array to find keys for cards with CC 2 in the booster
				for ($q = 0; $q < count($count3); $q++) {
					$temp['LSV'][$count3[$q]] += 5; //increment corresponding LSV values
				}
				$count4 = array_keys($temp['cost'], "4"); //if condition is met, use the same array to find keys for cards with CC 2 in the booster
				for ($w = 0; $w < count($count4); $w++) {
					$temp['LSV'][$count4[$w]] += 5; //increment corresponding LSV values
				}
			}
			$splicer = array_search (max($temp['LSV']), $temp['LSV']); //find the first max LSV value in the array
			$_SESSION['cardPool'][$_SESSION['player']][$_SESSION['counter']] = $_SESSION['table'][$_SESSION['round']][$i][$splicer]; //applies the key of the max LSV value to add the corresponding card from the booster to this player's cardpool
			array_splice ($_SESSION['table'][$_SESSION['round']][$i], $splicer, 1); //applies the key of the max LSV value to remove the corresponding card from the booster
			unset($temp['LSV']); //purge the array for subsequent passes
			unset($temp['color']); //purge the array for subsequent passes
			unset($temp['type']); //purge the array for subsequent passes
			unset($temp['cost']); //purge the array for subsequent passes
			unset ($temp['poolColors']); //purge the array for subsequent passes
			unset ($temp['poolTypes']); //purge the array for subsequent passes
			unset ($temp['poolCosts']); //purge the array for subsequent passes
			$_SESSION['player']++; //move to the next player's pick into corresponding cardpool
		} else { //default processing by highest LSV value
			$temp['LSV'] = array(); //to hold LSV values of cards in the booster
			for ($card = 0; $card < count($_SESSION['table'][$_SESSION['round']][$i]); $card++) { //fetch LSV values from the DB for this booster
				$sql = "SELECT LSV FROM btz WHERE number=\"" . $_SESSION['table'][$_SESSION['round']][$i][$card] . "\"";
				if ($result = $conn->query($sql)) {
					while ($row = $result->fetch_row()) {
						array_push ($temp['LSV'], $row[0]);
					}
				}
			}
			$splicer = array_search (max($temp['LSV']), $temp['LSV']); //finds the key of the first max LSV value which corresponds to the key of the card in the booster the program is picking from
			$_SESSION['cardPool'][$_SESSION['player']][$_SESSION['counter']] = $_SESSION['table'][$_SESSION['round']][$i][$splicer]; //applies the key of the max LSV value to add the corresponding card from the booster to this player's cardpool
			array_splice ($_SESSION['table'][$_SESSION['round']][$i], $splicer, 1); //applies the key of the max LSV value to remove the corresponding card from the booster
			unset($temp['LSV']); //purge the array for subsequent passes
			$_SESSION['player']++; //move to the next player's pick into corresponding cardpool
		}
	}
	$_SESSION['counter']++; //move to the next card's key inside each player's cardpool array
	$_SESSION['player'] = 1; //reset the player
	if ($_SESSION['pack'] < 7) $_SESSION['pack']++; else $_SESSION['pack'] = 0;
	if (count($_SESSION['table'][$_SESSION['round']][$_SESSION['pack']]) == 0 && $_SESSION['round'] < 3) $_SESSION['round']++;
	if (count($_SESSION['table'][2][$_SESSION['pack']]) == 0) {
		echo json_encode($_SESSION['cardPool'][0]);
		session_unset();
	} else {
		echo json_encode($_SESSION['table'][$_SESSION['round']][$_SESSION['pack']]);
	}
}

?>