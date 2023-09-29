import React from 'react'

const ContactInfo = () => {
  return (
    <>
      <div className="contact-info">
        <span className="sub-title">Contact Details</span>
        <h2>Get in Touch</h2>
        <p>
          Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do
          eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum
          suspendisse ultrices gravida. Risus commodo viverra.
        </p>


        <ul>
          <li>
            <div className="icon">
              <i className="bx bx-map"></i>
            </div>
            <h3>Our Address</h3>
            <p>H-53, H Block, Sector 62, Noida, Uttar Pradesh 201301.</p>
          </li>
          <li>
            <div className="icon">
              <i className="bx bx-phone-call"></i>
            </div>
            <h3>Contact</h3>
            <p>
              Mobile: <a href="tel:+91-7303956035">+91-7303956035</a>
            </p>
            <p>
              Mail: <a href="mailto:info@cofly.in">info@cofly.in</a>
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
