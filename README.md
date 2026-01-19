# MATLAB Workbench

<p align="center">
  <!-- Core -->
  <img src="https://img.shields.io/github/license/H0NEYP0T-466/matlab-workbench?style=for-the-badge&color=brightgreen" alt="GitHub License">
  <img src="https://img.shields.io/github/stars/H0NEYP0T-466/matlab-workbench?style=for-the-badge&color=yellow" alt="GitHub Stars">
  <img src="https://img.shields.io/github/forks/H0NEYP0T-466/matlab-workbench?style=for-the-badge&color=blue" alt="GitHub Forks">
  <img src="https://img.shields.io/github/issues/H0NEYP0T-466/matlab-workbench?style=for-the-badge&color=red" alt="GitHub Issues">
  <img src="https://img.shields.io/github/issues-pr/H0NEYP0T-466/matlab-workbench?style=for-the-badge&color=orange" alt="GitHub Pull Requests">
  <img src="https://img.shields.io/badge/Contributions-Welcome-brightgreen?style=for-the-badge" alt="Contributions Welcome">
  
  <!-- Activity -->
  <img src="https://img.shields.io/github/last-commit/H0NEYP0T-466/matlab-workbench?style=for-the-badge&color=purple" alt="Last Commit">
  <img src="https://img.shields.io/github/commit-activity/m/H0NEYP0T-466/matlab-workbench?style=for-the-badge&color=teal" alt="Commit Activity">
  <img src="https://img.shields.io/github/repo-size/H0NEYP0T-466/matlab-workbench?style=for-the-badge&color=blueviolet" alt="Repo Size">
  <img src="https://img.shields.io/github/languages/code-size/H0NEYP0T-466/matlab-workbench?style=for-the-badge&color=indigo" alt="Code Size">
  
  <!-- Languages -->
  <img src="https://img.shields.io/github/languages/top/H0NEYP0T-466/matlab-workbench?style=for-the-badge&color=critical" alt="Top Language">
  <img src="https://img.shields.io/github/languages/count/H0NEYP0T-466/matlab-workbench?style=for-the-badge&color=success" alt="Languages Count">
  
  <!-- Community -->
  <img src="https://img.shields.io/badge/Docs-Available-green?style=for-the-badge&logo=readthedocs&logoColor=white" alt="Documentation">
  <img src="https://img.shields.io/badge/Open%20Source-%E2%9D%A4-red?style=for-the-badge" alt="Open Source Love">
</p>

## 📖 About

A comprehensive MATLAB workbench containing lab exercises, assignments, and practical implementations focused on **Image Processing** and **Digital Signal Processing**. This repository includes various MATLAB scripts (`.m`) and Live Scripts (`.mlx`) covering topics such as frequency domain filtering, histogram equalization, image enhancement, and video processing.

## 🔗 Quick Links

