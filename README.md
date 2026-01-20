# MATLAB Workbench

<p align="center">
  <img src="https://img.shields.io/github/license/H0NEYP0T-466/matlab-workbench?style=for-the-badge" alt="License">
  <img src="https://img.shields.io/github/stars/H0NEYP0T-466/matlab-workbench?style=for-the-badge" alt="Stars">
  <img src="https://img.shields.io/github/forks/H0NEYP0T-466/matlab-workbench?style=for-the-badge" alt="Forks">
  <img src="https://img.shields.io/github/issues/H0NEYP0T-466/matlab-workbench?style=for-the-badge" alt="Issues">
  <img src="https://img.shields.io/github/issues-pr/H0NEYP0T-466/matlab-workbench?style=for-the-badge" alt="Pull Requests">
</p>

<p align="center">
  <img src="https://img.shields.io/github/last-commit/H0NEYP0T-466/matlab-workbench?style=for-the-badge" alt="Last Commit">
  <img src="https://img.shields.io/github/commit-activity/m/H0NEYP0T-466/matlab-workbench?style=for-the-badge" alt="Commit Activity">
  <img src="https://img.shields.io/github/languages/top/H0NEYP0T-466/matlab-workbench?style=for-the-badge" alt="Top Language">
  <img src="https://img.shields.io/github/languages/count/H0NEYP0T-466/matlab-workbench?style=for-the-badge" alt="Languages Count">
</p>

A comprehensive collection of MATLAB scripts and live scripts for digital image processing, signal processing, and computational techniques. This workbench contains lab exercises, assignments, and practical implementations covering topics from basic image manipulation to advanced filtering, frequency domain analysis, morphological operations, and color space transformations.

<p align="center">
  <a href="#-quick-start">Quick Start</a> •
  <a href="#-features">Features</a> •
  <a href="#-documentation">Documentation</a> •
  <a href="https://github.com/H0NEYP0T-466/matlab-workbench/issues">Issues</a> •
  <a href="CONTRIBUTING.md">Contributing</a>
</p>

---

## 📑 Table of Contents

