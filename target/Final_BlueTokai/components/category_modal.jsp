<!-- Modal start -->

<!-- Modal -->
<div class="modal fade" id="categoryBackdrop" data-bs-backdrop="static"
	data-bs-keyboard="false" tabindex="-1"
	aria-labelledby="staticBackdropLabel" aria-hidden="true">
	<div class="modal-dialog modal-lg">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="staticBackdropLabel">Fill Category
					Details</h5>
				<button type="button" class="btn-close" data-bs-dismiss="modal"
					aria-label="Close"></button>
			</div>
			<div class="modal-body">
				<form action="ProductOperationServlet" method="post">
					<input type="hidden" name="operation" value="addCategory">
					<div class="form-group">
						<input type="text" class="form-control" name="categoryTitle"
							placeholder="Enter category title" required>
					</div>
					<div class="form-group" style="padding-top: 20px;">
						<textarea name="categoryDesc" class="form-control"
							placeholder="Enter category description" style="height: 250px;"
							required></textarea>
					</div>
					<div class="form-group" style="padding-top: 20px; text-align:right;">
						<button type="button" class="btn btn-secondary"
							data-bs-dismiss="modal">Close</button>
						<button type="submit" class="btn btn-primary">Add
							Category</button>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>

<!-- Modal end -->
