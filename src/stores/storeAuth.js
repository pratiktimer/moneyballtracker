import { defineStore } from "pinia";
import supabase from "src/config/supabase";
import { useShowErrorMessage } from "src/use/useShowErrorMessage";

export const useStoreAuth = defineStore("auth", () => {
  /*
    actions
  */

  const init = () => {
    supabase.auth.onAuthStateChange((event, session) => {
      console.log(event, session);

      if (event === "INITIAL_SESSION" || event === "SIGNED_IN") {
        // handle initial session
      } else if (event === "SIGNED_OUT") {
        // handle sign out event
      }
    });
  };
  const registerUser = async ({ email, password }) => {
    let { data, error } = await supabase.auth.signUp({
      email,
      password,
    });

    if (error) {
      useShowErrorMessage(error.message);
      return;
    }

    if (data) {
      console.log("User registered:", data);
    }
  };

  const loginUser = async ({ email, password }) => {
    let { data, error } = await supabase.auth.signInWithPassword({
      email,
      password,
    });

    if (error) {
      useShowErrorMessage(error.message);
      return;
    }

    if (data) {
      console.log("User logged in:", data);
    }
  };
  const logOutUser = async () => {
    let { error } = await supabase.auth.signOut();

    if (error) {
      useShowErrorMessage(error.message);
      return;
    }

    console.log("User logged out");
  };

  /*
    return
  */

  return {
    //actions
    init,
    registerUser,
    loginUser,
    logOutUser,
  };
});
