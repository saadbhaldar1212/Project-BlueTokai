<%@page import="com.bluetokai.Final_BlueTokai.entities.Category"%>
<%@page import="com.bluetokai.Final_BlueTokai.dao.CategoryDao"%>
<%@page import="com.bluetokai.Final_BlueTokai.helper.FactoryProvider"%>
<%@page import="java.util.*"%>


<div class="modal fade" id="productsBackdrop" data-bs-backdrop="static"
	data-bs-keyboard="false" tabindex="-1"
	aria-labelledby="staticBackdropLabel" aria-hidden="true">
	<div class="modal-dialog modal-lg">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="staticBackdropLabel">Fill Category</h5>
				<button type="button" class="btn-close" data-bs-dismiss="modal"
					aria-label="Close"></button>
			</div>
			<div class="modal-body">
				<form method="post" action="ProductOperationServlet" enctype="multipart/form-data">
				<input type="hidden" name="operation" value="addProducts"> 
					<div class="form-group">
						<input type="text" class="form-control" name="pName"
							placeholder="Enter Product name">
					</div>
					<div class="form-group" style="padding-top: 10px;">
						<textarea name="pDesc" class="form-control"
							placeholder="Enter Product description" style="height: 100px;"
							required></textarea>
					</div>
					<div class="form-group col-md-8" style="padding-top: 10px">
						<input type="number" class="form-control" name="pPrice"
							placeholder="Enter Product price">
					</div>
					<div class="form-group col-md-4" style="padding-top: 10px">
						<input type="number" class="form-control" name="pQuant"
							placeholder="Enter Product quantity">
					</div>

					<%
					CategoryDao cdao = new CategoryDao(FactoryProvider.getFactory());
					List<Category> list = cdao.getCategories();
					%>

					<div class="form-group" style="padding-top: 10px">
						<select name="catId" id="" class="form-control">

							<%
							for (Category c : list) {
							%>

							<option value="<%=c.getC_id()%>"><%=c.getC_title()%></option>

							<%
							}
							%>
						</select>
					</div>
					<div class="form-group" style="padding-top: 10px">
						<label for="pPic">Product Image</label> <input type="file"
							id="pPic" name="pPic" required>
					</div>

					<div class="form-group"
						style="padding-top: 20px; text-align: right; padding-top: 20px;">
						<button type="button" class="btn btn-secondary"
							data-bs-dismiss="modal">Close</button>
						<button type="submit" class="btn btn-primary">Add Product</button>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>