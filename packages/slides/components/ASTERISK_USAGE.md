# Asterisk Component Usage Guide

## Overview

The `<Asterisk>` component is a decorative element that displays an asterisk symbol using Slidev's built-in icon system (Material Design Icons). It's fully compatible with the neversink theme's color palette and can be positioned in any corner of your slides.

## Features

- **Color Theme Compatible**: Automatically inherits colors from the slide's `color` frontmatter setting
- **Positionable**: Can be placed in any of the four corners
- **Sizable**: Three size options (small, medium, large)
- **Opacity Control**: Adjustable opacity for subtle effects

## Props

| Prop | Type | Default | Description |
|------|------|---------|-------------|
| `size` | `"small" \| "medium" \| "large"` | `"medium"` | Size of the asterisk |
| `position` | `"lt" \| "rt" \| "lb" \| "rb"` | `"rt"` | Corner position (left-top, right-top, left-bottom, right-bottom) |
| `opacity` | `number \| string` | `1` | Opacity value (0-1). Can be passed as number or string |

## Usage Examples

### Basic Usage

```markdown
---
layout: center
color: sky
---

# My Slide Title

<Asterisk />
```

This will place a medium-sized asterisk in the top-right corner with the sky color scheme.

### Positioning

```markdown
---
layout: center
color: navy-light
---

# Four Corners

<Asterisk position="lt" size="large" />
<Asterisk position="rt" size="large" />
<Asterisk position="lb" size="large" />
<Asterisk position="rb" size="large" />
```

### Size Options

```markdown
---
layout: center
color: zinc-light
---

# Size Examples

<Asterisk size="small" position="lt" />
<Asterisk size="medium" position="rt" />
<Asterisk size="large" position="lb" />
```

### Opacity Control

```markdown
---
layout: center
color: sky
---

# Subtle Effect

<Asterisk position="rb" size="large" opacity="0.3" />
```

### With Two-Column Layout

```markdown
---
layout: two-cols
color: sky
align: cm-cm
---

:: left ::

## Left Column

Content here...

<Asterisk position="rt" size="medium" opacity="0.6" />

:: right ::

## Right Column

Content here...

<Asterisk position="lt" size="medium" opacity="0.6" />
```

### With Cover Layout

```markdown
---
layout: cover
color: zinc-light
background: https://example.com/image.jpg
title: "My Presentation"
---

# Title

<Asterisk position="rb" size="large" opacity="0.4" />

Subtitle or additional content
```

## Color Compatibility

The asterisk component works with all neversink theme colors:

- `sky` - Sky blue tones
- `navy-light` - Light navy tones
- `zinc-light` - Light zinc/gray tones
- `white` - White tones
- And any other neversink color scheme

The component uses `text-current` class, which means it automatically inherits the current text color defined by the neversink theme's CSS variables.

## Technical Details

- **Icon System**: Uses Slidev's built-in Material Design Icons (mdi-asterisk)
- **Icon Name**: `mdi-asterisk` from Material Design Icons
- **Positioning**: Absolute positioning with Tailwind CSS classes
- **Color Inheritance**: Uses `text-current` for automatic theme compatibility
- **Opacity Handling**: Accepts both number and string types, automatically converts to number
- **Transition**: Smooth opacity transition (0.3s ease)
- **Size Scaling**: Uses Tailwind's text sizing utilities (text-2xl, text-4xl, text-6xl)

## Tips

1. **Subtle Branding**: Use low opacity (0.2-0.4) for subtle watermark-like effects
2. **Emphasis**: Use full opacity and larger sizes for decorative emphasis
3. **Balance**: When using multiple asterisks, maintain visual balance
4. **Layouts**: Works great with cover, center, two-cols, and other neversink layouts
5. **Performance**: SVG-based, so it scales perfectly at any size

## Example Slides

See the example slides in `pages/ar1205/w1w.md` for live demonstrations of the asterisk component in various configurations.
