# content.md — words for the page

Every checkable fact below traces to `profile.md`. Phrasing, framing, and connective
sentences are voice, not new facts. Order of the four project entries follows the order
they appear under `## Projects` in `profile.md`; the design's "current role first, by
standing" slot order can be applied by the builder without changing any of these words.

---

## hero (`#hero`)

**h1:** ISMAIL AHMED

**p:** Yard Planner at KICT, keeping Karachi's container terminal moving since 2016.

*(Optional secondary line, not required by M11 but consistent with profile.md line 2 —
use only if the design has room for it, place after the h1/p pair:)*
Container terminal operations and logistics professional.

---

## about (`#about`)

Ismail works as Yard Planner at Karachi International Container Terminal (KICT), a role
he has held since June 2016, coordinating daily container yard operations and inventory.
His path there ran through pharmaceutical sales and marketing, computer-based yard
operations at a second container terminal, and retail — different industries, but each
one asking for the same instinct for keeping a moving inventory in order. That instinct
is what shows up now in how he assigns containers to their place in the yard and tracks
them as they move through it.

*(89 words.)*

---

## projects (`#projects`)

Four `<article>` elements, one per `###` entry under `## Projects` in `profile.md`.

### Article 1

**h3:** Container Yard Planning at KICT

As Yard Planner at Karachi International Container Terminal, I plan where each container
sits in the yard and how it moves from there — coordinating logistics and container
inventory so nothing gets buried behind something it needs to leave before. I've held
this role since June 2016, and it's the daily work everything else on this page grew out
of.

*(~55 words.)*

### Article 2

**h3:** Pharmaceutical Sales & Marketing at Pharmatec

I spent five years at Pharmatec Pvt Ltd, starting as a Sales & Marketing Executive and
moving up to Assistant Area Manager. The work covered market expansion and team
leadership in the pharmaceutical sector — a different industry from container terminals,
but it's where the habit of thinking in systems, not single transactions, started.

*(~50 words. No numbers, team size, or revenue added — profile.md gives none, so none
appear here.)*

### Article 3

**h3:** Container Terminal Operations at Sea Span

At Sea Span Container Terminal I worked as a computer operator, managing empty container
yard operations and coordinating inventory tracking and logistics for container handling.
It's close in spirit to what I do now at KICT — keeping track of where things are and
where they need to go next — but from behind a screen rather than out on the yard floor.

*(~63 words.)*

### Article 4

**h3:** Retail Operations at ALCHEMIST Medical & General Store

For five years I worked in retail at ALCHEMIST Medical & General Store, as a salesperson
handling customer engagement and inventory across medical and general merchandise. It
taught me the ground-level version of what I do now: knowing what's on the shelf, what's
about to run out, and what a customer actually needs before they finish asking.

*(~57 words.)*

---

## skills (`#skills`)

One `<li>` per skill line in `profile.md` — four total, no more, no fewer:

- Microsoft Office (Word, Excel, PowerPoint, Outlook)
- Email and communication
- Typing (45 wpm)
- Languages: English, Urdu, Pashto

---

## contact (`#contact`)

Provide at least one `mailto:` or `https://` link. Suggested content:

- Email: [ismailahmedshahpk@gmail.com](mailto:ismailahmedshahpk@gmail.com)
- Location: Karachi, Pakistan *(plain text, not a link — no URL or phone number exists in
  `profile.md` to attach one to)*

Short lead-in line if the design wants one (voice, no new facts):
"Reach out by email — Karachi, Pakistan."

---

## Notes for the builder (not page content)

- **Ordering:** `profile.md` gives no specific dates for the Pharmatec, Sea Span, or
  ALCHEMIST roles beyond "five years," "five years," and no duration respectively — only
  KICT has a hard date (June 2016). `design.md`'s "current to earliest" order can still be
  followed using KICT first (only role with a confirmed start date); the relative order of
  the other three is not fixed by the source, so keep the order already used above
  (matching `profile.md`'s own listing order) unless you have a documented reason to
  change it.
- **Where profile.md was thin:** the Pharmatec entry ("managing market expansion and team
  leadership") is itself the profile-extractor's own phrasing with no numbers behind it —
  no team size, no revenue, no market figures. I did not add any of my own; do not let the
  build add them either. Certifications are "None held" — no certifications section or
  credential language should appear anywhere on the page. Skills has exactly four lines
  in `profile.md`; the page must show exactly those four, not a padded or split-out list.
- **No new named technologies, employers, or metrics** appear anywhere above beyond what
  `profile.md` states. If the builder wants more content in any section, it should come
  back to this file for more words, not invent them at build time.
