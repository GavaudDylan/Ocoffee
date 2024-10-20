const viewAllButton = document.getElementById("viewAllButton");
const hiddenArticles = document.querySelectorAll(".detail-container.hidden");

viewAllButton.addEventListener("click", () => {
	hiddenArticles.forEach((article) => {
		article.classList.remove("hidden");
	});
	viewAllButton.style.display = "none";
});
