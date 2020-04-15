<%@include file="../flows-shared/header.jsp" %>
<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>			
	<div class="container">
		
		
		<div class="row">
			
			<div class="col-md-6 col-md-offset-3">
				
				<div class="panel panel-primary">
				
					<div class="panel-heading">
						<h4  style="font-size:smaller;">Saisir Adresse</h4>
					</div>
					
					<div class="panel-body">
										
						<sf:form
							method="POST"
							modelAttribute="billing"
							class="form-horizontal"
							id="billingForm"
						>
						
							
							<div class="form-group">
								<label class="control-label col-md-4" for="addressLineOne"  style="font-size:smaller;">Addresse</label>
								<div class="col-md-8">
									<sf:input type="text" path="addressLineOne" class="form-control"
										/>
									<sf:errors path="addressLineOne" cssClass="help-block" element="em"/> 
								</div>
							</div>

							<div class="form-group">
								<label class="control-label col-md-4" for="addressLineTwo"  style="font-size:smaller;">Complement Addresse</label>
								<div class="col-md-8">
									<sf:input type="text" path="addressLineTwo" class="form-control"
										 />
									<sf:errors path="addressLineTwo" cssClass="help-block" element="em"/> 
								</div>
							</div>

							<div class="form-group">
								<label class="control-label col-md-4" for="city"  style="font-size:smaller;">Ville</label>
								<div class="col-md-8">
									<sf:input type="text" path="city" class="form-control"
										/>
									<sf:errors path="city" cssClass="help-block" element="em"/> 
								</div>
							</div>
							
							<div class="form-group">
								<label class="control-label col-md-4" for="postalCode"  style="font-size:smaller;">Code Postal</label>
								<div class="col-md-8">
									<sf:input type="text" path="postalCode" class="form-control"
										/>
									<sf:errors path="postalCode" cssClass="help-block" element="em"/> 
								</div>
							</div>							
						
							<div class="form-group">
								<label class="control-label col-md-4" for="state"  style="font-size:smaller;">Region</label>
								<div class="col-md-8">
									<sf:input type="text" path="state" class="form-control"
										/>
									<sf:errors path="state" cssClass="help-block" element="em"/> 
								</div>
							</div>

							<div class="form-group">
								<label class="control-label col-md-4" for="country"  style="font-size:smaller;">Pays</label>
								<div class="col-md-8">
									<sf:input type="text" path="country" class="form-control"
/>
									<sf:errors path="country" cssClass="help-block" element="em"/> 
								</div>
							</div>
							
							
							<div class="form-group">
								<div class="col-md-offset-4 col-md-8">
									<button type="submit" name="_eventId_personal" class="btn btn-primary">
										<span class="glyphicon glyphicon-chevron-left"></span> Retour
									</button>								
									<button type="submit" name="_eventId_confirm" class="btn btn-primary">
										Confirmer<span class="glyphicon glyphicon-chevron-right"></span>
									</button>																	 
								</div>
							</div>
						
						
						</sf:form>					
					
					
					</div>
				
				
				</div>
			
			
			</div>
		
		
		</div>
		
		
	</div>

<%@include file="../flows-shared/footer.jsp" %>			
