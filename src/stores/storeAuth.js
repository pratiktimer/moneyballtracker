import { defineStore } from "pinia";
import supabase from "src/config/supabase";
import { useShowErrorMessage } from "src/use/useShowErrorMessage";

export const useStoreAuth = defineStore("auth", () => {
  /*
    actions
  */
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
    registerUser,
    logOutUser,
  };
});
