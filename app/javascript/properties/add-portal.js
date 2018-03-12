function bindButton (event) {
  const portal = document.getElementById("portal_id");
  const button = document.getElementById("selectPortal");
  button.addEventListener("change", setPortalId);
}

function setPortalId() {
  const button = document.getElementById("selectPortal");
  const pid = button.value;
  console.log(pid);
  const portalIdHTML = `<input type="hidden", name = "portal_id", value=${pid}>`;
  const insert_id = document.getElementById("portal_id");
  insert_id.innerHTML = portalIdHTML;
}

export { bindButton };

