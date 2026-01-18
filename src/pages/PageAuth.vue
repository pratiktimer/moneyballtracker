<template>
  <q-page class="flex flex-center">
    <q-card class="auth bg-primary text-white q-pa-lg">
      <q-card-section><ToolbarTitle></ToolbarTitle></q-card-section>
      <q-card-section>
        <q-tabs v-model="tab" no-caps>
          <q-tab name="login" label="Login" />
          <q-tab name="register" label="Register" />
        </q-tabs>
      </q-card-section>

      <q-card-section>
        <q-form v-if="tab === 'login'" class="q-gutter-md">
          <q-input
            class="q-mb-md"
            bg-color="white"
            filled
            label="Email"
            type="email"
            autocomplete="email"
          />
          <q-input
            bg-color="white"
            filled
            label="Password"
            type="password "
            autocomplete="current-password"
          />
          <q-btn
            to="/"
            color="white"
            class="full-width"
            label="Login"
            outline
          />
        </q-form>
      </q-card-section>
    </q-card>
  </q-page>
</template>
<script setup>
/*
imports
*/
import ToolbarTitle from "src/components/Layout/ToolbarTitle.vue";
import { ref } from "vue";
/*
tabs
*/

const tab = ref("login");
</script>
