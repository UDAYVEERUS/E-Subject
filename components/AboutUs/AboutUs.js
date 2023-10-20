import React from 'react'

const AboutUs = () => {
  return (
    <>
      <div className="about-area ptb-100">
        <div className="container">
          <div className="row align-items-center">
            <div className="col-lg-6 col-md-12">
              <div className="about-image">
                <div className="image">
                  <img src="/images/about-img1.png" alt="image" />
                </div>
              </div>
            </div>

            <div className="col-lg-6 col-md-12">
              <div className="about-content">
                <span className="sub-title">DISTANCE LEARNING</span>
                <h2>
                  89% of people learning for professional development report
                  career benefits like getting a promotion, starting a new career
                </h2>
                <p>
                Welcome to Cofly, your ultimate destination for eLearning excellence. Our passion for education, technology, and innovation drives us to provide a dynamic and engaging learning platform for students and professionals alike. With a team of dedicated instructors and experts, we're committed to delivering top-notch courses that equip you with the skills and knowledge needed to succeed in today's fast-paced world. 
                </p>

                <p>
                Cofly is not just an eLearning website; it's a gateway to a brighter, more knowledgeable future. Join us on this educational journey and unlock your full potential. Discover, learn, and grow with CoFly.
                </p>

                <ul className="features-list">
                  <li>
                    <span>
                      <i className="flaticon-experience"></i> Expert Trainers
                    </span>
                  </li>
                  <li>
                    <span>
                      <i className="flaticon-time-left"></i> Lifetime Acces
                    </span>
                  </li>
                  <li>
                    <span>
                      <i className="flaticon-tutorials"></i> Remote Learning
                    </span>
                  </li>
                  <li>
                    <span>
                      <i className="flaticon-self-growth"></i> Self Development
                    </span>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
      </div>
    </>
  )
}

export default AboutUs
