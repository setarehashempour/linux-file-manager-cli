# Linux File Manager & Automation CLI Tool

A lightweight, interactive Bash script designed to automate file organization and directory management in Linux environments. This tool was developed as part of the **Operating Systems** course project.

## 🚀 Features

1. **Automated Directory Cleanup:** Automatically scans the current working directory and categorizes files into structured folders (`Documents`, `Images`, `Videos`, `Musics`, `Archives`) based on their specific file extensions.
2. **Smart File Relocation:** Dynamically searches for a specific file, creates a dedicated folder named after that file (excluding the extension), and moves it there safely.
3. **Safe File Deletion:** Searches for a requested file in the directory tree and completely removes it after locating it.
4. **Metadata & Status Inspection:** Checks if a file exists, analyzes whether it is empty or contains data, and displays its detailed size, permissions, and metadata using native Linux core utilities.

## 🛠️ Built With

* **Shell:** Bash Scripting
* **Linux CLI Utilities:** `find`, `basename`, `cut`, `ls`, `mkdir`, `mv`, `rm`

## 📦 Installation & Usage

### 1. Clone the repository
```bash
git clone [https://github.com/setarehashempour/linux-file-manager-cli.git](https://github.com/setarehashempour/linux-file-manager-cli.git)
cd linux-file-manager-cli
```

### 2. Grant execution permission to the script
```bash
chmod +x organize.sh
```

### 3. Run the tool
```bash
./organize.sh
```
