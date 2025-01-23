document.addEventListener("DOMContentLoaded", () => {
	if (pageType == '모집') {
		document.querySelector(".myPage-forum-text").innerText = '모집 현황';
	} else {
		document.querySelector(".myPage-forum-text").innerText = '신청 현황';
		pageToggle.classList.toggle("fa-flip-horizontal");
	}
	pageNation(current);
});


function showPage(current) {
	console.log("페이지 번호 : " + current);
	current = parseInt(current);
	pageNum = ((current - 1) * 10) + 1;
	const pageMain = document.querySelector(".myPage-main");
	pageMain.innerHTML = "";
	for (i = pageNum; i < pageNum + pageSize; i++) {
		if (i > pageItems) {
			current = i;
			break;
		}
		addList(i - 1, arr);
	}
}


function addList(idx, arr) {
	// 데이터 추가
	let newContent = document.createElement("div");
	newContent.classList.add("myPage-content");
	newContent.classList.add("myPage-content-list");

	let newData;

	// 닉네임 추가
	newData = document.createElement("span");
	newData.classList.add("nick");
	newData.innerText = arr[idx][1];
	newContent.appendChild(newData);

	// 티어 추가
	newData = document.createElement("span");
	newData.classList.add("tear");
	newData.innerText = arr[idx][2];
	newContent.appendChild(newData);

	// 제목 추가
	newData = document.createElement("span");
	newData.classList.add("title");
	newData.innerText = arr[idx][4];
	newContent.appendChild(newData);

	//클릭 이벤트 추가
	newData.addEventListener('click', () => {
		location.href = contextPath + '/app/communityForum/communityForumDetail.cf?postNum=' + arr[idx][0];
	});

	// 작성시간 추가
	newData = document.createElement("span");
	newData.classList.add("date");
	newData.innerText = arr[idx][6];
	newContent.appendChild(newData);


	if (document.querySelector(".myPage-forum-text").innerText == "모집 현황") {
		// 모집일때 승인 여부 추가
		document.querySelector(".myPage-forum-text").innerText = '모집 현황';
		newData = document.createElement("span");
		newData.classList.add("approve");

		if (arr[idx][7] == '대기중') {

			let newDataBtn = document.createElement("button");
			newDataBtn.classList.add("approve-true");
			newDataBtn.innerText = "수락";
			newDataBtn.addEventListener("click", () => {
				alert("모집 신청을 수락합니다");
				const form = document.createElement("form");
				form.method = "post";
				form.action = contextPath + "/myPageRecruitmentBnt.my?partyNum=" + arr[idx][0] + "&isAgree=true";;
				document.body.appendChild(form);
				form.submit();
			});
			newData.appendChild(newDataBtn);

			newDataBtn = document.createElement("button");
			newDataBtn.classList.add("approve-false");
			newDataBtn.innerText = "거절";
			newDataBtn.addEventListener("click", () => {
				alert("모집 신청을 거절합니다");
				const form = document.createElement("form");
				form.method = "post";
				form.action = contextPath + "/myPageRecruitmentBnt.my?partyNum=" + arr[idx][0] + "&isAgree=false";
				document.body.appendChild(form);
				form.submit();
			});
			newData.appendChild(newDataBtn);
			newContent.appendChild(newData);
		} else {
			if (arr[idx][7] == '수락') {
				newData.innerText = '수락'
				newData.classList.add("text-color-green");
			} else {
				newData.innerText = '거절'
				newData.classList.add("text-color-red");
			}
			newContent.appendChild(newData);
		}
	} else {
		document.querySelector(".myPage-forum-text").innerText = '신청 현황';
		newData = document.createElement("span");
		newData.classList.add("approve");
		newData.innerText = arr[idx][7];
		if (newData.innerText == '수락') {
			newData.classList.add("text-color-green");
		} else if (newData.innerText == '거절' || newData.innerText == '삭제됨') {
			newData.classList.add("text-color-red");
		}
		newContent.appendChild(newData);
	}



	// 리스트에 넣기
	pageList.appendChild(newContent);
	pageList.appendChild(document.createElement("hr"));
}



//모집 - 신청 전환 버튼
pageBtn.addEventListener("click", () => {
	const form = document.createElement("form");
	form.method = "post";
	pageToggle.classList.toggle("fa-flip-horizontal");
	if (document.querySelector(".myPage-forum-text").innerText == "신청 현황") {
		document.querySelector(".myPage-forum-text").innerText = '모집 현황';
		form.action = contextPath + "/myPageCheckRecruite.my";
	} else {
		document.querySelector(".myPage-forum-text").innerText = '신청 현황';
		form.action = contextPath + '/myPageRecruitment.my';
	}
	document.body.appendChild(form);
	form.submit();
	current = 1;
	pageNation(current);
});




// 페이지네이션
function pageNation(current) {
	const pagenation = document.querySelector(".myPage-pageNation-number");

	//페이지 번호 붙이기
	pagenation.innerHTML = '';
	let pageNum;
	for (let i = 0; i < pageSize; i++) {
		//현재 페이지 기준 페이지네이션
		pageNum = Math.floor((current - 1) / pageSize) * pageSize + 1
		if (pageNum + i > pageCount)
			break;
		newSpan = document.createElement("span");
		newSpan.classList.add("myPage-pageNation-li");
		newSpan.textContent = "" + (pageNum + i);
		newSpan.addEventListener('click', getIdx);
		pagenation.appendChild(newSpan);
		console.log();
	}
	showPage(current);
}

//숫자 클릭시 번호 넘기기
function getIdx(e) {
	showPage(e.target.textContent);
}


//화살표 클릭 이벤트
const goPrevBtn = document.querySelector(".fa-chevron-left");//이전 페이지네이션
console.log(goPrevBtn);
goPrevBtn.addEventListener('click', () => {
	current = parseInt(current) - 10;
	if (current < 1) {
		current = 1;
	}
	pageNation(current)
});
const goFirstBtn = document.querySelector(".fa-angles-left");//첫번째 페이지네이션
goFirstBtn.addEventListener('click', () => {
	current = 1;
	pageNation(current)
});
const goNextBtn = document.querySelector(".fa-chevron-right");//다음 페이지네이션
goNextBtn.addEventListener('click', () => {
	current = parseInt(current) + 10;
	if (current > pageCount) {
		current = pageCount;
	}
	pageNation(current)
});
const goLastBtn = document.querySelector(".fa-angles-right");//마지막 페이지네이션
goLastBtn.addEventListener('click', () => {
	current = pageCount;
	pageNation(current);
});