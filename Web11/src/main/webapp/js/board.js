// 유효성 체크
function boardCheck(){
	if(frm.name.value.length == 0){
		alert("작성자를 입력하세요.");
		return false;
	}
	
	if(frm.pass.value.length == 0){
		alert("비밀번호를 입력하세요.");
		return false;
	}
	
	if(frm.title.value.length == 0){
		alert("제목을 입력하세요.");
		return false;
	}
	return true;	
}

// 새 창 열기
function open_win(url, name){
	window.open(url, name, "width=500, height=230");
}

// 비밀번호 유효성 체크
function passCheck(){
	if(frm.pass.value.length == 0){
		alert("비밀번호를 입력하세요.");
		return false;
	}
}