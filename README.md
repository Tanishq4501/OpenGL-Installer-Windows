# 🚀 OpenGL & FreeGLUT Setup for Windows (MinGW-w64)

This guide helps you set up **MinGW-w64 and FreeGLUT** for OpenGL development on Windows.

✅ **Checks if MinGW is installed before proceeding**  
✅ **Ensures the script runs as Administrator**  
✅ **Automatically copies FreeGLUT files to the correct folders**  
✅ **Provides a test program to verify installation**  

---

## 📥 Step 1: Download Required Files

Before running the installation script, **download these files**:

### 🔹 **1. Download MinGW-w64**
📌 [Download MinGW-w64](https://github.com/brechtsanders/winlibs_mingw/releases/download/14.2.0posix-19.1.7-12.0.0-msvcrt-r3/winlibs-x86_64-posix-seh-gcc-14.2.0-mingw-w64msvcrt-12.0.0-r3.zip)  
➡ Select the **x86_64-posix-seh** version (latest GCC).  

### 🔹 **2. Download FreeGLUT**
📌 [Download FreeGLUT for MinGW](https://www.transmissionzero.co.uk/files/software/development/GLUT/freeglut-MSVC.zip)  
➡ Select **MinGW Development Libraries** version.  

---

## 🔧 Step 2: Install MinGW-w64
1. **Extract the `mingw-w64.zip`** file.  
2. **Move the extracted folder** to `C:\mingw-w64`.  
3. **Add MinGW to System PATH**:
   - Press `Win + R`, type `sysdm.cpl`, and press **Enter**.
   - Go to **Advanced** → **Environment Variables**.
   - Under **System Variables**, find `Path` and click **Edit**.
   - Click **New**, then add:  
     ```
     C:\mingw-w64\bin
     ```
   - Click **OK**, then restart your PC.

---

## 🚀 Step 3: Install FreeGLUT Automatically

### **1️⃣ Extract FreeGLUT Files to `C:\freeglut`**
Before running the script, **you must manually extract FreeGLUT** into `C:\freeglut`.  
Your folder structure should look like this:

C:\freeglut
├── bin
│ ├── freeglut.dll ├── lib
│ ├── freeglut.lib ├── include
│ ├── GL
│ ├── freeglut.h


### **2️⃣ Run the Script as Administrator**
1. **Right-click `install.bat` → Select "Run as Administrator"**.  
   - The script will:
     - **Check if MinGW is installed**.
     - **Check if FreeGLUT is extracted correctly**.
     - **Copy FreeGLUT files to `C:\mingw-w64\`.**  

---

## ✅ Step 4: Verify Installation

### **1️⃣ Check if MinGW is Installed**
Run the following command in **Command Prompt (cmd)**:
```sh
g++ --version
