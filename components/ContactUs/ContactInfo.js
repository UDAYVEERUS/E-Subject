import React from 'react'

const ContactInfo = () => {
  return (
    <>
      <div className="contact-info">
        <span className="sub-title">Contact Details</span>
        <h2>Get in Touch</h2>
        <p>
        Contact us to connect with our E-Subject community, where our team of experts is ready to assist you with any questions or inquiries. We value your feedback and potential partnership opportunities, so don't hesitate to reach out. Join our vibrant discussions, share your insights, and collaborate with like-minded individuals to enhance your eLearning experience.
        </p>


        <ul>
          <li>
            <div className="icon">
              <i className="bx bx-map"></i>
            </div>
            <h3>Our Address</h3>
            <p>LVS Arcade, Madhapur, 71, Jubilee Enclave, HITEC City, Hyderabad, Telangana 500081</p>
          </li>
          <li>
            <div className="icon">
              <i className="bx bx-phone-call"></i>
            </div>
            <h3>Contact</h3>
            {/* <p>
              Mobile: <a href="tel:+91-7303956035">+91-7303956035</a>
            </p> */}
            <p>
              Mail: <a href="mailto:team@esubject.in">team@esubject.in</a>
            </p>
          </li>
          <li>
            <div className="icon">
              <i className="bx bx-time-five"></i>
            </div>
            <h3>Hours of Operation</h3>
            <p>Monday - Friday: 09:00 - 20:00</p>
            <p>Sunday & Saturday: 10:30 - 22:00</p>
          </li>
        </ul>
      </div>
    </>
  )
}

export default ContactInfo