- [🚀 Quick Start](#-quick-start)
- [✨ Features](#-features)
- [📂 Project Structure](#-project-structure)
- [🛠 Tech Stack](#-tech-stack)
- [📚 Documentation](#-documentation)
- [🤝 Contributing](#-contributing)
- [📜 License](#-license)
- [🛡 Security](#-security)

---

## 🚀 Quick Start

### Prerequisites

- MATLAB R2018b or later (recommended: R2020a+)
- Image Processing Toolbox
- Signal Processing Toolbox (optional, for some scripts)

### Installation

1. **Clone the repository**
   ```bash
   git clone https://github.com/H0NEYP0T-466/matlab-workbench.git
   cd matlab-workbench
   ```

2. **Open MATLAB**
   ```bash
   matlab
   ```

3. **Navigate to the repository folder in MATLAB**
   ```matlab
   cd /path/to/matlab-workbench
   ```

### Basic Usage

**Run a lab script:**
```matlab
% Open and run a live script
open lab10.mlx

% Or execute a .m script
run('lab10.m')
```

**Example: Image Frequency Domain Filtering**
```matlab
% Load and process an image with different filters
img = imread("cameraman.png");
F = fft2(double(img));
F_shifted = fftshift(F);

% Apply Ideal Low-Pass Filter
[M,N] = size(img);
D0 = 40;
h = zeros(M,N);
for u = 1:M
    for v = 1:N
        D = sqrt((u-M/2)^2 + (v-N/2)^2);
        if D <= D0
            h(u,v) = 1;
        end
    end
end

G = h .* F_shifted;
filtered_img = real(ifft2(ifftshift(G)));
imshow(filtered_img, []);
```

---

## ✨ Features

- 📷 **Image Enhancement** - Histogram equalization, CLAHE, contrast adjustment
- 🎨 **Color Space Conversions** - RGB, HSV, YCbCr transformations
- 🔍 **Frequency Domain Filtering** - FFT, Ideal/Butterworth/Gaussian filters
- 🧹 **Noise Reduction** - Median filtering, smoothing filters, salt & pepper noise removal
- 🔲 **Morphological Operations** - Opening, closing, dilation, erosion
- 🎯 **Image Segmentation** - Color-based segmentation, masking techniques
- 📊 **Signal Analysis** - FFT transformations, magnitude and phase analysis
- 🎬 **Video Processing** - Frame extraction, video manipulation (AVI format)
- 📝 **Live Scripts** - Interactive MATLAB notebooks with inline visualizations
- 🧪 **Lab Exercises** - Comprehensive collection of 13+ lab manuals

---

## 📂 Project Structure

```
matlab-workbench/
├── lab_manuals/          # Organized lab manual files
│   ├── manual_1.mlx
│   ├── manual_2.mlx
│   └── ...
├── *.mlx                 # MATLAB Live Scripts (interactive notebooks)
│   ├── lab10.mlx         # Frequency domain filtering
│   ├── oel.mlx           # OEL comprehensive project
│   ├── LAB11.mlx         # Advanced image processing
│   └── ...
├── *.m                   # MATLAB Script Files
│   ├── lab10.m           # Frequency filters implementation
│   ├── oel.m             # Complete image processing pipeline
│   └── ...
├── *.png, *.jpg, *.tif   # Sample images for processing
│   ├── cameraman.png
│   ├── peppers.png
│   └── ...
├── *.avi                 # Video files for processing
├── *.mat                 # MATLAB data files
└── *.pdf                 # Documentation and reports
```

---

## 🛠 Tech Stack

<p align="left">
  <img src="https://img.shields.io/badge/MATLAB-0076A8?style=for-the-badge&logo=mathworks&logoColor=white" alt="MATLAB">
  <img src="https://img.shields.io/badge/Image_Processing-FF6F00?style=for-the-badge&logo=adobe-photoshop&logoColor=white" alt="Image Processing">
  <img src="https://img.shields.io/badge/Signal_Processing-00599C?style=for-the-badge&logo=signal&logoColor=white" alt="Signal Processing">
  <img src="https://img.shields.io/badge/FFT-4285F4?style=for-the-badge&logo=wolfram&logoColor=white" alt="FFT">
</p>

### Core Technologies

- **Language:** MATLAB
- **Toolboxes:**
  - Image Processing Toolbox
  - Signal Processing Toolbox
- **File Formats:** .m (scripts), .mlx (live scripts), .mat (data), .avi (video)
- **Image Formats:** PNG, JPG, TIFF

---

## 📚 Documentation

### Key Lab Topics

<details>
<summary><b>Lab 4:</b> Basic Image Operations</summary>

- Image reading and display
- Color space conversions
- Basic transformations
</details>

<details>
<summary><b>Lab 6-7:</b> Filtering & Smoothing</summary>

- Spatial domain filtering
- Smoothing filters
- Edge-preserving filters
</details>

<details>
<summary><b>Lab 9:</b> Morphological Operations</summary>

- Structuring elements
- Opening and closing
- Boundary extraction
</details>

<details>
<summary><b>Lab 10:</b> Frequency Domain Processing</summary>

- 2D Fourier Transform
- Ideal, Butterworth, and Gaussian filters
- Low-pass and high-pass filtering
</details>

<details>
<summary><b>Lab 11-13:</b> Advanced Techniques</summary>

- Color image segmentation
- Noise modeling and restoration
- Feature extraction
</details>

<details>
<summary><b>OEL Project:</b> Complete Pipeline</summary>

- Color space conversion (RGB → HSV → YCbCr)
- Contrast-limited adaptive histogram equalization (CLAHE)
- Noise addition and removal
- Color-based segmentation
- Morphological post-processing
</details>

### Common Functions Used

```matlab
% Image I/O
imread(), imwrite(), imshow()

% Enhancement
imadjust(), histeq(), adapthisteq()

% Filtering
medfilt2(), imfilter(), fspecial()

% Frequency Domain
fft2(), ifft2(), fftshift(), ifftshift()

% Morphology
imopen(), imclose(), imdilate(), imerode(), strel()

% Color Spaces
rgb2hsv(), hsv2rgb(), rgb2ycbcr()

% Segmentation
imbinarize(), imfill()

% Noise
imnoise()
```

### Example Workflows

**1. Image Enhancement Pipeline**
```matlab
% Load image
img = imread('image.png');

% Convert to HSV for enhancement
hsv = rgb2hsv(img);

% Enhance V channel
hsv(:,:,3) = adapthisteq(hsv(:,:,3));

% Convert back to RGB
enhanced = hsv2rgb(hsv);
imshow(enhanced);
```

**2. Frequency Domain Filtering**
```matlab
% Transform to frequency domain
img = imread('cameraman.png');
F = fft2(double(img));
F_shifted = fftshift(F);

% Create filter (Gaussian LPF)
[M,N] = size(img);
D0 = 40;
H = zeros(M,N);
for u = 1:M
    for v = 1:N
        D = sqrt((u-M/2)^2 + (v-N/2)^2);
        H(u,v) = exp(-(D^2)/(2*(D0^2)));
    end
end

% Apply filter and transform back
G = H .* F_shifted;
result = real(ifft2(ifftshift(G)));
imshow(result, []);
```

---

## 🤝 Contributing

We welcome contributions! Please see our [Contributing Guidelines](CONTRIBUTING.md) for details on:

- Code style and conventions
- How to submit pull requests
- Development setup
- Testing requirements

### Quick Contributing Guide

1. Fork the repository
2. Create a feature branch (`git checkout -b feat/amazing-feature`)
3. Commit your changes (`git commit -m 'feat: add amazing feature'`)
4. Push to the branch (`git push origin feat/amazing-feature`)
5. Open a Pull Request

---

## 📜 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---

## 🛡 Security

For security issues or vulnerabilities, please see our [Security Policy](SECURITY.md). Do not report security issues through public GitHub issues.

---

<p align="center">
  Made with ❤️ for Digital Image Processing & Signal Processing
</p>

<p align="center">
  <sub>Built with MATLAB • Image Processing Toolbox</sub>
</p>
