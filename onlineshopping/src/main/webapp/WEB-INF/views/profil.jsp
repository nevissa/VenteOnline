<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>



<div class="container">
<div class="row">	
<h4>Mon Profil</h4>
<img src="${images}/profil.png"  style="width:110px;"/>
</br></br>
<p style="font-size:smaller;">NOM: ${userModel.firstName}	</p>
<p style="font-size:smaller;">Prenom: ${userModel.lastName}	</p>
<p style="font-size:smaller;">Email: ${userModel.email}	</p>
	

</div></div>