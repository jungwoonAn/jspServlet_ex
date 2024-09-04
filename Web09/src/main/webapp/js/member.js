/**
 * 아이디 / 비밀번호 유효성 체크
 */
function loginCheck(){
	if(frm.userid.value.length == 0){
		alert("아이디를 써주세요.");
		frm.userid.focus();
		return false;
	}
	
	if(frm.pwd.value == ""){
		alert("비밀번호를 반드시 입력해야 합니다.");
		frm.pwd.focus();
		return false;
	}
	return true;
}

function idCheck(){
	if(frm.userid.value == ""){
		alert("아이디를 입력해 주세요.");
		frm.userid.focus();
		return false;
	}
	
	var url = "idCheck.do?userid=" + frm.userid.value;
	window.open(url, "idCheck", "toolbar=no, menubar=no, scrollbars=yes, resizable=no, width=450, height=200");
}

function idok(userid){
	opener.frm.userid.value = frm.userid.value;
	opener.frm.reid.value = frm.userid.value;
	self.close();
}

function joinCheck(){
	if(frm.name.value.length == 0){
		alert("이름을 써주세요");
		frm.name.focus();
		return false;
	}
	
	if(frm.userid.value.length == 0){
		alert("아이디를 써주세요");
		frm.userid.focus();
		return false;
	}else if(frm.userid.value.length < 4) {
		alert("아이디는 4글자 이상이어야 합니다.");
		frm.pwd.focus();
		return false;
	}
	
	if(frm.pwd.value == ""){
			alert("비밀번호는 반드시 입력해야 합니다.");
			frm.pwd.focus();
			return false;
	}else if(frm.pwd.value != frm.pwd_check.value){
		alert("비밀번호가 일치하지 않습니다.");
		frm.pwd.focus();
		return false;
	}
	
	if(frm.reid.value.length == 0){
		alert("중복 체크를 하지 않았습니다.");
	    frm.userid.focus();
		return false;
	}
	
	return true;
}