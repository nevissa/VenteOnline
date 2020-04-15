<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<spring:url var="css" value="/resources/css" />
<spring:url var="js" value="/resources/js" />
<spring:url var="images" value="/resources/images" />

<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>Online Shopping - Membership</title>

<script>

	window.contextRoot = '${contextRoot}'
	
</script>

<!-- Bootstrap Core CSS -->
<link href="${css}/bootstrap.min.css" rel="stylesheet">

<!-- Bootstrap Readable Theme -->
<link href="${css}/bootstrap-readable-theme.css" rel="stylesheet">


<!-- Bootstrap DataTables -->
<link href="${css}/dataTables.bootstrap.css" rel="stylesheet">


<!-- Custom CSS -->
<link href="${css}/myapp.css" rel="stylesheet">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>

<div class="wrapper">

    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
           <div class="navbar-header">
               <a class="navbar-brand" href="${contextRoot}/home">RIMVente</a>
           </div>
		</div>
	</nav>


	<!-- Page Content -->
	
	<div class="content">
		<div class="container">
			<div class="alert alert-success">
				<h3 class="text-center" style="font-size:smaller;">votre commande est confirmée!!</h3>
			</div>
		    <div class="row">
		        <div class="col-xs-12">
		    		<div class="invoice-title">
		    			<h3>Facture</h3>
		    		</div>
		    		<hr>
		    		<div class="row">
		    			<div class="col-xs-6">
		    				<address>
		    				<strong style="font-size:smaller; color:red;" >Acheté par:</strong><br>
		    					${orderDetail.user.firstName} ${orderDetail.user.lastName}<br>
		    						</address>
		    			</div>
		    			<div class="col-xs-6 text-right">
		    				<address>
		        			<strong style="font-size:smaller; color:red;">Livré à:</strong><br>
		    					${orderDetail.user.firstName} ${orderDetail.user.lastName}<br>
		    					${orderDetail.shipping.addressLineOne}<br>
		    					${orderDetail.shipping.addressLineTwo}<br>
		    					${orderDetail.shipping.city} - ${orderDetail.shipping.postalCode}<br>
		    					${orderDetail.shipping.state} - ${orderDetail.shipping.country}
		    				</address>
		    			</div>
		    		</div>
		    		<div class="row">
		    			<div class="col-xs-6">
		    				<address>
		    					<strong style="font-size:smaller; color:red;">methode de paiement:</strong><br>
		    					carte bancaire<br>
		    				</address>
		    			</div>
		    			<div class="col-xs-6 text-right">
		    				<address>
		    					<strong   style="font-size:smaller;color:red;">Date de commande:</strong><br>
		    					${orderDetail.orderDate}<br><br>
		    				</address>
		    			</div>
		    		</div>
		    	</div>
		    </div>
		    
		    <div class="row">
		    	<div class="col-md-12">
		    		<div class="panel panel-default">
		    			<div class="panel-heading">
		    				<h3 class="panel-title"><strong style="font-size:smaller;" >Articles</strong></h3>
		    			</div>
		    			<div class="panel-body">
		    				<div class="table-responsive">
		    					<table class="table table-condensed">
		    						<thead>
		                                <tr>
		        							<td><strong style="font-size:smaller;">Article</strong></td>
		        							<td class="text-center"><strong style="font-size:smaller;">Prix</strong></td>
		        							<td class="text-center"><strong style="font-size:smaller;">Quantié</strong></td>
		        							<td class="text-right"><strong style="font-size:smaller;">Total</strong></td>
		                                </tr>
		    						</thead>
		    						<tbody>
		    							<!-- foreach ($order->lineItems as $line) or some such thing here -->
		    							<c:forEach items="${orderDetail.orderItems}" var="orderItem">
			    							<tr>
			    								<td style="font-size:smaller;">${orderItem.product.name}</td>
			    								<td class="text-center" style="font-size:smaller;"> ${orderItem.buyingPrice}</td>
			    								<td class="text-center" style="font-size:smaller;">${orderItem.productCount}</td>
			    								<td class="text-right" style="font-size:smaller;"> ${orderItem.total}</td>
			    							</tr>
		    							</c:forEach>
		    						</tbody>
		    					</table>
		    				</div>
		    			</div>
		    		</div>
		    	</div>
		    </div>
		    <div class="text-center">
		    	<a href="${contextRoot}/show/all/products" class="btn btn-lg btn-warning">Continuez vos achats</a>
		    </div>
		</div>
<%@include file="../../flows-shared/footer.jsp" %>	