- 📚 [Documentation](#-usage-examples)
- 🐛 [Report Issues](https://github.com/H0NEYP0T-466/matlab-workbench/issues)
- 💡 [Request Features](https://github.com/H0NEYP0T-466/matlab-workbench/issues/new?template=feature_request.yml)
- 🤝 [Contributing Guidelines](CONTRIBUTING.md)
- 🛡️ [Security Policy](SECURITY.md)

## 📑 Table of Contents

- [About](#-about)
- [Quick Links](#-quick-links)
- [Installation](#-installation)
- [Usage Examples](#-usage-examples)
- [Features](#-features)
- [Folder Structure](#-folder-structure)
- [Tech Stack](#-tech-stack)
- [Dependencies & Packages](#-dependencies--packages)
- [Contributing](#-contributing)
- [License](#-license)
- [Security](#-security)
- [Code of Conduct](#-code-of-conduct)

## 🚀 Installation

### Prerequisites

- **MATLAB** R2018a or later (recommended: R2020a+)
- **Image Processing Toolbox** (for most scripts)
- **Computer Vision Toolbox** (for video processing scripts)
- Basic understanding of MATLAB syntax and image processing concepts

### Setup Steps

1. **Clone the repository**
   ```bash
   git clone https://github.com/H0NEYP0T-466/matlab-workbench.git
   cd matlab-workbench
   ```

2. **Open MATLAB**
   - Launch MATLAB from your applications or command line
   - Navigate to the cloned repository directory

3. **Set up MATLAB path** (optional)
   ```matlab
   % Add the repository to MATLAB path
   addpath(genpath(pwd));
   savepath;
   ```

4. **Verify installation**
   ```matlab
   % Test if Image Processing Toolbox is available
   ver('images')
   
   % List all .m files in the directory
   ls *.m
   ```

## ⚡ Usage Examples

### Running MATLAB Scripts

Open any `.m` file in MATLAB Editor and run it:

```matlab
% Example: Running lab10.m (Frequency Domain Filtering)
run('lab10.m')
```

### Working with MATLAB Live Scripts

Double-click any `.mlx` file or open it from MATLAB:

```matlab
% Open a Live Script programmatically
open('lab9.mlx')
```

### Common Operations

#### 1. Image Filtering (lab10.m)
```matlab
% Load an image
img = imread("cameraman.png");

% Apply frequency domain filtering
F = fft2(double(img));
F_shifted = fftshift(F);

% Create low-pass filter
[M,N] = size(img);
DO = 40;  % Cutoff frequency
h = zeros(M,N);

for u=1:M
    for v=1:N
        D = sqrt((u-M/2)^2+(v-N/2)^2);
        if D <= DO
            h(u,v) = 1;
        end
    end
end

% Apply filter and inverse transform
G = h .* F_shifted;
filtered_img = real(ifft2(ifftshift(G)));
```

#### 2. Image Enhancement (LAB11.mlx)
Load the Live Script for histogram equalization and adaptive techniques.

#### 3. Video Processing (lab9.m/lab9.mlx)
Process video files with brightness adjustments and filtering.

## ✨ Features

- 📊 **Frequency Domain Filtering** - Low-pass, high-pass, and band-pass filters
- 🖼️ **Histogram Equalization** - Standard and adaptive histogram equalization
- 🎨 **Image Enhancement** - Contrast adjustment, brightness control, sharpening
- 🎥 **Video Processing** - Frame-by-frame analysis and manipulation
- 🔧 **Smoothing Filters** - Various spatial domain smoothing techniques
- 📐 **Fourier Transform Analysis** - FFT-based image processing
- 🧪 **Practical Lab Exercises** - Ready-to-use educational material
- 📝 **Well-Commented Code** - Easy to understand and modify
- 🔄 **Multiple Implementations** - Both `.m` scripts and `.mlx` Live Scripts
- 🖥️ **Interactive Examples** - Live Scripts with embedded visualizations

## 📂 Folder Structure

```
matlab-workbench/
├── 📄 Assingment_2.mlx          # Assignment 2 (Image Processing)
├── 📄 LAB11.mlx                 # Lab 11: Histogram Equalization
├── 📄 LAB_7_TASK_3.m            # Lab 7 Task 3 script
├── 📄 LAB_7_TASK_3.mlx          # Lab 7 Task 3 Live Script
├── 📄 MANUAL_5.m                # Manual 5 script
├── 📄 MANUAL_5.mlx              # Manual 5 Live Script
├── 📄 Manual_Task_4.m           # Manual Task 4 script
├── 📄 Manual_Task_4.mlx         # Manual Task 4 Live Script
├── 📄 Pratice.mlx               # Practice exercises
├── 📄 lab4_task_1.mlx           # Lab 4 Task 1
├── 📄 lab4_task_2.mlx           # Lab 4 Task 2
├── 📄 lab6.m                    # Lab 6 script
├── 📄 lab7_smoothing_filters.mlx # Lab 7: Smoothing Filters
├── 📄 lab9.m                    # Lab 9: Video Processing script
├── 📄 lab9.mlx                  # Lab 9: Video Processing Live Script
├── 📄 lab10.m                   # Lab 10: Frequency Domain Filtering
├── 📄 lab10.mlx                 # Lab 10 Live Script
├── 📄 lab12.mlx                 # Lab 12
├── 📄 lab13.mlx                 # Lab 13
├── 📄 labPaper_pratice.mlx      # Lab Paper Practice
├── 📄 lab_4.mlx                 # Lab 4 exercises
├── 📁 lab_manuals/              # Lab manual files
│   ├── 📄 manual_1.mlx
│   ├── 📄 manual_2.mlx
│   ├── 📄 manual_3.mlx
│   ├── 📄 manual4.mlx
│   ├── 📄 manual5.mlx
│   ├── 📄 manual6.mlx
│   ├── 📄 manual7.mlx
│   └── 📄 manual8.mlx
├── 📄 labmanual_1.m             # Lab Manual 1 script
├── 📄 labmanual_2.m             # Lab Manual 2 script
├── 📄 manualTask9.m             # Manual Task 9 script
├── 📄 manualTask9.mlx           # Manual Task 9 Live Script
├── 📄 oel.m                     # OEL (Open-ended Lab) script
├── 📄 oel.mlx                   # OEL Live Script
├── 📄 oel.pdf                   # OEL documentation
├── 🖼️ cameraman.png             # Sample image
├── 🖼️ peppers.png               # Sample image
├── 🖼️ pout.tif                  # Sample image
├── 🖼️ tire.tif                  # Sample image
├── 🖼️ Te-me_0082.jpg            # Sample image
├── 🖼️ rgb_adapthisteq.png       # Result image
├── 🖼️ rgb_adjust.png            # Result image
├── 🖼️ rgb_histeq.png            # Result image
├── 🎥 color_bright.avi          # Sample video
├── 🎥 newfile.avi               # Processed video
├── 📊 DAY#1(17-sep-25).mat      # MATLAB data file
├── 📊 Lab_Manual#1.mat          # Lab Manual data
└── 📊 Lab_Manual#2.mat          # Lab Manual data
```

## 🛠 Tech Stack

### Languages
<p>
  <img src="https://img.shields.io/badge/MATLAB-0076A8?style=for-the-badge&logo=mathworks&logoColor=white" alt="MATLAB">
</p>

### Tools & Platforms
<p>
  <img src="https://img.shields.io/badge/Git-F05032?style=for-the-badge&logo=git&logoColor=white" alt="Git">
  <img src="https://img.shields.io/badge/GitHub-181717?style=for-the-badge&logo=github&logoColor=white" alt="GitHub">
  <img src="https://img.shields.io/badge/Image_Processing_Toolbox-0076A8?style=for-the-badge&logo=mathworks&logoColor=white" alt="Image Processing Toolbox">
  <img src="https://img.shields.io/badge/Computer_Vision_Toolbox-0076A8?style=for-the-badge&logo=mathworks&logoColor=white" alt="Computer Vision Toolbox">
</p>

## 📦 Dependencies & Packages

### MATLAB Toolboxes (Required)

This project relies on MATLAB toolboxes rather than external package managers. The following toolboxes should be installed with your MATLAB installation:

<p>
  <img src="https://img.shields.io/badge/Image_Processing_Toolbox-Required-0076A8?style=for-the-badge&logo=mathworks&logoColor=white" alt="Image Processing Toolbox">
  <img src="https://img.shields.io/badge/Computer_Vision_Toolbox-Optional-0076A8?style=for-the-badge&logo=mathworks&logoColor=white" alt="Computer Vision Toolbox">
  <img src="https://img.shields.io/badge/Signal_Processing_Toolbox-Optional-0076A8?style=for-the-badge&logo=mathworks&logoColor=white" alt="Signal Processing Toolbox">
</p>

**Note:** No external package dependencies detected. This project uses native MATLAB functions and built-in toolboxes only.

### Verifying Toolbox Installation

To verify installed toolboxes in MATLAB:
```matlab
ver  % Display all installed toolboxes
```

## 🤝 Contributing

We welcome contributions from the community! Please read our [Contributing Guidelines](CONTRIBUTING.md) before submitting pull requests.

### Quick Contribution Guide

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

For more details, see [CONTRIBUTING.md](CONTRIBUTING.md)

## 📜 License

This project is licensed under the **MIT License** - see the [LICENSE](LICENSE) file for details.

## 🛡 Security

If you discover a security vulnerability, please follow our [Security Policy](SECURITY.md) for responsible disclosure.

## 📏 Code of Conduct

This project adheres to the [Contributor Covenant Code of Conduct](CODE_OF_CONDUCT.md). By participating, you are expected to uphold this code.

---

<p align="center">Made with ❤️ by H0NEYP0T-466</p>
