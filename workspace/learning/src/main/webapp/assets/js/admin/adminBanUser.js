function banCancel(user) {
	const confirmCancel = confirm(user + '의 밴을 해제하시겠습니까?');
	
	console.log(confirmCancel);
	if(!confirmCancel){
		alert('작업 취소');
	} else {
		
	}
}