# AD ASTRA

**AD ASTRA** is a tick-based space colony management game about building an interstellar economy under pressure. You begin with one home world, expand into nearby star systems, build specialized colonies, trade resources through a moving market, research constellation-shaped technologies, and keep the empire alive through debt, unrest, and economic shocks.

Korean guide: [README.ko.md](README.ko.md)

---

## Run the Demo

(1) Pull Docker Image
```bash
docker pull --platform linux/amd64 team12/adastra:0.1.0
```

(2) Run the app

Option A — Run automatically:
```bash
bash scripts/run.sh
```
This starts the container and immediately launches `build/main`.

Option B — Enter the container first, then run manually:
```bash
bash scripts/run_shell.sh
```
This starts the container and drops you into a bash shell. From inside the container, you can run the app yourself:

```bash
./build/main
```

(3) Web browser
http://localhost:6080/vnc.html

---

## What Kind of Game Is This?

AD ASTRA is a non-combat 4X-style economic colony game.

- **Explore** nearby star systems.
- **Expand** by colonizing planets within navigation range.
- **Exploit** planetary resources through buildings and trade.
- **Endure pressure** from unrest, debt, market shocks, sanctions, piracy, and sector crises.

There are no tactical battles. The challenge is to grow fast enough to become powerful without letting maintenance, interest, unrest, or shortages break the empire.

---

## Campaign Goal

The campaign is evaluated over a fixed tick horizon. A strong run usually has:

- Multiple owned colonies.
- A diversified resource base.
- Stable or recoverable credits.
- Debt that funded productive growth, not collapse.
- Active research progress.
- Trade routes that convert surplus into credits.
- Manageable unrest and crisis pressure.

The best score comes from growth, stability, production, technology, and financial discipline together.

---

## Main Map

The main view is a 3D star map. Planet nodes, grid lines, labels, and route indicators show the shape of the empire.

Map controls:

| Input | Action |
| --- | --- |
| Left click planet | Select / inspect planet |
| Left drag | Rotate map |
| Right or middle drag | Pan map |
| Mouse wheel | Zoom |
| Esc | Close overlay or open pause menu |
| Esc again from pause menu | Quit |

Use the map to understand distance, expansion options, route structure, and colony status.

---

## Resources

The empire runs on resources:

- **Credits (CR)**: money for construction, colonization, market purchases, loans, and crisis responses.
- **Iron (Fe)**: industrial raw material.
- **Food (Fd)**: supports colonies and stability.
- **Fuel (Fu)**: supports expansion, logistics, and fleets.
- **Rare materials (Ra)**: valuable strategic input.
- **Energy (En)**: required by advanced facilities.
- **Alloy (Al)**: advanced industrial output.
- **Research (RP)**: unlocks technologies.

Each planet has different strengths. Good play means matching buildings to local richness and using trade to cover weaknesses.

---

## Colonization

Colonization expands your empire, but every new colony adds costs and risk.

Before colonizing, check:

- Distance and navigation range.
- Colonization fee.
- Future maintenance.
- Resource value of the target.
- Current credit reserve.
- Whether the planet solves a real bottleneck.

Do not expand only because a planet is available. Expand because the planet helps the empire survive and scale.

---

## Buildings

Buildings define what each colony does.

Common roles:

- **Mines and extractors** produce raw materials.
- **Farms** produce food.
- **Industrial buildings** convert resources into higher-value output.
- **Research buildings** generate technology progress.
- **Trade buildings** improve market value and exports.
- **Logistics buildings** support routes and operational reach.

Most buildings have upkeep. A facility that looks profitable later can be dangerous if built before the economy can support it.

---

## Macro Builder

The Macro Builder helps choose construction across the whole empire. Instead of opening each planet manually, use it to compare:

- Build cost.
- Missing resources.
- Expected value.
- Candidate planets.
- Strategic usefulness.

This is the main tool for mid-game construction planning.

---

## Market and Trade

The market converts resources into flexibility.

Good habits:

- Sell surplus when you need liquidity.
- Buy bottleneck resources only when they unlock a useful action.
- Keep reserves before large construction or colonization.
- Watch market shocks and price changes.

Trade is powerful, but depending on imports forever is risky.

---

## Debt and Credit Rating

Loans are not automatic failure. Debt can fund expansion or infrastructure, but it creates interest burden and maturity pressure.

Watch:

- Current credits.
- Total debt.
- Interest burden.
- Credit rating.
- Reserve forecasts.

Good debt creates future income. Bad debt only delays collapse.

---

## Research

The technology tree is drawn as constellations. Nodes move through locked, available, researching, and completed states.

Research can:

- Improve production.
- Extend colonization range.
- Unlock buildings.
- Strengthen market and logistics systems.
- Reduce bottlenecks.

Pick research based on what is stopping your next profitable action.

---

## Events and Pressure

AD ASTRA creates tension through economic and social pressure:

- Unrest and revolt risk.
- Asteroid strikes.
- Trade booms and crashes.
- Piracy.
- Sanctions.
- Rival trade blocs.
- Sector crises.

Some pressure events can be answered with patrols, envoys, or relief. These responses cost resources, but ignoring problems can be worse.

---

## Tutorial

The tutorial behaves like a guided slideshow. It advances only enough simulation ticks to show the current concept, then waits for player input.

Tutorial controls:

- **OK / NEXT**: continue.
- **Skip**: skip the current tutorial step.
- **End**: end the tutorial.

Use the tutorial if the map, market, construction, or research screens feel unfamiliar.

---

## Hotkeys

| Key | Action |
| --- | --- |
| Space | Pause / resume simulation |
| 1-5 | Set simulation speed |
| T | Technology |
| M | Market |
| B | Macro Builder |
| F | Fleet / logistics |
| U | Settings |
| H | Tutorial |
| Q | Quit |

---

## Strategy Tips

1. Expand for resources you need, not just planet count.
2. Keep a credit reserve before large projects.
3. Use the market to bridge shortages, not replace production.
4. Research toward the current bottleneck.
5. Use debt when it funds future income.
6. Stop unrest early.
7. Use the Macro Builder once you own several planets.

---
