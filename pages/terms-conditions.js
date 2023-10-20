import React from "react";
import Navbar from "@/components/_App/Navbar";
import PageBanner from "@/components/Common/PageBanner";
import Footer from "@/components/_App/Footer";

export default function TermsConditionsPage({ user }) {
	return (
		<>
			<Navbar user={user} />

			<PageBanner
				pageTitle="Terms & Conditions"
				homePageUrl="/"
				homePageText="Home"
				activePageText="Terms & Conditions"
			/>

			<div className="privacy-policy-area ptb-100">
				<div className="container">
					<div className="row">
						<div className="col-lg-12 col-md-12">
							<div className="privacy-policy-content">
								{/* <p>
									<i>
										This Terms & Conditions was last updated
										on January 1, 2022.
									</i>
								</p> */}
								<h2>Refund Policy</h2>
								<p>At E-Subject Business Services, we are committed to providing our customers with
									top-quality products and services. We understand that sometimes situations may arise
									where you need to request a refund for a purchase you have made. This refund policy
									outlines the guidelines and procedures for obtaining a refund from us to ensure a fair
									and transparent process for both you and us.
								</p>
								<h3>1. Eligibility for Refund</h3>
								<p>To be eligible for a refund, your request must meet the following criteria:</p>
								<ul>
									<li>Your request must be made within 1 day from the date of purchase</li>
									<li>The service for which you are requesting a refund must be unused.</li>
									<li>You must provide proof of purchase, such as a receipt or order number</li>
									<li>The refund request must be related to service that falls within the scope of our refund
										policy</li>
								</ul>
								<h3>2. Refund Process</h3>
								<p>To initiate a refund request, please follow these steps:</p>
								<ul>
									<li>Contact our customer support team at info@E-Subject.in to inform them of your request.</li>
									<li>Provide all necessary information, including your order number, the reason for the
										refund, and any supporting documents.
									</li>
									<li>Our team will review your request and may require additional information to process it.</li>
									<li>Once your request is approved, we will notify you and process the refund using the
										original method of payment, unless otherwise specified.
									</li>
								</ul>
								<h3>3. Refund Timeframe</h3>
								<p>Refunds will be processed as quickly as possible, but please allow up to 14 business days
									for the refund to be credited to your account. The exact timeframe may vary depending
									on your payment method and financial institution.</p>
								<h4>4. Non-Refundable Items and Services</h4>
								<p>Please note that certain items and services are non-refundable. These include:</p>
								<ul>
									<li>Downloadable digital products that have been accessed or downloaded.</li>
									<li>Services that have already been provided or initiated.</li>
									<li>Customised or personalised services</li>
								</ul>
								<h3>5. Cancelling Subscription Services</h3>
								<p>
									If you are subscribed to any of our services, you can cancel your subscription at any
									time. However, please be aware that cancellation may not result in a refund of any
									subscription fees already paid, and the service will continue until the end of the current
									billing cycle.
								</p>
								<h3>6. Changes to this Refund Policy</h3>
								<p>We reserve the right to update or modify this refund policy at any time without prior
									notice. Any changes will be effective immediately upon posting on our website. It is your
									responsibility to review this policy periodically to stay informed about our refund
									practices.
								</p>
								<h3>7. Contact Us</h3>
								<p>If you have any questions or concerns about our refund policy, please contact our
									customer support team at info@esubject.in. We are here to assist you and ensure your
									satisfaction with our products and services.<br />
									At E-Subject Business Services, we value your trust and are dedicated to providing a positive
									customer experience. We strive to handle refund requests promptly and fairly, and we
									appreciate your business.</p>
								<h3>1. What Data We Get</h3>

								<blockquote className="blockquote">
									<p>
										We collect certain data from you
										directly, like information you enter
										yourself, data about your participation
										in courses, and data from third-party
										platforms you connect with E-Subject. We
										also collect some data automatically,
										like information about your device and
										what parts of our Services you interact
										with or spend time using.
									</p>
								</blockquote>

								<h3>2. Data You Provide to Us</h3>
								<p>
									We may collect different data from or about
									you depending on how you use the Services.
									Below are some examples to help you better
									understand the data we collect.
								</p>
								<h3>3. How We Get Data About You</h3>
								<p>
									We use tools like cookies, web beacons,
									analytics services, and advertising
									providers to gather the data listed above.
									Some of these tools offer you the ability to
									opt out of data collection.
								</p>
								<h3>4. What We Use Your Data For</h3>
								<ol>
									<li>
										Responding to your questions and
										concerns;
									</li>
									<li>
										Sending you administrative messages and
										information, including messages from
										instructors and teaching assistants,
										notifications about changes to our
										Service, and updates to our agreements;
									</li>
									<li>
										Sending push notifications to your
										wireless device to provide updates and
										other relevant messages (which you can
										manage from the “options” or “settings”
										page of the mobile app);
									</li>
								</ol>
								<h3>
									5. Your Choices About the Use of Your Data
								</h3>
								<p>
									You can choose not to provide certain data
									to us, but you may not be able to use
									certain features of the Services.
								</p>
								<ul>
									<li>
										To stop receiving promotional
										communications from us, you can opt out
										by using the unsubscribe mechanism in
										the promotional communication you
										receive or by changing the email
										preferences in your account. Note that
										regardless of your email preference
										settings, we will send you transactional
										and relationship messages regarding the
										Services, including administrative
										confirmations, order confirmations,
										important updates about the Services,
										and notices about our policies.
									</li>
									<li>
										The browser or device you use may allow
										you to control cookies and other types
										of local data storage. Your wireless
										device may also allow you to control
										whether location or other data is
										collected and shared. You can manage
										Adobe LSOs through their Website Storage
										Settings panel.
									</li>
									<li>
										To get information and control cookies
										used for tailored advertising from
										participating companies, see the
										consumer opt-out pages for the Network
										Advertising Initiative and Digital
										Advertising Alliance, or if you are
										located in the European Union, visit the
										Your Online Choices site. To opt out of
										Google display advertising or customize
										Google Display Network ads, visit the
										Google Ads Settings page. To opt out of
										Taboola targeted ads, see the Opt-out
										Link in their Cookie Policy.
									</li>
									<li>
										To update data you provide directly, log
										into your account and update your
										account at any time.
									</li>
								</ul>
								<h3>6. Our Policy Concerning Children</h3>
								<p>
									We recognize the privacy interests of
									children and encourage parents and guardians
									to take an active role in their children
									online activities and interests. Children
									under 13 (or under 16 in the European
									Economic Area) should not use the Services.
									If we learn that we have collected personal
									data from a child under those ages, we will
									take reasonable steps to delete it.
								</p>
							</div>
						</div>
					</div>
				</div>
			</div>

			<Footer />
		</>
	);
}
