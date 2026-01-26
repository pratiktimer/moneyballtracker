import { reactive, ref } from "vue";
import { useRouter } from "vue-router";
import { defineStore } from "pinia";
import supabase from "src/config/supabase";
import { useStoreEntries } from "src/stores/storeEntries";
import { useStoreSettings } from "src/stores/storeSettings";
import { useShowErrorMessage } from "src/use/useShowErrorMessage";
import { Notify } from "quasar";

export const useStoreAuth = defineStore("auth", () => {
  /*
    state
  */

  const userDetailsDefault = {
    id: null,
    email: null,
  };

  const userDetails = reactive({
    ...userDetailsDefault,
  });
  const seenGreeting = ref(false);

  /*
    actions
  */

  const init = () => {
    const router = useRouter(),
      storeEntries = useStoreEntries(),
      storeSettings = useStoreSettings();

    supabase.auth.onAuthStateChange((event, session) => {
      console.log("Auth event: ", event);
      console.log("Session: ", session);
      if (event === "SIGNED_IN" || event === "INITIAL_SESSION") {
        if (session !== null) {
          userDetails.id = session.user.id;
          userDetails.email = session.user.email;
          router.push("/");
          storeSettings.getProfile();
          storeEntries.loadEntries();
          if (seenGreeting.value === false) showGreeting(session.access_token);
        }
      } else if (event === "SIGNED_OUT") {
        Object.assign(userDetails, userDetailsDefault);
        router.replace("/auth");
        storeSettings.resetProfile();
        storeEntries.unsubscribeEntries();
        storeEntries.clearEntries();
        seenGreeting.value = false;
      }
    });
  };
  const showGreeting = async (access_token) => {
    const myHeaders = new Headers();
    myHeaders.append("Authorization", `Bearer ${access_token}`);
    myHeaders.append("Content-Type", "application/json");

    const raw = JSON.stringify({
      greeting: "word",
    });

    const requestOptions = {
      method: "POST",
      headers: myHeaders,
      body: raw,
      redirect: "follow",
    };

    try {
      const response = await fetch(
        `${process.env.SUPABASE_URL}/functions/v1/greeting`,
        requestOptions,
      );
      const result = await response.json();
      Notify.create({
        position: "top",
        message: result.greeting + ", " + userDetails.email + "!",
      });
      seenGreeting.value = true;
    } catch (error) {
      console.error(error);
    }
  };
  const registerUser = async ({ email, password }) => {
    let { data, error } = await supabase.auth.signUp({
      email,
      password,
    });

    if (error) useShowErrorMessage(error.message);
    // if (data) console.log('data: ', data)
  };

  const loginUser = async ({ email, password }) => {
    let { data, error } = await supabase.auth.signInWithPassword({
      email,
      password,
    });

    if (error) useShowErrorMessage(error.message);
    // if (data) console.log('data: ', data)
  };

  const logoutUser = async () => {
    let { error } = await supabase.auth.signOut();
    if (error) useShowErrorMessage(error.message);
    // else console.log('User was signed out')
  };

  /*
    return
  */

  return {
    // state
    userDetails,

    // actions
    init,
    registerUser,
    loginUser,
    logoutUser,
  };
});
