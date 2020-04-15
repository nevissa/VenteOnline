<%@include file="../../flows-shared/header.jsp" %>
<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>			
<div class="container">

	<div class="row">
		
					
			
			<div class="col-md-8">
			
				
				<div class="panel panel-primary">
				
					<div class="panel-heading">
						<h4 style="font-size:smaller;">Saisir l'adresse de livraison</h4>
					</div>
					
					<div class="panel-body">
										
						<sf:form
							method="POST"
							modelAttribute="shipping"
							class="form-horizontal"
							id="billingForm"
						>
						
							
							<div class="form-group">
								<label style="font-size:smaller;" class="control-label col-md-4" for="addressLineOne">Adresse </label>
								<div class="col-md-8">
									<sf:input type="text" path="addressLineOne" class="form-control"
									 />
									<sf:errors path="addressLineOne" cssClass="help-block" element="em"/> 
								</div>
							</div>

							<div class="form-group">
								<label  style="font-size:smaller;" class="control-label col-md-4" for="addressLineTwo">Complement Address </label>
								<div class="col-md-8">
									<sf:input type="text" path="addressLineTwo" class="form-control"
										 />
									<sf:errors path="addressLineTwo" cssClass="help-block" element="em"/> 
								</div>
							</div>

							<div class="form-group">
								<label  style="font-size:smaller;" class="control-label col-md-4" for="city">Ville</label>
								<div class="col-md-8">
									<sf:input type="text" path="city" class="form-control"
										 />
									<sf:errors path="city" cssClass="help-block" element="em"/> 
								</div>
							</div>
							
							<div class="form-group">
								<label style="font-size:smaller;" class="control-label col-md-4" for="postalCode">Code Postal</label>
								<div class="col-md-8">
									<sf:input type="text" path="postalCode" class="form-control"
										 />
									<sf:errors path="postalCode" cssClass="help-block" element="em"/> 
								</div>
							</div>							
						
							<div class="form-group">
								<label style="font-size:smaller;" class="control-label col-md-4" for="state">Region</label>
								<div class="col-md-8">
									<sf:input type="text" path="State" class="form-control"
										 />
									<sf:errors path="State" cssClass="help-block" element="em"/> 
								</div>
							</div>

							<div class="form-group">
								<label style="font-size:smaller;"  class="control-label col-md-4" for="country">Pays</label>
								<div class="col-md-8">
									<sf:input type="text" path="country" class="form-control"
										 />
									<sf:errors path="country" cssClass="help-block" element="em"/> 
								</div>
							</div>
							
							
							<div class="form-group">
								<div class="col-md-offset-4 col-md-8">
									<button style="font-size:smaller;" type="submit" name="_eventId_saveAddress" class="btn btn-primary">
										<span class="glyphicon glyphicon-plus"></span> Ajouter
									</button>																	 
								</div>
							</div>
						
						
						</sf:form>					
					
					
					</div>
				
				
				</div>
			
								
			
			</div>
			

	</div>	

</div>	
<%@include file="../../flows-shared/footer.jsp" %>	