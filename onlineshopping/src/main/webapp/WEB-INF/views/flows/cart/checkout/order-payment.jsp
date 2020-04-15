<%@include file="../../flows-shared/header.jsp" %>
<div class="container">

	<div class="row">
			<!--  To display all the goods -->
			<div class="col-md-6">
				
				
				
			</div>
			
			<div class="col-md-6">
	            <div class="panel panel-default">
	                <div class="panel-heading">
	                    <h3 class="panel-title" style="font-size:smaller;">
Detail du paiement	                    </h3>
	                </div>
	                <div class="panel-body">
	                    <form role="form">
	                    <div class="form-group">
	                        <label  style="font-size:smaller;" ="cardNumber">
	                            Numero carte</label>
	                        <div class="input-group">
	                            <input type="text" class="form-control" id="cardNumber" placeholder="numero carte bancaire"
	                                required autofocus />
	                            <span class="input-group-addon"><span class="glyphicon glyphicon-lock"></span></span>
	                        </div>
	                    </div>
	                    <div class="row">
	                        <div class="col-xs-7 col-md-7">
	                            <div class="form-group">
	                                <label style="font-size:smaller;" for="expityMonth">Date expiration</label>
	                                <br/>
	                                <div class="col-xs-6 col-lg-6 pl-ziro">
	                                    <input type="text" class="form-control" id="expityMonth" placeholder="Mois" required />
	                                </div>
	                                <div class="col-xs-6 col-lg-6 pl-ziro">
	                                    <input type="text" class="form-control" id="expityYear" placeholder="Annee" required /></div>
	                            </div>
	                        </div>
	                        <div class="col-xs-5 col-md-5 pull-right">
	                            <div class="form-group">
	                                <label style="font-size:smaller;" for="cvCode">
	                                   Code CV</label>
	                                <input type="password" class="form-control" id="code cv" placeholder="CV" required />
	                            </div>
	                        </div>
	                    </div>
	                    </form>
	                </div>
	            </div>
	            <ul class="nav nav-pills nav-stacked">
	                <li class="active"><a href="#"><span class="badge pull-right"> <span> Montant de la commande = ${checkoutModel.checkoutTotal}</a></li>
	            </ul>
	            <br/>
	            <a href="${flowExecutionUrl}&_eventId_pay" class="btn btn-success btn-lg btn-block" role="button">Payer</a>
			
			</div>

	</div>
</div>
<%@include file="../../flows-shared/footer.jsp" %>