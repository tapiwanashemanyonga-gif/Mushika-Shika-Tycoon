# Mushika Shika Tycoon: Harare Hustle

An Android-first transport and driving tycoon game inspired by Zimbabwean urban commuter transport.

## Cloud development status

This repository includes a GitHub Codespaces development-container definition with .NET 8, Node.js 20, and the `godot-cli` setup utility.

**Important:** this does not by itself install or launch the Godot Editor, create the game, or complete the AI Game Developer / Codex MCP authorization. The Godot MCP integration documented at AI Game Developer requires a compatible Godot 4.3–4.5 C#/.NET editor project, the `godot_mcp` addon, a running editor, and authorization. Those requirements still need to be completed and verified.

## Planned first milestone

- 3D vehicle driving and follow camera
- Fictional Harare-inspired streets and buildings
- Passenger pickup/drop-off missions
- Fare earnings and cash HUD
- Mobile touch controls
- Android export and automated checks

## Development approach

- Keep all source changes in this repository.
- Prefer free tools and GitHub Actions.
- Verify builds and tests before claiming success.
- Do not add advertising, payments, or online accounts to the first prototype.

## Next setup step

Open this repository in GitHub Codespaces and allow the development container to finish building. The container prepares .NET and Node tooling; it is not a substitute for a running Godot Editor. See the [AI Game Developer Godot setup guide](https://ai-game.dev/engines/godot) for the editor addon and Codex MCP steps.
