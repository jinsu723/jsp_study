const banButton = document.querySelector('.ban-controll');
const userNickname = document.querySelector('.manager-ban-user-list-ban-nickName');

/*console.log(banButton);

banButton.addEventListener('click', () => {
	console.log('밴');
	console.log(userNickname.innerText);
})*/

function banUser(user) {
	const reason = prompt('해당 유저의 밴 사유');
	const period = prompt('해당 유저의 밴 기간');
	alert(typeof(Number(period)));
	if (typeof(Number(period)) !== 'number') {
		alert('정수만 입력하세요');
	} else {
		
	alert(user + reason + period);
	const contextPath = window.location.pathname.substring(0, window.location.pathname.indexOf("/", 2));
	fetch(`${contextPath}/adminDoBen.ad`, {
				method: "POST",
				headers: { "Content-Type": "application/json" },
				body: JSON.stringify({
					userNickname: user,
					banReason: reason,
					banPeriod: period,
				})
		})
        .then(data => {
            if (data.available) {
                checkIdMsg.textContent = "사용 가능한 아이디입니다.";
                checkIdMsg.style.color = "green";
            } else {
                checkIdMsg.textContent = "이미 사용 중인 아이디입니다.";
                checkIdMsg.style.color = "red";
            }
        })
        ;
	}
}