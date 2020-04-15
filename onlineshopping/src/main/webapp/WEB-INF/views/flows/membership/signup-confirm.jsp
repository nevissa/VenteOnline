<%@include file="../flows-shared/header.jsp" %>
<div class="container">
	
	<div class="row">
	
		<div class="col-sm-6">
	
			<div class="panel panel-primary">
				
				<div class="panel-heading">
					<h4  style="font-size:smaller;">Details user</h4>
				</div>
			
				<div class="panel-body">
					<div class="text-center">
						<h3  style="font-size:smaller;">Name : <strong>${registerModel.user.firstName} ${registerModel.user.lastName}</strong></h3>
						<h4  style="font-size:smaller;">Email : <strong>${registerModel.user.email}</strong></h4>
						<h4  style="font-size:smaller;">Contact : <strong>${registerModel.user.contactNumber}</strong></h4>
						<h4  style="font-size:smaller;">Role : <strong>${registerModel.user.role}</strong></h4>
						<p>
							<a  style="font-size:smaller;" href="${flowExecutionUrl}&_eventId_personal" class="btn btn-primary">Edit</a>
						</p>
					</div>
				</div>
			
			</div>
					
		
		</div>
		
		<div class="col-sm-6">
		
			<div class="panel panel-primary">
				
				<div class="panel-heading">
					<h4  style="font-size:smaller;">Adesse</h4>
				</div>
			
				<div class="panel-body">
					<div class="text-center">
						<p  style="font-size:smaller;">${registerModel.billing.addressLineOne}, </p>
						<p  style="font-size:smaller;">${registerModel.billing.addressLineTwo}, </p>
						<p  style="font-size:smaller;">${registerModel.billing.city} -  ${registerModel.billing.postalCode}, </p>
						<p  style="font-size:smaller;">${registerModel.billing.state}</p>
						<p  style="font-size:smaller;">
							<a href="${flowExecutionUrl}&_eventId_billing" class="btn btn-primary"  style="font-size:smaller;">Edit</a>
						</p>
					</div>
				</div>
			
			</div>
		
		</div>
	
	</div>
	
	<div class="row">
		
		<div class="col-sm-4 col-sm-offset-4">
			
			<div class="text-center">
				
				<a  style ="background-color:#dc5ab1e0; border-color:white; height:39px;font-size:15px;" href="${flowExecutionUrl}&_eventId_submit" class="btn btn-lg btn-primary"  style="font-size:smaller;">Valider</a>
				
			</div>
			
		</div>
		
	</div>

</div>
<%@include file="../flows-shared/footer.jsp" %>