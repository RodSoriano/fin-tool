import { createApp, h } from 'vue';
import { createInertiaApp, Head, Link } from '@inertiajs/vue3';
import { vuetifyPlugin } from './vuetify';
import { resolvePage } from './pages';

export default function () {
  createInertiaApp({
    resolve: resolvePage,
    progress: {
      delay: 50,
      includeCSS: true,
      showSpinner: false,
    },
    setup({ el, App, props, plugin }) {
      const app = createApp({ render: () => h(App, props) });
      app.use(plugin);
      app.use(vuetifyPlugin);

      app.component('iHead', Head);
      app.component('iLink', Link);

      app.mount(el);
    },
  });
}
