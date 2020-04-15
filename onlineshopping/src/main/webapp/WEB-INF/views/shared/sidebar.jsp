


	  <ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
		                  
<div class="list-group">


	<c:forEach items="${categories}" var="category">
		<a style="font-size:smaller;" href="${contextRoot}/show/category/${category.id}/products" class="list-group-item" id="a_${category.name}">${category.name}</a>
	</c:forEach>

	 
</div>	    	
						  </ul>	