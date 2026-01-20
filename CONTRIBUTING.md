# Contributing to MATLAB Workbench

First off, thank you for considering contributing to MATLAB Workbench! 🎉

The following is a set of guidelines for contributing to this project. These are mostly guidelines, not rules. Use your best judgment, and feel free to propose changes to this document in a pull request.

## 📋 Table of Contents

- [Code of Conduct](#code-of-conduct)
- [How Can I Contribute?](#how-can-i-contribute)
  - [Reporting Bugs](#reporting-bugs)
  - [Suggesting Enhancements](#suggesting-enhancements)
  - [Pull Requests](#pull-requests)
- [Style Guidelines](#style-guidelines)
  - [MATLAB Code Style](#matlab-code-style)
  - [Git Commit Messages](#git-commit-messages)
  - [Documentation Style](#documentation-style)
- [Development Setup](#development-setup)
- [Testing Guidelines](#testing-guidelines)

---

## Code of Conduct

This project and everyone participating in it is governed by our [Code of Conduct](CODE_OF_CONDUCT.md). By participating, you are expected to uphold this code. Please report unacceptable behavior to the repository maintainers.

---

## How Can I Contribute?

### Reporting Bugs

Before creating bug reports, please check the [issue list](https://github.com/H0NEYP0T-466/matlab-workbench/issues) to see if the problem has already been reported. If it has and the issue is still open, add a comment to the existing issue instead of opening a new one.

#### How to Submit a Good Bug Report

Bugs are tracked as [GitHub issues](https://github.com/H0NEYP0T-466/matlab-workbench/issues). Create an issue using the **Bug Report** template and provide the following information:

- **Use a clear and descriptive title** for the issue
- **Describe the exact steps to reproduce the problem** in as much detail as possible
- **Provide specific examples** to demonstrate the steps
- **Describe the behavior you observed** after following the steps
- **Explain which behavior you expected to see** instead and why
- **Include screenshots or animated GIFs** if applicable
- **Include your MATLAB version** and operating system
- **Include error messages** or console output if applicable

### Suggesting Enhancements

Enhancement suggestions are tracked as [GitHub issues](https://github.com/H0NEYP0T-466/matlab-workbench/issues). Create an issue using the **Feature Request** template and provide the following information:

- **Use a clear and descriptive title** for the issue
- **Provide a step-by-step description** of the suggested enhancement
- **Provide specific examples** to demonstrate the enhancement
- **Describe the current behavior** and **explain the expected behavior**
- **Explain why this enhancement would be useful** to most users
- **List some other projects** where this enhancement exists, if applicable

### Pull Requests

#### Getting Started

1. **Fork the repository** and clone your fork locally
   ```bash
   git clone https://github.com/YOUR-USERNAME/matlab-workbench.git
   cd matlab-workbench
   ```

2. **Create a branch** for your changes
   ```bash
   git checkout -b feature/your-feature-name
   ```

3. **Make your changes** following the style guidelines below

4. **Test your changes** thoroughly
   - Run all affected scripts
   - Verify output matches expectations
   - Check for errors or warnings

5. **Commit your changes** with a clear commit message
   ```bash
   git commit -m "feat: add new image enhancement algorithm"
   ```

6. **Push to your fork**
   ```bash
   git push origin feature/your-feature-name
   ```

7. **Open a Pull Request** against the main repository

#### Pull Request Guidelines

- **Fill out the PR template completely**
- **Link to related issues** using keywords (e.g., "Fixes #123")
- **Include screenshots** for visual changes
- **Ensure all tests pass** (if applicable)
- **Update documentation** if needed
- **Keep PRs focused** - one feature or fix per PR
- **Write clear commit messages** following our conventions

---

## Style Guidelines

### MATLAB Code Style

To maintain consistency across the codebase, please follow these MATLAB coding conventions:

#### General Rules

- **Use descriptive variable names** (e.g., `filteredImage` instead of `fi`)
- **Add comments** to explain complex logic
- **Use consistent indentation** (4 spaces recommended)
- **Keep lines under 80 characters** when possible
- **Use meaningful function names** that describe what they do

#### Naming Conventions

```matlab
% Variables: camelCase
filteredImage = imread('test.png');
imageHeight = size(filteredImage, 1);

% Functions: camelCase
function outputImage = applyGaussianFilter(inputImage, sigma)
    % Function implementation
end

% Constants: UPPER_CASE
MAX_ITERATIONS = 100;
DEFAULT_FILTER_SIZE = 5;
```

#### Code Structure

```matlab
% 1. Header comment describing the script/function
% Description: Apply frequency domain filtering to an image
% Author: Your Name
% Date: YYYY-MM-DD

% 2. Input validation (for functions)
if nargin < 2
    error('Insufficient input arguments');
end

% 3. Main implementation
img = imread('input.png');
grayImg = rgb2gray(img);

% 4. Visualization (if applicable)
figure;
subplot(1,2,1); imshow(img); title('Original');
subplot(1,2,2); imshow(grayImg); title('Processed');
```

#### Documentation

- **Add header comments** to all scripts and functions
- **Document input/output parameters** for functions
- **Include usage examples** in comments when helpful
- **Explain mathematical formulas** or algorithms used

Example:

```matlab
function outputImage = customFilter(inputImage, filterSize)
% CUSTOMFILTER Apply a custom spatial filter to an image
%
%   outputImage = CUSTOMFILTER(inputImage, filterSize) applies a custom
%   spatial filtering operation to inputImage using the specified filterSize.
%
%   Inputs:
%       inputImage  - Input image (grayscale or RGB)
%       filterSize  - Size of the filter kernel (must be odd)
%
%   Output:
%       outputImage - Filtered image
%
%   Example:
%       img = imread('peppers.png');
%       filtered = customFilter(img, 5);
%       imshow(filtered);
%
%   See also: IMFILTER, FSPECIAL

    % Implementation
end
```

### Git Commit Messages

Follow [Conventional Commits](https://www.conventionalcommits.org/) specification:

- **feat**: A new feature
  ```
  feat: add Butterworth high-pass filter implementation
  ```

- **fix**: A bug fix
  ```
  fix: correct FFT shift calculation in frequency filtering
  ```

- **docs**: Documentation only changes
  ```
  docs: update README with video processing examples
  ```

- **style**: Code style changes (formatting, missing semicolons, etc.)
  ```
  style: format code according to MATLAB style guide
  ```

- **refactor**: Code refactoring without changing functionality
  ```
  refactor: simplify loop structure in spatial filtering
  ```

- **test**: Adding or updating tests
  ```
  test: add validation tests for edge detection functions
  ```

- **chore**: Maintenance tasks
  ```
  chore: update sample images and test data
  ```

### Documentation Style

- **Use Markdown** for all documentation files
- **Include code examples** with syntax highlighting
- **Add screenshots or diagrams** when helpful
- **Keep line length reasonable** (80-100 characters)
- **Use emoji sparingly** but consistently with existing docs
- **Update table of contents** when adding sections

---

## Development Setup

### Prerequisites

1. **Install MATLAB** (R2018b or later)
   - Image Processing Toolbox
   - Computer Vision Toolbox (optional)

2. **Clone the repository**
   ```bash
   git clone https://github.com/H0NEYP0T-466/matlab-workbench.git
   cd matlab-workbench
   ```

3. **Set MATLAB path** (optional)
   ```matlab
   addpath(genpath('.'));
   savepath;
   ```

### Running Scripts

- **Open MATLAB** and navigate to the repository directory
- **Run scripts directly** from the MATLAB editor or command window
- **Use Live Scripts** (.mlx) for interactive development

---

## Testing Guidelines

### Manual Testing

Since this is a MATLAB-based project focused on image processing, testing primarily involves:

1. **Visual Verification**
   - Run scripts and visually inspect output images
   - Compare results with expected outputs
   - Check for artifacts or unexpected behavior

2. **Functional Testing**
   - Test with different input images (various sizes, formats, content)
   - Verify edge cases (small images, large images, corrupted data)
   - Test with different parameter values

3. **Performance Testing**
   - Measure execution time for large images
   - Check memory usage for video processing tasks

### Testing Checklist

Before submitting a PR, ensure:

- [ ] All scripts run without errors
- [ ] Output matches expected results
- [ ] No MATLAB warnings are generated
- [ ] Code works with different input images
- [ ] Documentation is updated if needed
- [ ] Comments explain complex logic
- [ ] Variable names are descriptive
- [ ] Code follows style guidelines

### Reporting Test Results

When submitting a PR with new features, include:

- Screenshots of output images
- Performance metrics (if applicable)
- Test environment details (MATLAB version, OS)
- Any edge cases or limitations discovered

---

## Additional Notes

### File Organization

- **Scripts (.m files)** - Place in root or appropriate subdirectory
- **Live Scripts (.mlx)** - For interactive demonstrations
- **Lab Manuals** - Place in `lab_manuals/` directory
- **Test Images** - Include in root or reference standard MATLAB images
- **Documentation** - Update README.md and other docs as needed

### Working with Large Files

- **Avoid committing large binary files** when possible
- **Use `.gitignore`** for generated files and outputs
- **Reference standard MATLAB images** instead of including copies
- **Compress videos** before committing

### Questions?

If you have questions or need help, feel free to:

- Open a [discussion](https://github.com/H0NEYP0T-466/matlab-workbench/discussions)
- Ask in an issue or pull request
- Contact the maintainers

---

## Recognition

Contributors will be recognized in:

- The project's README (for significant contributions)
- Release notes
- Git commit history

---

Thank you for contributing to MATLAB Workbench! Your efforts help make this project better for everyone. 🚀
