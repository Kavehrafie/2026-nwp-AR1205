import ImageCaptionPlugin from "markdown-it-implicit-figures"
import {defineConfig} from "vite"
import type {  SlidevConfig, SlidevPluginOptions } from "@slidev/types"


export default defineConfig({
    slidev: {
        vue: {
            // options for Vue.js
        },
        markdown: {
            markdownItSetup(md) {
                md.use(ImageCaptionPlugin, {
                    figcaption: true,
                    lazyLoading: true,
                })
            }
        }
    }
})


