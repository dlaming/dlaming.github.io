import mdx from "@astrojs/mdx";
import node from "@astrojs/node";
import sitemap from "@astrojs/sitemap";
import expressiveCode from "astro-expressive-code";
import { defineConfig } from "astro/config";
import spectre from "./package/src";
import { spectreDark } from "./src/ec-theme";

const config = defineConfig({
	site: "https://laming.dev",
	output: "static",
	integrations: [
		expressiveCode({
			themes: [spectreDark],
		}),
		mdx(),
		sitemap(),
		spectre({
			name: "David Laming",
			themeColor: "#22c55e",
			openGraph: {
				home: {
					title: "David Laming",
				},
				blog: {
					title: "Blog",
				},
				projects: {
					title: "Projects",
				},
			},
			giscus: false,
		}),
	],
	adapter: node({
		mode: "standalone",
	}),
});

export default config;
