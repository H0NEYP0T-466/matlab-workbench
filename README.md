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
  <img src="https://img.shields.io/badge/Documentation-Available-green?style=for-the-badge&logo=readthedocs&logoColor=white" alt="Documentation">
  <img src="https://img.shields.io/badge/Open%20Source-%E2%9D%A4-red?style=for-the-badge" alt="Open Source Love">
</p>

<p align="center">
  <strong>A comprehensive collection of MATLAB scripts and lab manuals for image processing, signal processing, and computer vision tasks.</strong>
</p>

---

## 🔗 Quick Links

- [📚 Documentation](#-table-of-contents)
- [🐛 Report Issues](https://github.com/H0NEYP0T-466/matlab-workbench/issues)
- [💡 Feature Requests](https://github.com/H0NEYP0T-466/matlab-workbench/issues/new?template=feature_request.yml)
- [🤝 Contributing](CONTRIBUTING.md)
- [🔒 Security](SECURITY.md)

---

## 📑 Table of Contents

- [About](#-about)
- [Features](#-features)
- [Installation](#-installation)
- [Usage](#-usage)
- [Folder Structure](#-folder-structure)
- [Tech Stack](#-tech-stack)
- [Dependencies & Packages](#-dependencies--packages)
- [Contributing](#-contributing)
- [License](#-license)
- [Security](#-security)
- [Code of Conduct](#-code-of-conduct)

---

## 🎯 About

**MATLAB Workbench** is an educational repository containing a curated collection of MATLAB scripts, live scripts (.mlx), and practical implementations for various image processing and computer vision techniques. This repository serves as a learning resource for students and practitioners working with:

- **Image Processing**: Filtering, enhancement, restoration, and transformation
- **Frequency Domain Analysis**: FFT, DFT, and frequency filtering techniques
- **Spatial Filtering**: Smoothing, sharpening, and edge detection
- **Video Processing**: Frame extraction, temporal averaging, and video manipulation
- **Image Enhancement**: Histogram equalization, adaptive histogram processing, and contrast adjustment

---

## ✨ Features

- 🖼️ **Comprehensive Image Processing Suite**
  - Spatial domain filtering (averaging, Gaussian, median)
  - Frequency domain filtering (ideal, Butterworth, Gaussian filters)
  - Image enhancement techniques (histogram equalization, adaptive methods)
  - Edge detection and morphological operations

- 🎥 **Video Processing Capabilities**
  - Frame extraction and analysis
  - Temporal averaging for noise reduction
  - Video filtering and transformation

- 📊 **Frequency Domain Analysis**
  - Fast Fourier Transform (FFT) implementations
  - Low-pass and high-pass filtering
  - Frequency spectrum visualization

- 🔬 **Practical Lab Exercises**
  - 13+ structured lab manuals
  - Real-world image processing examples
  - Step-by-step implementations with visual outputs

- 📸 **Sample Assets Included**
  - Test images (cameraman, peppers, pout, tire)
  - Video samples for processing demonstrations
  - Pre-processed result images

---

## 🚀 Installation

### Prerequisites

Before you begin, ensure you have the following installed:

- **MATLAB** (R2018b or later recommended)
  - Version: R2018b+
  - Required Toolboxes:
    - Image Processing Toolbox
    - Computer Vision Toolbox (optional, for advanced features)

### Setup Steps

1. **Clone the repository**
   ```bash
   git clone https://github.com/H0NEYP0T-466/matlab-workbench.git
   cd matlab-workbench
   ```

2. **Open MATLAB**
   - Launch MATLAB on your system
   - Navigate to the cloned repository directory

3. **Verify Installation**
   ```matlab
   % Check if Image Processing Toolbox is installed
   ver('images')
   ```

4. **Run a sample script**
   ```matlab
   % Open and run a basic lab script
   open('lab10.m')
   % Or execute directly
   run('lab10.m')
   ```

---

## ⚡ Usage

### Running Scripts

#### Method 1: MATLAB Script Files (.m)

Open any `.m` file in MATLAB and run it:

```matlab
% Example: Run frequency domain filtering
run('lab10.m')
```

#### Method 2: MATLAB Live Scripts (.mlx)

Open `.mlx` files for interactive execution with inline visualizations:

```matlab
% Open a live script
open('LAB11.mlx')
```

### Example Use Cases

#### 1. **Image Filtering with Spatial Domain Techniques**

```matlab
% Load and filter an image
img = imread('peppers.png');
grayImg = rgb2gray(img);

% Apply Gaussian filtering
h = fspecial('gaussian', [5 5], 2);
filteredImg = imfilter(grayImg, h);

% Display results
figure;
subplot(1,2,1); imshow(grayImg); title('Original');
subplot(1,2,2); imshow(filteredImg); title('Filtered');
```

#### 2. **Frequency Domain Filtering**

```matlab
% Frequency domain low-pass filtering
img = imread('cameraman.png');
F = fft2(double(img));
F_shifted = fftshift(F);

% Create ideal low-pass filter
[M, N] = size(img);
D0 = 40;
H = zeros(M, N);
for u = 1:M
    for v = 1:N
        D = sqrt((u-M/2)^2 + (v-N/2)^2);
        if D <= D0
            H(u,v) = 1;
        end
    end
end

% Apply filter
G = H .* F_shifted;
filtered_img = real(ifft2(ifftshift(G)));

% Display
imshow(filtered_img, []);
```

#### 3. **Video Processing**

```matlab
% Process video frames
vid = VideoReader('color_bright.avi');
frames = {};
while hasFrame(vid)
    frames{end+1} = readFrame(vid);
end

% Process individual frames
processedFrames = cellfun(@(f) rgb2gray(f), frames, 'UniformOutput', false);
```

### Lab Manuals

The repository includes structured lab exercises:

- **Lab 1-3**: Basic image operations and transformations
- **Lab 4-6**: Spatial filtering and enhancement
- **Lab 7-9**: Advanced filtering techniques
- **Lab 10-11**: Frequency domain analysis
- **Lab 12-13**: Video processing and practical applications

Navigate to `lab_manuals/` directory for organized manual files.

---

## 📂 Folder Structure

```
matlab-workbench/
│
├── 📄 README.md                      # Project documentation
├── 📄 LICENSE                        # MIT License
├── 📄 CONTRIBUTING.md                # Contribution guidelines
├── 📄 SECURITY.md                    # Security policy
├── 📄 CODE_OF_CONDUCT.md             # Code of conduct
│
├── 📁 lab_manuals/                   # Organized lab exercises
│   ├── manual_1.mlx                  # Lab manual 1
│   ├── manual_2.mlx                  # Lab manual 2
│   ├── manual_3.mlx                  # Lab manual 3
│   ├── manual4.mlx                   # Lab manual 4
│   ├── manual5.mlx                   # Lab manual 5
│   ├── manual6.mlx                   # Lab manual 6
│   ├── manual7.mlx                   # Lab manual 7
│   └── manual8.mlx                   # Lab manual 8
│
├── 📁 .github/                       # GitHub specific files
│   ├── ISSUE_TEMPLATE/               # Issue templates
│   │   ├── bug_report.yml            # Bug report template
│   │   ├── feature_request.yml       # Feature request template
│   │   └── config.yml                # Issue template config
│   └── pull_request_template.md      # PR template
│
├── 🖼️ Sample Images/                # Test images
│   ├── cameraman.png                 # Classic test image
│   ├── peppers.png                   # Color test image
│   ├── pout.tif                      # Low contrast test image
│   ├── tire.tif                      # Texture test image
│   ├── Te-me_0082.jpg                # Additional test image
│   ├── rgb_adapthisteq.png           # Processed result
│   ├── rgb_adjust.png                # Processed result
│   └── rgb_histeq.png                # Processed result
│
├── 🎥 Video Files/                   # Sample videos
│   ├── color_bright.avi              # Color video sample
│   └── newfile.avi                   # Additional video sample
│
├── 📊 Data Files/                    # MATLAB data files
│   ├── DAY#1(17-sep-25).mat         # Lab data
│   ├── Lab_Manual#1.mat              # Manual data
│   └── Lab_Manual#2.mat              # Manual data
│
├── 📝 Lab Scripts (.m files)         # MATLAB scripts
│   ├── lab6.m                        # Lab 6 script
│   ├── lab9.m                        # Lab 9 script
│   ├── lab10.m                       # Lab 10 script (Frequency filtering)
│   ├── labmanual_1.m                 # Manual 1 implementation
│   ├── labmanual_2.m                 # Manual 2 implementation
│   ├── MANUAL_5.m                    # Manual 5 implementation
│   ├── Manual_Task_4.m               # Task 4 implementation
│   ├── LAB_7_TASK_3.m                # Lab 7 task 3
│   ├── manualTask9.m                 # Manual task 9
│   └── oel.m                         # Open-ended lab
│
├── 📓 Live Scripts (.mlx files)      # Interactive MATLAB notebooks
│   ├── lab4_task_1.mlx               # Lab 4 task 1
│   ├── lab4_task_2.mlx               # Lab 4 task 2
│   ├── lab_4.mlx                     # Lab 4 complete
│   ├── LAB_7_TASK_3.mlx              # Lab 7 task 3 (live)
│   ├── lab7_smoothing_filters.mlx    # Smoothing filters
│   ├── lab9.mlx                      # Lab 9 (live)
│   ├── lab10.mlx                     # Lab 10 (live)
│   ├── LAB11.mlx                     # Lab 11
│   ├── lab12.mlx                     # Lab 12
│   ├── lab13.mlx                     # Lab 13
│   ├── MANUAL_5.mlx                  # Manual 5 (live)
│   ├── Manual_Task_4.mlx             # Task 4 (live)
│   ├── manualTask9.mlx               # Task 9 (live)
│   ├── Assingment_2.mlx              # Assignment 2
│   ├── Pratice.mlx                   # Practice exercises
│   ├── labPaper_pratice.mlx          # Lab paper practice
│   └── oel.mlx                       # Open-ended lab (live)
│
└── 📄 oel.pdf                        # Open-ended lab documentation
```

---

## 🛠 Tech Stack

### Languages

![MATLAB](https://img.shields.io/badge/MATLAB-0076A8.svg?style=for-the-badge&logo=mathworks&logoColor=white)

### Frameworks & Libraries

![Image Processing Toolbox](https://img.shields.io/badge/Image%20Processing%20Toolbox-0076A8?style=for-the-badge&logo=mathworks&logoColor=white)
![Computer Vision Toolbox](https://img.shields.io/badge/Computer%20Vision%20Toolbox-0076A8?style=for-the-badge&logo=mathworks&logoColor=white)

### Development Tools

![Git](https://img.shields.io/badge/Git-F05032.svg?style=for-the-badge&logo=git&logoColor=white)
![GitHub](https://img.shields.io/badge/GitHub-181717.svg?style=for-the-badge&logo=github&logoColor=white)
![Visual Studio Code](https://img.shields.io/badge/VS%20Code-007ACC.svg?style=for-the-badge&logo=visualstudiocode&logoColor=white)

### File Formats

![PNG](https://img.shields.io/badge/PNG-Image%20Format-blue?style=for-the-badge)
![TIFF](https://img.shields.io/badge/TIFF-Image%20Format-green?style=for-the-badge)
![AVI](https://img.shields.io/badge/AVI-Video%20Format-red?style=for-the-badge)
![MAT](https://img.shields.io/badge/MAT-MATLAB%20Data-orange?style=for-the-badge)

---

## 📦 Dependencies & Packages

### MATLAB Toolboxes (Required)

<details>
<summary><b>Core Dependencies</b></summary>

<br>

**Image Processing Toolbox**
- Required for all image manipulation operations
- Functions: `imread`, `imshow`, `rgb2gray`, `imfilter`, `imnoise`, `fspecial`, etc.
- ![MATLAB](https://img.shields.io/badge/MATLAB%20Toolbox-Image%20Processing-0076A8?style=for-the-badge)

**Computer Vision Toolbox** (Optional)
- Used for advanced video processing features
- Functions: `VideoReader`, `VideoWriter`, advanced feature detection
- ![MATLAB](https://img.shields.io/badge/MATLAB%20Toolbox-Computer%20Vision-0076A8?style=for-the-badge)

**Signal Processing Toolbox** (Optional)
- Used for frequency domain operations
- Functions: `fft2`, `ifft2`, `fftshift`, `ifftshift`
- ![MATLAB](https://img.shields.io/badge/MATLAB%20Toolbox-Signal%20Processing-0076A8?style=for-the-badge)

</details>

### Key MATLAB Functions Used

<details>
<summary><b>Image Processing Functions</b></summary>

<br>

- `imread` / `imwrite` - Image I/O operations
- `imshow` / `imshowpair` - Image visualization
- `rgb2gray` - Color space conversion
- `imfilter` - Spatial filtering
- `imnoise` - Add noise to images
- `fspecial` - Create predefined filters
- `imopen` / `imclose` - Morphological operations
- `imsubtract` - Image arithmetic
- `padarray` - Image padding
- `adapthisteq` / `histeq` - Histogram equalization

</details>

<details>
<summary><b>Frequency Domain Functions</b></summary>

<br>

- `fft2` / `ifft2` - 2D Fourier transforms
- `fftshift` / `ifftshift` - Center FFT output
- `abs` / `angle` - Magnitude and phase extraction

</details>

<details>
<summary><b>Video Processing Functions</b></summary>

<br>

- `VideoReader` - Read video files
- `hasFrame` / `readFrame` - Frame extraction
- `VideoWriter` - Write video files

</details>

### System Requirements

- **MATLAB Version**: R2018b or later (recommended R2020a+)
- **Operating System**: Windows, macOS, or Linux
- **RAM**: Minimum 4GB (8GB recommended for large images/videos)
- **Disk Space**: ~500MB for repository + sample data

> **Note**: This repository uses built-in MATLAB functions and toolboxes. No external package managers (npm, pip, Maven, etc.) or third-party libraries are required.

---

## 🤝 Contributing

We welcome contributions from the community! Whether you're fixing bugs, improving documentation, or adding new features, your help is appreciated.

Please read our [Contributing Guidelines](CONTRIBUTING.md) to get started.

### Quick Contribution Steps

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

---

## 📜 License

This project is licensed under the **MIT License** - see the [LICENSE](LICENSE) file for details.

---

## 🛡 Security

Security is a top priority for this project. If you discover a security vulnerability, please follow our responsible disclosure process.

See [SECURITY.md](SECURITY.md) for details on reporting vulnerabilities.

---

## 📏 Code of Conduct

We are committed to providing a welcoming and inclusive environment for all contributors.

Please read our [Code of Conduct](CODE_OF_CONDUCT.md) to understand the expectations for behavior in our community.

---

## 📞 Contact & Support

- **Issues**: [GitHub Issues](https://github.com/H0NEYP0T-466/matlab-workbench/issues)
- **Discussions**: [GitHub Discussions](https://github.com/H0NEYP0T-466/matlab-workbench/discussions)
- **Email**: Contact repository owner for inquiries

---

## 🌟 Acknowledgments

- Sample images from MATLAB Image Processing Toolbox
- Educational lab exercises and assignments
- Open-source community for inspiration and support

---

## 📈 Project Statistics

![GitHub Stats](https://github-readme-stats.vercel.app/api?username=H0NEYP0T-466&repo=matlab-workbench&show_icons=true&theme=radical)

---

<p align="center">
  <strong>Made with ❤️ by H0NEYP0T-466</strong>
</p>

<p align="center">
  <sub>⭐ Star this repository if you find it helpful!</sub>
</p>
