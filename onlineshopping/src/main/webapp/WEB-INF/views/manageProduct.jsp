<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>

<div class="container">

	<c:if test="${not empty message}">	
		<div class="row">			
			<div class="col-xs-12 col-md-offset-2 col-md-8">			
				<div class="alert alert-info fade in">${message}</div>				
			</div>
		</div>
	</c:if>

	<div class="row">

		<div class="col-md-offset-2 col-md-8">

			<div class="panel panel-primary">

				<div class="panel-heading">

					<h4 style="font-size:smaller;">Nouveau produit</h4>

				</div>

				<div class="panel-body">
					<sf:form class="form-horizontal" modelAttribute="product" action="${contextRoot}/manage/product" method="POST" enctype="multipart/form-data">
						<div class="form-group">
							<label class="control-label col-md-4" style="font-size:smaller;">Nom</label>
							<div class="col-md-8">
								<sf:input type="text" path="name" class="form-control"
									 />
								<sf:errors path="name" cssClass="help-block" element="em"/> 
							</div>
						</div>
						
						<div class="form-group">
							<label class="control-label col-md-4" style="font-size:smaller;">Marque</label>
							<div class="col-md-8">
								<sf:input type="text" path="brand" class="form-control"
 /> 
								<sf:errors path="brand" cssClass="help-block" element="em"/>	
							</div>
						</div>						<div class="form-group">
							<label class="control-label col-md-4" style="font-size:smaller;">Date_livraison</label>
							<div class="col-md-8">
								<sf:input type="date" path="date_livraison" class="form-control"
 /> 
								<sf:errors path="date_livraison" cssClass="help-block" element="em"/>	
							</div>
						</div>

						<div class="form-group">
							<label class="control-label col-md-4" style="font-size:smaller;">Description</label>
							<div class="col-md-8">
								<sf:textarea  style="font-size:smaller;" path="description" class="form-control"
								 /> 
								<sf:errors path="description" cssClass="help-block" element="em"/>
							</div>
						</div>

						<div class="form-group">
							<label class="control-label col-md-4" style="font-size:smaller;">Prix</label>
							<div class="col-md-8">
								<sf:input type="number" path="unitPrice" class="form-control"
									 />
								<sf:errors path="unitPrice" cssClass="help-block" element="em"/>
							</div>
						</div>

						<div class="form-group">
							<label style="font-size:smaller;"  class="control-label col-md-4">Quantité</label>
							<div class="col-md-8">
								<sf:input type="number" path="quantity" class="form-control"
									/>
								<sf:errors path="quantity" cssClass="help-block" element="em"/> 
							</div>
						</div>


						<div class="form-group">
							<label class="control-label col-md-4" style="font-size:smaller;">Upload </label>
							<div class="col-md-8">
								<sf:input type="file" path="file" class="form-control"/>
								<sf:errors path="file" cssClass="help-block" element="em"/> 
							</div>
						</div>


						<div class="form-group">
							<label class="control-label col-md-4" style="font-size:smaller;">Categorie</label>
							<div class="col-md-8">
								<sf:select path="categoryId" items="${categories}" itemLabel="name" itemValue="id" class="form-control"/>
							
								<div class="text-right">
									<br/>			
									<sf:hidden path="id"/>
									<sf:hidden path="code"/>
									<sf:hidden path="supplierId"/>
									<sf:hidden path="active"/>														
									<button type="button" class="btn btn-warning btn-xs" data-toggle="modal" data-target="#myCategoryModal">Nouvelle categorie</button>
								</div>							
							</div>
							
						</div>


					
						<div class="form-group">
							
							<div class="col-md-offset-4 col-md-4">
							
								<input type="submit" name="submit" value="Sauvegarder" class="btn btn-primary"/>
								
							</div>
						</div>						
										
					</sf:form>

				</div>

			</div>

		</div>

	</div>

	<!-- Modal -->
	<div class="modal fade" id="myCategoryModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
	  <div class="modal-dialog" role="document">
	    <div class="modal-content">
	      <div class="modal-header">
	        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
	        <h4 class="modal-title" id="myModalLabel">Nouvelle categorie</h4>
	      </div>
	      <div class="modal-body">
	        
	        <sf:form id="categoryForm" class="form-horizontal" modelAttribute="category" action="${contextRoot}/manage/category" method="POST">
	        	
       			<div class="form-group">
					<label class="control-label col-md-4">Nom</label>
					<div class="col-md-8 validate">
						<sf:input type="text" path="name" class="form-control"
							placeholder="" /> 
					</div>
				</div>
       			
       			<div class="form-group">				
					<label class="control-label col-md-4">Description</label>
					<div class="col-md-8 validate">
						<sf:textarea path="description" class="form-control"
							placeholder="" /> 
					</div>
				</div>	        	        
	        
	        
				<div class="form-group">				
					<div class="col-md-offset-4 col-md-4">					
						<input type="submit" name="submit" value="enregitrer" class="btn btn-primary"/>						
					</div>
				</div>	        
	        </sf:form>
	      </div>
	    </div>
	  </div>
	</div>
	
	<hr/>	
	<h4>Produits disponibles</h4>
	<hr/>
	
	<div class="row">
				
		
		<div class='col-xs-12'>
		
		<table style="font-size:smaller;"  id="productsTable" class="table table-condensed table-bordered">
							
				<thead>					
					<tr>					
						<th>Id</th>
						<th>&#160;</th>
						<th>Nom</th>
						<th>Marque</th>
				<th>Date_livraison</th>
						
						<th>Quantité</th>
						<th>Prix</th>
						<th>Activé</th>				
						<th>Modifier</th>
					</tr>					
				</thead>
				
				
				
							
			</table>
		
		
		</div>
	
	
	</div>

</div>