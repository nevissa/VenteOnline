<div class="container">

	<div class="row">


		<!-- Would be to display sidebar -->
	

		<!-- to display the actual products -->
		<div class="col-md-9">

			<!-- Added breadcrumb component -->
			<div class="row">

				<div class="col-lg-12">

					<c:if test="${userClickAllProducts == true}">
					
						<script>
							window.categoryId = '';
						</script>
					
						<ol class="breadcrumb">


							<li><a style="font-size:smaller;" href="${contextRoot}/home">Accueil</a></li>
							<li style="font-size:smaller;" class="active">Tous les produits <li>


						</ol>
					</c:if>
					
					
					<c:if test="${userClickCategoryProducts == true}">
						<script>
							window.categoryId = '${category.id}';
						</script>
					
						<ol class="breadcrumb">


							<li><a  style="font-size:smaller;"href="${contextRoot}/home">Accueil</a></li>
							<li style="font-size:smaller;" class="active">Categorie</li>
							<li style="font-size:smaller;" class="active">${category.name}</li>


						</ol>
					</c:if>
					

				</div>


			</div>

			
			<div class="row">
			
				<div class="col-xs-12">
				
					
					<table style="font-size:smaller;" id="productListTable" class="table table-striped ">
					
					
						<thead>
						
							<tr style="font-size:smaller;" >
								<th></th>
								<th style="font-size:smaller;">Nom</th>
								<th style="font-size:smaller;">Marque</th>
							<th style="font-size:smaller;">Date Livraison</th>
								
								<th style="font-size:smaller;">Prix</th>
								<th style="font-size:smaller;">Quantité</th>
								<th></th>
							
							</tr>
						
						</thead>
					

						
					</table>
				
				</div>
			
			</div>


		</div>



	</div>






</div>