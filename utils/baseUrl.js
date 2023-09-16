const baseUrl =
	process.env.NODE_ENV === "production"
		? "https://www.cofly.in"
		: "http://localhost:3000";

export default baseUrl;
