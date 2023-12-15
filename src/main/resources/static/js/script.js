console.log("this is script file")

function toggleSidebar() {

	const sidebar = document.getElementsByClassName("sidebar")[0];
	const content = document.getElementsByClassName("content")[0];

	if (window.getComputedStyle(sidebar).display === "none") {
		sidebar.style.display = "block";
		content.style.marginLeft = "20%";
	}
	else {
		sidebar.style.display = "none";
		content.style.marginLeft = "0%";
	}
};

const search = () => {
	//console.log("searching...");

	let query = $("#search-input").val();

	if (query == '') {
		$(".search-result").hide();
	} else {
		//search
		console.log(query);

		//sending request to server

		let url = `http://localhost:8282/search/${query}`;

		fetch(url)
			.then((response) => {
				return response.json();
			})
			.then((data) => {
				//data....
				//console.log(data);

				let text = `<div class='list-group'>`;

				data.forEach((contact) => {
					let test = `<a href='/user/${contact.cId}/contact' class='list-group-item list-group-item-action'> ${contact.name}</a>`;
					text += test;
				});

				text += `</div>`;

				$(".search-result").html(text);
				$(".search-result").show();
			});
	}
};
