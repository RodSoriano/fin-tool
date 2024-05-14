<template>
  <v-container>
    <div v-for="demo in demos" :key="demo.id" class="pa-4">
      <v-card :text="demo.name" :color="demo.color"/>
    </div>
  </v-container>
</template>

<script setup>
defineProps(['demos']);
</script>
