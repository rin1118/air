const a = document.querySelectorAll("#goDetail");


const handleDetail = (e) => {
	e.preventDefault();
	const seq = {seq : e.target.dataset.seq};
	
	$.ajax({
		url: "/travelStory/getDetail",
		type: "GET",
		dataType: "json",
		data: seq,
		success: function(result){
			alert(result);
			location.href="/travelStory/detail";
			
			const title = document.getElementById("title");
			const content = document.getElementById("content");
		
			content.innerHTML = `하이하이`;
		},error : function(request,status,error){
			alert("code = "+ request.status + " message = " + request.responseText + " error = " + error);
		}
	})
}


const getDetail = () => {

	$.ajax({
		
		url: "/travelStory/detail",
		type: "GET",
		dataType: "json",
		data: queryString,
		success: function(result){
		
		// ajax 통신 성공 시 로직 수행
			}
		})
}
	
const init = () => {
}

if(a){
	a.forEach(item=>{
		item.addEventListener("click", handleDetail);
	})
}