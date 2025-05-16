const paymentStart = () =>{
	 console.log("payment started");
	 var amount = $("#amount").val();
	 console.log(amount);
	 if(amount == "" || amount == null) {
		 swal("Failed!", "amount is required !!", "error");
	    return;
	 }
	 
	 
	 $.ajax({		 		 
			 url:'create_order',
			 data:JSON.stringify({amount:amount,info:'order_request'}),
			 contentType:'application/json',
			 type:'POST',
			 dataType:'json',
			 success:function(response){
				 console.log(response)
				 if(response.status == "created"){
					 
					 let options= {
						 key:'rzp_test_UqR4rLTzLN0KOI',
						 amount:response.amount,
						 currency:'INR',
						 name:'Bharat Darshan',
						 //image:'https://en.wikipedia.org/wiki/File:Gangotri.JPG',
						 order_id:response.id,
						 handler:function(response){
							 console.log(response.razorpay_payment_id);
							 console.log(response.razorpay_order_id);
							 console.log(response.razorpay_signature);
							 console.log('payment successful !!');
							 swal("congrates !! payment successful !!", "success");
						 },
						 prefill: { 
                            name:  "", 
                            email: "",
                            contact: "",
                        },
                          notes: {
                             address: "Bharat Darshan",
                         },
                          theme: {
                             color: "#3399cc",
                          },
					 };
					 
					 let rzp = new Razorpay(options);
					 
					 rzp.on('payment.failed', function (response){
                      console.log(response.error.code);
                      console.log(response.error.description);
                      console.log(response.error.source);
                      console.log(response.error.step);
                      console.log(response.error.reason);
                      console.log(response.error.metadata.order_id);
                      console.log(response.error.metadata.payment_id);
                     
                      swal("Failed!", "Oops payment failed !!", "error");
                   });
					 
					 rzp.open();
				 }
				 
			 },
			 error:function(error){
				 console.log(error)
				 alert("something went wrong !!")
			 }
		 
	 })
};