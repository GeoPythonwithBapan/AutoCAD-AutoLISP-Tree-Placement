# AutoCAD AutoLISP – Automated Tree Block Placement

An AutoLISP routine for automatically placing tree blocks at selected point locations in AutoCAD.

This tool is designed to reduce repetitive manual work in GIS/CAD workflows where tree symbols need to be placed at multiple existing point locations.

---

## 🚀 Overview

In many GIS and CAD projects, point locations are already available in an AutoCAD drawing. These points may need to be represented using standardized symbols or blocks, such as tree symbols.

Manually inserting a tree block at every point can become repetitive and time-consuming when working with a large number of locations.

This AutoLISP routine automates the process by reading the coordinates of selected points and inserting a predefined `TREE` block at those locations.

### Workflow

**Select Points → Run PT2BLK → Enter Scale → Automatic TREE Block Placement**

---

## 🎯 Problem

The traditional manual workflow requires repeatedly:

1. Identifying the required point locations
2. Inserting the tree block
3. Setting the required scale
4. Placing the block at the correct location
5. Repeating the process for every point

For a large number of points, this becomes a repetitive CAD production task.

---

## 💡 Solution

The `PT2BLK` AutoLISP routine automates the repetitive tree-block placement process.

The routine:

- Accepts selected `POINT` entities
- Supports `AECC_COGO_POINT` entities
- Reads the coordinates of each selected point
- Inserts the `TREE` block at each point location
- Allows the user to specify the insertion scale
- Uses `1.0` as the default scale if no scale is provided
- Processes multiple selected points automatically

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
| `Before.png` | Input showing existing point locations |
| `After.png` | Output showing automatically placed tree blocks |

---

## ⚙️ How to Use

### 1. Prepare the Tree Block

Before running the routine, make sure a block named:

```text
TREE
