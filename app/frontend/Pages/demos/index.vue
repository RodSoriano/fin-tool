<template>
  <!-- TODO: delete the demo model and all its related files
  once the first release is merged into main -->
  <v-container>
    <div v-for="demo in demos" :key="demo.id" class="pa-4">
      <v-card :text="demo.name" :color="demo.color"/>
    </div>
  </v-container>
</template>

<script setup>
defineProps(['demos']);
</script>
