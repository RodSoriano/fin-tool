<template>
  <v-app id='inspire'>
    <v-navigation-drawer v-model='drawer'>
      <v-list>
        <iLink v-for='resource in resources' :key='resource.name' :href='resource.uri' role='navigation' class='inertia-link'>
          <v-list-item :value='resource.name' color='primary' link>
            <template v-slot:prepend>
            <v-icon :icon='resource.icon' />
            </template>
            <!-- This not so sure what it is -->
            <v-list-item-title>{{ resource.name }}</v-list-item-title>
          </v-list-item>
        </iLink>
      </v-list>
    </v-navigation-drawer>

    <v-app-bar color='primary'>
    <v-app-bar-nav-icon @click='drawer = !drawer'></v-app-bar-nav-icon>

    <v-app-bar-title>Application</v-app-bar-title>
    </v-app-bar>

    <v-main>
      <v-container>
        <!-- Here in the slot is where the pages loads -->
        <slot />
      </v-container>
    </v-main>
  </v-app>
</template>

<script setup>
  import { ref } from 'vue';

  const drawer = ref(null);

  // side bar content
  // here is just an example
  // we can update this later
  const resources = [
    { name: 'to demo index route', uri: '/demos', icon: 'mdi-rhombus-split' },
  ];
</script>

<style lang='scss' scoped>
  .inertia-link {
    color: #212121;
    text-decoration-line: none;
  }
</style>
