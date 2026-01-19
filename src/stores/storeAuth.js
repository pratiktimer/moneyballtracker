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

  /*
    return
  */

  return {
    //actions
    registerUser,
  };
});
