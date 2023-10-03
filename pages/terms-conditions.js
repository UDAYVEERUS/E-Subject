import React from 'react'
import Navbar from "@/components/_App/Navbar";
import PageBanner from "@/components/Common/PageBanner";
import Footer from "@/components/_App/Footer";
const termsConditions = ({ user }) => {
    return (
        <>
            <Navbar user={user} />
            <PageBanner
                pageTitle="Terms and Conditions"
                homePageUrl="/"
                homePageText="Home"
                activePageText="Terms and Conditions"
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
                                <h2>Terms And Conditions</h2>
                                <p>Welcome to CoFly.in! These terms and conditions outline the rules and regulations for the use of our website and services.
                                </p>
                                <h3>1. Acceptance of Terms</h3>
                                <p>By accessing this website, you agree to be bound by these terms and conditions. If you disagree with any part of these terms, please refrain from using our website.</p>

                                <h3>2. Privacy Policy</h3>
                                <p>Please review our Privacy Policy to understand how we collect, use, and protect your personal information. By using our services, you consent to the practices outlined in the Privacy Policy.</p>

                                <h3>3. User Responsibilities</h3>

                                <ul>
                                    <li>You must be at least 18 years old to use our services.</li>
                                    <li>You agree to provide accurate and up-to-date information when using our platform.</li>
                                    <li>You are responsible for maintaining the confidentiality of your account information and passwords.</li>
                                </ul>
                                <h3>4. Prohibited Activities</h3>

                                <ul>
                                    <li>You must not engage in any illegal, fraudulent, or harmful activities on our platform.</li>
                                    <li>you must not misuse our website, including attempting to gain unauthorized access to our systems.</li>
                                    <li>You must not use our platform to transmit malicious code or interfere with its functionality.</li>
                                </ul>

                                <h3>5. Intellectual Property</h3>

                                <ul>
                                    <li>All content and materials on our website are the property of CoFly.in and protected by copyright and other intellectual property laws.</li>
                                    <li>You may not use, reproduce, or distribute our content without prior written consent.</li>
                                </ul>

                                <h3>6. Termination</h3>
                                <p>We reserve the right to terminate or suspend your account and access to our services at our discretion, without notice, if you violate these terms and conditions.</p>


                                <h3>7. Limitation of Liability</h3>

                                <ul>
                                    <li> We strive to provide accurate information, but we do not guarantee the accuracy or completeness of the content on our website.</li>
                                    <li>We are not liable for any direct, indirect, or consequential damages resulting from the use of our services.</li>
                                </ul>

                                <h3>8. Changes to Terms</h3>
                                <p>We may update these terms and conditions at any time without prior notice. It is your responsibility to review them periodically.</p>

                                <h3>9. Governing Law</h3>
                                <p>These terms and conditions are governed by the laws of Uttar Pradesh. Any disputes shall be resolved in the courts of Uttar Pradesh.</p>

                                <h3>10. Contact Information</h3>
                                <p>If you have any questions or concerns about these terms and conditions, please contact us at info@pxy.in.</p>

                                <p>By using CoFly.in, you agree to abide by these terms and conditions. Thank you for choosing CoFly.in for your learning and business needs!</p>

                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <Footer />
        </>
    )
}

export default termsConditions