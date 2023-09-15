/** @type {import('next').NextConfig} */
const path = require("path");
const nextConfig = {
	trailingSlash: true,
	sassOptions: {
		includePaths: [path.join(__dirname, "styles")],
	},
	optimizeFonts: false,
	eslint: {
		// Warning: This allows production builds to successfully complete even if
		// your project has ESLint errors.
		ignoreDuringBuilds: true,
	},

	// Update here your access credential
	env: {
		JWT_SECRET: "asdfghjklnbvcxzqwertyuiopmkioprewqasderfgnujm",
		AWS_SES_USER: "",
		AWS_SES_PASSWORD: "",
		CLOUD_NAME: "dlvnxg4kc",
		UPLOAD_PRESETS: "dlvnxg4kc",
		CLOUDINARY_URL:
			"https://api.cloudinary.com/v1_1/dlvnxg4kc/image/upload",
		CLOUDINARY_VIDEO_URL:
			"https://api.cloudinary.com/v1_1/dlvnxg4kc/video/upload",
		CLOUDINARY_ZIP_URL:
			"https://api.cloudinary.com/v1_1/dlvnxg4kc/raw/upload",
		STRIPE_SECRET_KEY: "sk_test_51Nqb0lSD0oI6s7GCcgNKfJwXFwdhXfKH7t0oP4C4U2mkrtND41kukflLEZqcXJXXPq5XzBHy2iFosJj0PdMyjbBc00VNsTrta6",
		STRIPE_PUBLISHABLE_KEY: "pk_test_51Nqb0lSD0oI6s7GC7wkuAqqPIeDwNDcYtL7qlfqbamTAnDKeL6tsTzUYjq6K0WVVzB77eCfwtGFAKSKRv3foKj7y00CGFEDzcC",
	},
};

module.exports = nextConfig;
