const tabMenu = document.querySelectorAll(".tabMenuContainer li");
const itemList = document.querySelectorAll(".itemList"); 

const clicktabMenu = (event) => {
	
	if(event.target.innerHTML === "여행") {
		itemList.forEach(item => {
			item.classList.remove("on")
			if(item.classList.contains("item1")) {
				item.classList.add("on")
			}			
		})
	} else if (event.target.innerHTML === "항공" ) {
		itemList.forEach(item => {
			item.classList.remove("on")
			if(item.classList.contains("item2")) {
				item.classList.add("on")
			}			
		})
	} else if (event.target.innerHTML === "호텔" ) {
		itemList.forEach(item => {
			item.classList.remove("on")
			if(item.classList.contains("item3")) {
				item.classList.add("on")
			}			
		})
	}
	
}

const init = () => {
	tabMenu.forEach((menu) => {
		menu.addEventListener("click", clicktabMenu);
	});
}

init();

