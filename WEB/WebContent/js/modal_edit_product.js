const productsElement = document.getElementById("main-content").querySelectorAll(".edit");
const name = document.getElementById("main-content").querySelectorAll(".name");
const modal = document.getElementById("modal");
console.log(productsElement);
function myFunction(item, index) {
	item.addEventListener("click", function () {
		console.log(name);
		modal.innerHTML = `
		<div class="w-100 h-100 position-absolute" style="background-color: rgba(0,0,0, 0.2); z-index: 800; top: 0; left: 0;"></div>
		<div class="position-absolute w-50 h-50 bg-white" style="top: 50%; left: 50%; z-index: 1000 !important; transform: translate(-50%, -50%); border-radius: 1rem;">
			<div>
				<form>
					<div class="form-control">
						<label>Tên sản phẩm</lable>
						<input type="text" value="${name[index].innerText}"/>
					</div>
				</form>
			
			
			
			
			
			</div>
		
		</div>
		
		
		`
	})
}	
productsElement.forEach(myFunction);