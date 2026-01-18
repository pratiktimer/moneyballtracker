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
        <q-form @submit="formSubmit">
          <q-input
            v-model="credentials.email"
            class="q-mb-md"
            :bg-color="useLightOrDark('white', 'black')"
            filled
            label="Email"
            type="email"
            autocomplete="email"
          />
          <q-input
            v-model="credentials.password"
            class="q-mb-md"
            :bg-color="useLightOrDark('white', 'black')"
            filled
            label="Password"
            type="password "
            autocomplete="current-password"
          />
          <q-btn
            color="white"
            class="full-width"
            type="submit"
            :label="submitButtonTitle"
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
import { computed, reactive, ref } from "vue";
import { useLightOrDark } from "src/use/useLightOrDark";
import { Dialog } from "quasar";
/*
tabs
*/

const tab = ref("login");

/*
submit button title
*/

const submitButtonTitle = computed(() => {
  return tab.value === "login" ? "Login" : "Register";
});

/*
form
*/

const credentials = reactive({
  email: "",
  password: "",
});

const formSubmit = () => {
  if (!credentials.email || !credentials.password) {
    Dialog.create({
      title: "Error",
      message: "Please enter both email and password.",
    });
    return;
  }
};
</script>
