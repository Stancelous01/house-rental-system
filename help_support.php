<?php 
	include"inc/header.php";
	
	if($_SERVER['REQUEST_METHOD'] == "POST" && isset($_POST['sendmessage'])){
		$sendmsg = $ibx->sendMessage($_POST);
	}
?>
<!--Header Section End------------->

<div class="page_title">
	<h1 class="sub-title">help & support</h1>
</div>

<!--Help Section Start------------->
<div class="container">
	<div class="mcol_8">
	<!--Contact Section Start------------->
		<div class="property_contact">
			<div class="property_contact_title">
				<h1>contact us</h1>
			</div>
			
			<form action="" method="POST">
			<?php
				if(isset($sendmsg)){ 
					echo $sendmsg; 
				}
			?>
				<div class="contact_body overflow">
					<div class="contact_part">
					  <label for="name"><b>Name:</b></label>
					  <input type="text" placeholder="Enter name" name="name" required><br><br><br>
					  
					  <label for="phone"><b>Mobile No:</b></label>
					  <input type="phone" placeholder="Enter Mobile No" name="phone" required><br><br><br>
					  
					  <label for="email"><b>Email:</b></label>
					  <input type="email" placeholder="Enter Email" name="email" required><br><br><br>
					</div>
				
					<div class="contact_part">
					  <label for="message"><b>Message:</b></label>
					  <textarea placeholder="Type your message" name="message" required></textarea>
					</div>
				</div>
				
				<div class="contact_button overflow">
					<button class="btn_success" type="submit" name="sendmessage">Send</button>
				</div>
			</form>
			
			<div class="property_contact_body">
				<div class="contact_part">
					<h3>address</h3>
					<p>stancynaccommodations building Limited House # 9, Road # 2/D, Block # J, Westlands, Nairobi, Kenya</p>
				</div>
				<div class="contact_part">
					<div class="virtual_contact overflow">
						<div><p>telephone</p></div>
						<div><p>0706683704</p></div>
					</div>
					<div class="virtual_contact overflow">
						<div><p>mobile</p></div>
						<div><p>0706683704</p></div>
					</div>
					<div class="virtual_contact overflow">
						<div><p>fax</p></div>
						<div><p>0706683704</p></div>
					</div>
					<div class="virtual_contact overflow">
						<div><p>e-mail</p></div>
						<div><p>stancynaccomodations@gmail.com</p></div>
					</div>
					<div class="virtual_contact overflow">
						<div><p>website</p></div>
						<div><p>www.stancynaccomodations.com</p></div>
					</div>
				</div>
			</div>
		</div>
	<!--Contact Section End------------->	
		
		
	<!--FAQ Section Start------------->	
		<div class="property_faq">
			<div class="faq_title">
				<h1>freequently asked questions</h1>
			</div>
			<div class="faq_body">
				<div class="faq_content">
					<h3>🌟 Why Choose Us?</h3>
					<p>At Stancyn Accomodations, we go beyond listings — we deliver a complete rental experience designed around trust, convenience, and innovation. Whether you're a landlord seeking qualified tenants or a renter searching for your next home, here's why thousands rely on our platform:<br>

✅ Verified Listings Only
We ensure all property listings go through a strict verification process, minimizing scams and ensuring accurate, up-to-date information you can trust.
			</p>

<p>⚡ Seamless User Experience
With an intuitive design and smart navigation, our platform makes it easy to register, list, search, and connect — even on mobile devices.
			</p>
<p>🔎 Advanced Search Filters
Quickly find exactly what you're looking for using powerful search filters — by location, price, amenities, property type, and more.
			</p>
🤝 Secure Landlord-Tenant Interactions
Built-in messaging tools and WhatsApp integration offer safe and direct communication between landlords and tenants.
<br>
📝 Digital Rental Agreements
Eliminate paperwork delays with downloadable or digitally signed rental agreements that are accessible anytime.
<br>
📅 Smart Booking & Scheduling
Tenants can request viewings, book properties, and schedule appointments — all managed from their dashboard.
<br>
🛡️ Data Privacy & Protection
Your personal information is always protected with secure encryption and role-based access control. We respect your privacy at every step.
<br>
🛠️ Dedicated Support
Our support team is always ready to assist with technical issues, disputes, or general questions — ensuring peace of mind.
<br>
🚀 Experience the smarter way to rent and manage properties. Join Stancyn Accomodations Fraternity today — where every connection leads home.
				<br>
</div>
				
				<div class="faq_content">
					<p><b>🔐 Account & Registration</b></p>
1. Who can register on the platform?<br>
Our platform supports tenants, landlords, and administrators. Each role has tailored tools and dashboards designed to optimize their experience. Simply click “Get Started,” select your role, and complete the registration process.
<br>
2. Can I switch my role after registration?<br>
No. For system integrity and data privacy, each account is bound to a specific role. If you need to switch roles (e.g., from tenant to landlord), you'll need to register a new account using a different email address.

<P><b>🏡 Property Listings & Management</b></p>
3. How do I list a rental property?
Once registered as a landlord, navigate to your dashboard and click “Add New Property.” Fill in the required fields such as property title, location, rent, amenities, availability, and upload high-resolution photos.


			</div>
		</div>
	<!--FAQ Section End------------->
	</div>
</div>
<!--Help Section End------------->

	
<!--Footer Section Start------------->
<?php include"inc/footer.php"; ?>
<!--Footer Section End------------->