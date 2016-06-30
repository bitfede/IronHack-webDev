// models/sleep.js

function sleep(amountofSeconds, theCallBack) {

	function funct() {
		theCallBack;
	}


	setTimeout(funct , amountofSeconds );

}

module.exports = sleep;