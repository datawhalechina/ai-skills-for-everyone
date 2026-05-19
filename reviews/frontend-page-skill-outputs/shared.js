function setupHubPage() {
  const root = document.querySelector("[data-hub-page]");
  if (!root) return;
  const buttons = Array.from(root.querySelectorAll("[data-category-filter]"));
  const search = root.querySelector("[data-search]");
  const cards = Array.from(root.querySelectorAll("[data-card]"));
  const empty = root.querySelector("[data-empty]");
  let active = "all";

  function apply() {
    const query = (search?.value || "").trim().toLowerCase();
    let shown = 0;
    cards.forEach((card) => {
      const category = card.getAttribute("data-category") || "";
      const text = card.textContent.toLowerCase();
      const matchCategory = active === "all" || category === active;
      const matchQuery = !query || text.includes(query);
      const visible = matchCategory && matchQuery;
      card.style.display = visible ? "" : "none";
      if (visible) shown += 1;
    });
    if (empty) empty.style.display = shown ? "none" : "block";
  }

  buttons.forEach((button) => {
    button.addEventListener("click", () => {
      active = button.getAttribute("data-category-filter") || "all";
      buttons.forEach((item) => item.classList.toggle("active", item === button));
      apply();
    });
  });
  search?.addEventListener("input", apply);
  apply();
}

function setupConsolePage() {
  const root = document.querySelector("[data-console-page]");
  if (!root) return;
  const riskButtons = Array.from(root.querySelectorAll("[data-risk-filter]"));
  const commands = Array.from(root.querySelectorAll("[data-risk]"));
  const status = root.querySelector("[data-action-status]");
  let active = "all";

  function applyRisk() {
    commands.forEach((command) => {
      const risk = command.getAttribute("data-risk");
      command.style.display = active === "all" || active === risk ? "" : "none";
    });
  }

  riskButtons.forEach((button) => {
    button.addEventListener("click", () => {
      active = button.getAttribute("data-risk-filter") || "all";
      riskButtons.forEach((item) => item.classList.toggle("active", item === button));
      applyRisk();
    });
  });

  root.querySelectorAll("[data-decision]").forEach((button) => {
    button.addEventListener("click", () => {
      if (!status) return;
      const decision = button.getAttribute("data-decision");
      const command = button.closest("[data-risk]")?.querySelector("summary")?.textContent?.trim() || "命令";
      status.textContent = decision === "allow" ? `已允许：${command}` : `已拒绝：${command}`;
    });
  });

  applyRisk();
}

document.addEventListener("DOMContentLoaded", () => {
  setupHubPage();
  setupConsolePage();
});
