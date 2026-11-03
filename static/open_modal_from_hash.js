// The page is built after it loads, so the browser has already looked for the #hash target
// before the modal exists and never marks it :target. Re-apply the hash once the modal shows up.
(function () {
  const hash = window.location.hash;

  if (!hash || hash === "#close") return;

  const observer = new MutationObserver(function () {
    if (!document.getElementById(hash.slice(1))) return;

    observer.disconnect();

    // Setting the same hash again does nothing, so hop away and back; replace() keeps the back button clean
    window.location.replace("#close");
    window.location.replace(hash);
  });

  observer.observe(document.documentElement, { childList: true, subtree: true });
})();
