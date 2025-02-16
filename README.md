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
📌 [Download FreeGLUT for MinGW](https://www.transmissionzero.co.uk/files/software/development/GLUT/)  
➡ Select **freeglut-MSVC-3.0.0-2.mp.zip or any MSVC release** version.  

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

### **1. Extract FreeGLUT Files to `C:\freeglut`**
Before running the script, **you must manually extract FreeGLUT** into `C:\freeglut`.  
Your folder structure should look like this:

C:\freeglut
├── bin
│ ├── freeglut.dll ├── lib
│ ├── freeglut.lib ├── include
│ ├── GL
│ ├── freeglut.h

***-------------------- OR -----------------------------------***
### **2. **Extract freeglut.zip** anywhere.**
   **Copy these files**:
     - freeglut.dll → C:\Windows\System32
     - freeglut.lib → C:\mingw-w64\lib
     - GL folder → C:\mingw-w64\include\GL

---


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

## Compile and Run the Test Program
### ***1️⃣ Save the Above Code***
      Create a file named test.cpp in your working directory.
### ***2️⃣ Open Command Prompt (cmd) and Navigate to the File Location***
         Example:         
         ```sh
         cd C:\Users\YourUsername\Desktop
         (Replace YourUsername with your actual user folder name)
###***3️⃣ Compile the Program***
      Run the following command:      
      ```sh
      g++ -o test test.cpp -lfreeglut -lopengl32 -lglu32
      If there are no errors, the compilation is successful.
###***4️⃣ Run the Program***
      ```sh
      test.exe
###***5️⃣ Expected Output***
   A window should open with a red square in the center.
   If the square appears, OpenGL is successfully installed! 🚀

