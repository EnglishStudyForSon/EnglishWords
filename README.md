# 超级玛丽 · 顶字母学单词

Super Mario–style English learning game where Mario headbutts letter blocks to collect letters, grows a magic mushroom to reach the clouds, and progresses through randomized word sessions.

## How to Play

1. Click **开始冒险** on the menu
2. Control Mario with **Arrow keys / WASD** (keyboard) or **on-screen ◀ ▶ buttons** (touch)
3. **Jump** with **Space / Up / W** or tap the **JUMP** button
4. Headbutt letter blocks in the **correct order** to spell the word shown at top
5. Each correct letter spawns a seed → **watering animation** → mushroom grows
6. Wrong letter → **hammer animation** → mushroom shrinks (too many errors = game over)
7. When the mushroom is tall enough, **jump onto its cap**, then **headbutt the clouds** at the top to complete the word
8. Review your progress in the **right-side word list** (✅ correct / ❌ failed)

## Features

- **131 English words** with Chinese translations (food, animals, places, jobs, etc.)
- **Pixel-art Mario** with run/jump/idle animations and scrolling background
- **Mushroom growth** system — grows with correct letters, shrinks on mistakes
- **Goal clouds** — reach the sky to complete each word
- **Sound effects** via Web Audio API and **voice pronunciation** via Web Speech API
- **Touch + Keyboard** controls with multi-touch virtual gamepad
- **Screen adaptive** — fills any viewport (mobile / tablet / desktop)
- **Full-screen menu and result panel** with score tracking

## Controls

| Action | Keyboard | Touch |
|--------|----------|-------|
| Move left | `←` / `A` | ◀ button |
| Move right | `→` / `D` | ▶ button |
| Jump | `↑` / `W` / `Space` | JUMP button (hold for higher jump) |

## File Structure

```
index.html    — Single-file game (Canvas rendering, inline CSS/JS)
README.md     — This file
```

## Technical

- Pure **HTML5 Canvas** rendering, no dependencies
- Inline CSS with `clamp()` + viewport units for responsive layout
- Web Audio API for retro sound effects (square/sine/triangle oscillators)
- Web Speech API for English word/letter pronunciation
- Game loop via `requestAnimationFrame` with delta-time physics
- Word pool stored as a `const` array of `{en, zh}` objects

## Word Sources

Words extracted from `英语单词记忆_新.docx`, covering common English vocabulary with Chinese meanings suitable for elementary/middle school learners.
