import nodemailer from "nodemailer";

export const transport = nodemailer.createTransport({
	// Yes. SMTP!
	service: "SMTP",
	host: "smtp-relay.brevo.com", // Amazon email SMTP hostname
	secureConnection: true, // use SSL
	port: 587, // port for secure SMTP
	auth: {
		user: process.env.AWS_SES_USER, // Use from Amazon Credentials
		pass: process.env.AWS_SES_PASSWORD, // Use from Amazon Credentials
	},
});
