export function useNonReactiveCopy(message) {
  return JSON.parse(JSON.stringify(message));
}
