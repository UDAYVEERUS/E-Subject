const baseUrl =
	process.env.NODE_ENV === "production"
		? "https://cofly-ecd7huzhf-udayveerus.vercel.app"
		: "http://localhost:3000";

export default baseUrl;