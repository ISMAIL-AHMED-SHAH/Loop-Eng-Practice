# The design decision
The page is organized as a yard plan, not a résumé: the nav is fixed like a block-routing panel, and the four roles sit in a grid of numbered, bordered slots — ordered by position, not by date — because assigning fixed slots to moving inventory is literally Ismail's job.

## Why this person
Ismail has been a Yard Planner at KICT since June 2016: his actual daily work is assigning containers to fixed positions in a yard and coordinating how they move through it. His prior role at Sea Span was also "managing empty container yard operations" and "inventory tracking" — the same discipline, one level down. A page organized by position instead of chronology is not a metaphor borrowed from outside his material; it is what he does, restated as a layout rule.

## How the page carries it out
- The `nav` is fixed/sticky and labelled like a set of block routes (About, Roles, Skills, Contact) rather than a generic menu — it is the thing that tells you where you are, the way a yard controller routes traffic to a block.
- `#projects` is a CSS grid of four bordered cards ("slots"), each carrying a small slot tag (`SLOT 01`, `SLOT 02`…) instead of a date range. This is a direct, deliberate refusal of the CV tell the spec calls out: dates-in-a-sidebar. Order runs from Ismail's current role (KICT) to earliest, i.e. by standing/position, and the slot tag — not a date — is the thing printed first on each card.
- The hero states role and current position in one line (Yard Planner, KICT, since 2016) sized with `--text-2xl`/`clamp()` against a `min-height: 100svh` band, so it reads as a status line, not a title page.
- Hover/focus on a slot card lifts its border to `--accent` and shows the slot tag more prominently — the one place motion is load-bearing: it shows which slot you're pointing at, echoing how a real yard assignment gets highlighted, not decoration for its own sake.
- At 390px: the grid drops to one column but every card **keeps its border and slot tag** — stacking never demotes a slot into a plain paragraph. The nav collapses to icons/short labels but stays fixed, so "you are here" survives the width change.

## Tokens
```css
:root {
  --bg: #F5F4F0;
  --fg: #1B1D21;
  --accent: #A34000;      /* --fg on --bg = 15.3:1, --accent on --bg = 5.8:1 — both computed, both pass 4.5:1 */

  --text-xs:   0.72rem;
  --text-sm:   0.86rem;
  --text-base: 1.06rem;
  --text-lg:   1.35rem;
  --text-xl:   clamp(2rem, 5vw, 3.4rem);
  --text-2xl:  clamp(3rem, 11vw, 8.5rem);

  --space-1: .3rem;
  --space-2: .6rem;
  --space-3: 1.1rem;
  --space-4: 2rem;
  --space-5: 3.5rem;
  --space-6: 7rem;

  --measure: 47ch;   /* renders ~56-69 characters on this stack, inside the 45-75 promise */
}
```

### Contrast computation (shown, not borrowed)
`--fg` (#1B1D21) on `--bg` (#F5F4F0): linearised luminances L_bg ≈ 0.9044, L_fg ≈ 0.0122 → ratio = (0.9044+0.05)/(0.0122+0.05) ≈ **15.3:1**.

`--accent` (#A34000) on `--bg` (#F5F4F0): L_accent ≈ 0.1145 → ratio = (0.9044+0.05)/(0.1145+0.05) ≈ **5.8:1**.

Both clear the 4.5:1 floor with margin, computed against the actual `--bg` shipped, not a generic white.
