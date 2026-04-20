# onboarding-architect

A portable Claude Code skill repo for context-aware onboarding analysis and implementation.

## Structure

```text
.claude/
  CLAUDE.md
  settings.json
  hooks/
    onboarding-architect-validate.sh
skills/
  onboarding-architect/
    SKILL.md
    templates/
      onboarding-report.md
      screen-spec.md
```

## Included

- `skills/onboarding-architect/SKILL.md`: reusable skill definition
- `.claude/CLAUDE.md`: project-wide reinforcement
- `.claude/settings.json`: hook registration
- `.claude/hooks/onboarding-architect-validate.sh`: light validation hook
- `templates/`: optional working templates for analysis and screen specs

## Usage

Ask Claude Code things like:

- `Use onboarding-architect to analyze this repo’s onboarding gaps.`
- `Use onboarding-architect to scaffold a React Native onboarding flow.`
- `Use onboarding-architect to infer the aha moment and propose a shorter activation flow.`

## Notes

- The hook uses `jq`, so your environment should have it installed.
- The hook is intentionally lightweight and only flags obvious generic placeholder copy.
