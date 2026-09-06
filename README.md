# AutoCAD AutoLISP – Automated Tree Block Placement

An AutoLISP routine for converting selected point locations into tree blocks automatically in AutoCAD.

This tool is designed to reduce repetitive manual work in GIS/CAD workflows where tree symbols need to be placed at multiple existing point locations.

## 🚀 Overview

In GIS and CAD projects, point locations may already be available in an AutoCAD drawing. These points may need to be represented using a standardized tree block.

Manually inserting a tree block at every point can become repetitive, especially when working with a large number of locations.

This AutoLISP routine automates the process by inserting a predefined `TREE` block at the selected point locations.

### Workflow

**Select Points → Run PT2BLK → Enter Scale → Automatic TREE Block Placement**

---

## 🎯 Problem

Manual tree-block placement generally requires:

1. Identifying the required point locations
2. Inserting the tree block
3. Setting the required scale
4. Repeating the process for every point

This becomes inefficient when many point locations are involved.

---

## 💡 Solution

The `PT2BLK` AutoLISP routine automates the repetitive block-placement process.

The routine:

- Accepts selected `POINT` entities
- Supports `AECC_COGO_POINT` entities
- Reads the coordinates of each point
- Inserts the `TREE` block at each point location
- Allows the user to define the insertion scale
- Uses `1.0` as the default scale if no value is provided

---

## 🛠️ Technology

- AutoCAD
- AutoLISP
- AutoCAD Blocks
- GIS/CAD Workflow Automation

---

## 📂 Project Files

| File | Description |
|------|-------------|
| `TreePlacement_AutoLISP.lsp` | AutoLISP routine for automated tree block placement |

---

## ⚙️ How to Use

### 1. Prepare the Tree Block

Before running the routine, make sure a block named:

```text
TREE
