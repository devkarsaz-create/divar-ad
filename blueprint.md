
# Blueprint: Divar Ad App (PWA) - "Midnight Luxury"

## 1. Project Overview

A modern, performant, and visually stunning Progressive Web App (PWA) for browsing and posting ads, inspired by Divar. The application is built with Vue.js (Composition API), Nuxt.js, and Tailwind CSS. The current iteration, "Midnight Luxury", focuses on a world-class, futuristic user experience with a deep dark, metallic, and 3D-esque theme.

---

## 2. Implemented Features & Design (Current State)

### Core Architecture:
- **Framework**: Vue.js with Nuxt 3 for SSR.
- **Styling**: Tailwind CSS, meticulously configured for the "Midnight Luxury" theme.
- **PWA**: Configured for an installable, app-like experience.

### UI/UX & Design Philosophy: "Midnight Luxury"
- **Theme**: A sophisticated, ultra-dark, high-contrast theme. Uses a `metal-darkest` (#0D0E12) base for a deep, immersive experience, accented by a vibrant `brand-purple`.
- **Atmosphere**: Futuristic, spatial, and luxurious. Achieved through floating elements, glassmorphism, multi-layered shadows, and subtle glowing effects.
- **Interactivity**: Rich, meaningful micro-interactions that create a dynamic, engaging, and premium user experience.
- **Layout**: Spacious, clean, and intuitive, with a strong focus on visual hierarchy.

### Key Components & Features:

- **`BottomNav.vue` (The Crown Jewel)**:
    - **Design**: Reimagined as a **floating, 3D glassmorphism** element that hovers above the content.
    - **Interaction**: Features the **"Energy Capsule" effect**—a beautifully animated, glowing capsule that smoothly slides behind the active icon, providing a stunning visual cue. It uses a custom `cubic-bezier` timing function for a satisfying, spring-like motion.
    - **Aesthetics**: The combination of blur, transparency, a neon-like border, and deep shadows creates a truly futuristic and spatial feel.

- **`AdCard.vue` & `AdList.vue`**:
    - **Dual-Mode Masterpiece**: Offers two distinct, high-art view modes:
        - **Grid View**: Features a **3D Tilt Effect** on mouse hover, creating a sense of depth and interactivity. Uses glassmorphism for content overlays.
        - **List View**: A cinematic horizontal layout with a **zoom-and-pan image effect** on hover.
    - **Theme Harmony**: The cards are perfectly integrated into the ultra-dark theme, appearing to float above the deep-space background.

- **General Theme & Layout (`main.css`)**:
    - **Ultra-Dark Background**: The entire app `body` is set to `metal-darkest` for maximum depth and contrast.
    - **Subtle Noise Texture**: A very subtle noise layer adds a tactile, premium feel to the background.

- **`AppHeader.vue` & `SearchBar.vue`**:
    - **Cohesive Design**: Both components have been refined to seamlessly blend into the "Midnight Luxury" theme, with updated styles that complement the ultra-dark background and floating navigation.

- **`ViewToggle.vue`**: Custom-styled component to switch between ad list views.

---

## 3. Current Task: Project Midnight Luxury

**Objective:** To completely overhaul the application's theme and key UI components to create a unified, breathtaking, and futuristic user experience, as per the user's detailed request for a "masterpiece".

**Status:** <span style="color: limegreen; font-weight: bold;">COMPLETED</span>

### Action Plan:

1.  **[✓] Deepen the Theme (`main.css`)**: 
    - **Action**: Changed the global background color to `metal-darkest`.
    - **Outcome**: Established a deep, immersive, and high-contrast foundation for the entire app.

2.  **[✓] Recreate `BottomNav.vue` as a Masterpiece**:
    - **Action**: Completely rebuilt the component into a floating, glassmorphism-style bar.
    - **Feature**: Invented and implemented the "Energy Capsule" animation for the active item.
    - **Outcome**: Transformed the primary navigation into the artistic centerpiece of the application.

3.  **[✓] Harmonize Core Components**:
    - **Action**: Updated `AppHeader.vue` and `SearchBar.vue` to align with the new ultra-dark and luxurious aesthetic.
    - **Outcome**: Ensured a consistent and polished look and feel across all major UI elements.

4.  **[✓] Document the Revolution (`blueprint.md`)**:
    - **Action**: Thoroughly documented the "Midnight Luxury" overhaul, detailing the new design philosophy and key component features.
    - **Outcome**: The project blueprint now accurately reflects the application's new, elevated artistic direction.
