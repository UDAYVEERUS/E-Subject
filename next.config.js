/** @type {import('next').NextConfig} */
const path = require("path");
const nextConfig = {
	trailingSlash: true,
	async headers() {
        return [
            {
                // matching all API routes
                source: "/api/:path*",
                headers: [
                    { key: "Access-Control-Allow-Credentials", value: "true" },
                    { key: "Access-Control-Allow-Origin", value: "*" }, // replace this your actual origin
                    { key: "Access-Control-Allow-Methods", value: "GET,DELETE,PATCH,POST,PUT" },
                    { key: "Access-Control-Allow-Headers", value: "X-CSRF-Token, X-Requested-With, Accept, Accept-Version, Content-Length, Content-MD5, Content-Type, Date, X-Api-Version" },
                ]
            }
        ]
    },
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
		AWS_SES_USER: "teamcofly@gmail.com",
		AWS_SES_PASSWORD:"xsmtpsib-d64e8b6f7472615c554888ff657f5c2c009faae2488e056d6b6f187f7a52e1d9-nRNEK7tgP0OhSqjb",
		CLOUD_NAME: "do99yykzs",
		UPLOAD_PRESETS: "do7psr0g",
		CLOUDINARY_URL:
			"https://api.cloudinary.com/v1_1/do99yykzs/image/upload",
		CLOUDINARY_VIDEO_URL:
			"https://api.cloudinary.com/v1_1/do99yykzs/video/upload",
		CLOUDINARY_ZIP_URL:
			"https://api.cloudinary.com/v1_1/do99yykzs/raw/upload",
		STRIPE_SECRET_KEY: "sk_test_51Nqb0lSD0oI6s7GCcgNKfJwXFwdhXfKH7t0oP4C4U2mkrtND41kukflLEZqcXJXXPq5XzBHy2iFosJj0PdMyjbBc00VNsTrta6",
		STRIPE_PUBLISHABLE_KEY: "pk_test_51Nqb0lSD0oI6s7GC7wkuAqqPIeDwNDcYtL7qlfqbamTAnDKeL6tsTzUYjq6K0WVVzB77eCfwtGFAKSKRv3foKj7y00CGFEDzcC",
	},
};

module.exports = nextConfig;
