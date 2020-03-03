//= require govuk_tech_docs
//= require google_tag_manager
//= require dist/govwifi-shared-frontend.js

window.addEventListener("DOMContentLoaded", function() {
  window.GovWifi.cookies.checkCookiePolicy();

  if (!GovWifi.cookies.isCategoryAllowed("tracking")) {
    window["ga-disable-UA-127779891-1"] = true;
  }
});
