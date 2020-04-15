<%@include file="../flows-shared/header.jsp" %>
<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>			
	<div class="container">
		
		
		<div class="row">
			
			<div class="col-md-6 col-md-offset-3">
				
				<div class="panel panel-primary">
				
					<div class="panel-heading">
						<h4  style="font-size:smaller;">S'inscrire</h4>
					</div>
					
					<div class="panel-body">
										
						<sf:form
							method="POST"
							modelAttribute="user"
							class="form-horizontal"
							id="registerForm"
						>
						
							
							<div class="form-group">
								<label class="control-label col-md-4"  style="font-size:smaller;">Nom</label>
								<div class="col-md-8">
									<sf:input type="text" path="firstName" class="form-control"
										 />
									<sf:errors path="firstName" cssClass="help-block" element="em"/> 
								</div>
							</div>


							<div class="form-group">
								<label class="control-label col-md-4"  style="font-size:smaller;">Prenom</label>
								<div class="col-md-8">
									<sf:input type="text" path="lastName" class="form-control"
										 />
									<sf:errors path="lastName" cssClass="help-block" element="em"/> 
								</div>
							</div>
						
							<div class="form-group">
								<label class="control-label col-md-4"  style="font-size:smaller;">Email</label>
								<div class="col-md-8">
									<sf:input type="text" path="email" class="form-control"
										/>
									<sf:errors path="email" cssClass="help-block" element="em"/> 									
								</div>
							</div>

							<div class="form-group">
								<label class="control-label col-md-4"  style="font-size:smaller;">Numero Tel</label>
								<div class="col-md-8">
									<sf:input type="text" path="contactNumber" class="form-control"
										 maxlength="10" />
									<sf:errors path="contactNumber" cssClass="help-block" element="em"/> 
								</div>
							</div>
							
							<div class="form-group">
								<label class="control-label col-md-4"  style="font-size:smaller;">Password</label>
								<div class="col-md-8">
									<sf:input type="password" path="password" class="form-control"
									/>
									<sf:errors path="password" cssClass="help-block" element="em"/> 
								</div>
							</div>
							
							<div class="form-group">
								<label class="control-label col-md-4"  style="font-size:smaller;">Confirmer Password</label>
								<div class="col-md-8">
									<sf:input type="password" path="confirmPassword" class="form-control"
									/>
									<sf:errors path="confirmPassword" cssClass="help-block" element="em"/>										 
								</div>
							</div>
							
	<div class="form-group">
		<label class="control-label col-md-4"  style="font-size:smaller;">Role</label>
		<div class="col-md-8">
			<label class="radio-inline">
				<sf:radiobutton path="role" value="USER" checked="checked"/> User 				
			</label>
			
		</div>
	</div>							

							<div class="form-group">
								<div class="col-md-offset-4 col-md-8">
									<button type="submit" name="_eventId_billing" class="btn btn-primary">
										Suivant <span class="glyphicon glyphicon-chevron-right"></span>
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
