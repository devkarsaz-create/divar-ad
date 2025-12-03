
# Blueprint: Divar Ad App (PWA) - "Project Genesis"

## 1. Project Overview

A modern, performant, and visually stunning Progressive Web App (PWA) for browsing and posting ads, inspired by the best features of Divar and Sheypoor. The application is being rebuilt from the ground up under "Project Genesis" to feature a multi-page architecture and a highly polished, professional user interface.

**Core Mandate:** To not just replicate the provided UI mockups, but to elevate them into a more beautiful, modern, fluid, and complete user experience.

---

## 2. Design Philosophy: "Genesis Azure" Theme

- **Theme**: A sophisticated, ultra-dark, yet clean and minimal theme. It uses a `metal-darkest` (#0D0E12) base for a deep, immersive experience.
- **Accent Color**: A vibrant, modern **Azure Blue** is used as the primary accent color for interactive elements, highlights, and branding, giving a sharp, technological, and premium feel.
- **Atmosphere**: Professional, clean, and intuitive. The focus is on excellent typography, generous spacing, and smooth, subtle animations.
- **UI Metaphor**: A blend of flat design principles with depth created through careful use of shadows and layering, ensuring a modern and uncluttered interface.

---

## 3. Application Architecture (Multi-Page SPA)

The application will be structured as a Single Page Application with multiple, distinct pages managed by Nuxt's file-based routing.

### Page Structure:
- **`pages/index.vue` (Home):** The main landing page. It will feature the search bar, a grid of categories, and a list of recent or featured ads.
- **`pages/new.vue` (Submit Ad):** A dedicated page containing a form for users to create and submit new advertisements.
- **`pages/chat.vue` (Messages):** A page to display a list of user conversations. Will initially be built with a skeleton loader.
- **`pages/account.vue` (My Account):** A user profile page with a menu for accessing personal ads, settings, and other account-related information.

### Global Components:
- **`components/BottomNav.vue`:** A full-width, fixed navigation bar providing access to the main pages of the app.
- **`components/AppHeader.vue`:** A clean header, likely contextual based on the current page.
- **Modals:** Reusable modal components for actions like Login/Authentication and City Selection.

---

## 4. Current Task: Genesis - Phase 1 (Foundation & Structure)

**Objective:** To lay the foundational structure for the new multi-page application based on the user-provided images and the "Genesis" plan.

**Status:** <span style="color: dodgerblue; font-weight: bold;">In Progress...</span>

### Action Plan:

1.  **[✓] Update `blueprint.md`:** The project's master plan has been updated to reflect the new "Project Genesis" direction, architecture, and design philosophy.

2.  **[ ] Restructure for Routing:**
    - **Action**: Create the directory structure (`pages/`) and initial files (`index.vue`, `new.vue`, etc.).
    - **Action**: Modify `app.vue` to use `<NuxtPage />` to render the active page.

3.  **[ ] Re-theme `BottomNav.vue`:**
    - **Action**: Redesign the bottom navigation bar to align with the "Genesis Azure" theme (clean, dark, azure blue accent).
    - **Action**: Convert its buttons to `<NuxtLink>` to enable client-side routing between pages.

4.  **[ ] Build `pages/index.vue`:**
    - **Action**: Create a new `CategoryGrid.vue` component.
    - **Action**: Assemble the home page using `SearchBar`, `CategoryGrid`, and `AdList`.

5.  **[ ] Build Subsequent Pages:**
    - **Action**: Sequentially build out the `new`, `chat`, and `account` pages with their required components.
