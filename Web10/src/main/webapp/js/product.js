function productCheck(){
	if(frm.name.value.length == 0){
		alert("상품명을 작성해 주세요.");
		frm.name.focus();
		return false;
	}
	
	if(frm.price.value.length == 0){
		alert("가격을 작성해 주세요.");
		frm.price.focus();
		return false;
	}
	
	if(isNaN(frm.price.value)){
		alert("숫자를 입력해야 합니다..");
		frm.price.focus();
		return false;
	}
	
	return true;
}