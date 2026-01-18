# Contributing to MATLAB Workbench

First off, thank you for considering contributing to MATLAB Workbench! 🎉 It's people like you that make this project a great learning resource for everyone.

## 📋 Table of Contents

- [Code of Conduct](#code-of-conduct)
- [How Can I Contribute?](#how-can-i-contribute)
  - [Reporting Bugs](#reporting-bugs)
  - [Suggesting Enhancements](#suggesting-enhancements)
  - [Contributing Code](#contributing-code)
- [Development Setup](#development-setup)
- [Coding Style](#coding-style)
- [Commit Guidelines](#commit-guidelines)
- [Pull Request Process](#pull-request-process)
- [Testing](#testing)
- [Documentation](#documentation)

## 📜 Code of Conduct

This project and everyone participating in it is governed by our [Code of Conduct](CODE_OF_CONDUCT.md). By participating, you are expected to uphold this code. Please report unacceptable behavior to the project maintainers.

## 🤝 How Can I Contribute?

### Reporting Bugs

Before creating bug reports, please check the existing issues to avoid duplicates. When you create a bug report, include as many details as possible:

- **Use a clear and descriptive title**
- **Describe the exact steps to reproduce the problem**
- **Provide specific examples** (include MATLAB version, OS, etc.)
- **Describe the behavior you observed** and what you expected
- **Include screenshots or error messages** if applicable
- **Specify your MATLAB version and installed toolboxes**

👉 [Report a Bug](https://github.com/H0NEYP0T-466/matlab-workbench/issues/new?template=bug_report.yml)

### Suggesting Enhancements

Enhancement suggestions are tracked as GitHub issues. When creating an enhancement suggestion:

- **Use a clear and descriptive title**
- **Provide a detailed description of the proposed feature**
- **Explain why this enhancement would be useful**
- **List any similar features in other projects** if applicable
- **Include mockups or examples** if relevant

👉 [Request a Feature](https://github.com/H0NEYP0T-466/matlab-workbench/issues/new?template=feature_request.yml)

### Contributing Code

We love pull requests! Here's how you can contribute:

1. **Fork the repository** and create your branch from `main`
2. **Make your changes** following our coding standards
3. **Test your changes** thoroughly
4. **Update documentation** if needed
5. **Submit a pull request**

## 💻 Development Setup

### Prerequisites

- MATLAB R2018a or later
- Image Processing Toolbox
- Computer Vision Toolbox (for video processing scripts)
- Git for version control

### Setup Instructions

```bash
# Fork and clone the repository
git clone https://github.com/YOUR-USERNAME/matlab-workbench.git
cd matlab-workbench

# Add upstream remote
git remote add upstream https://github.com/H0NEYP0T-466/matlab-workbench.git

# Create a new branch for your feature
git checkout -b feature/your-feature-name
```

### Keeping Your Fork Updated

```bash
# Fetch upstream changes
git fetch upstream

# Merge upstream changes into your main branch
git checkout main
git merge upstream/main

# Push updates to your fork
git push origin main
```

## 🎨 Coding Style

### MATLAB Code Style

Follow these conventions to maintain code consistency:

#### Naming Conventions
- **Variables**: Use descriptive `camelCase` names (e.g., `filteredImage`, `cutoffFrequency`)
- **Functions**: Use `camelCase` for function names (e.g., `applyFilter`, `enhanceContrast`)
- **Constants**: Use `UPPER_CASE` with underscores (e.g., `MAX_ITERATIONS`, `DEFAULT_THRESHOLD`)

#### Formatting
- **Indentation**: Use 4 spaces (not tabs)
- **Line Length**: Keep lines under 100 characters when possible
- **Spacing**: Add spaces around operators (`x = y + z`, not `x=y+z`)
- **Semicolons**: Use semicolons to suppress output in scripts

#### Comments
```matlab
% Single-line comments start with % and a space
% Explain WHY, not WHAT (code should be self-explanatory)

%% Section headers use double percent
%% Image Loading and Preprocessing

% Good comment (explains why)
DO = 40;  % Cutoff frequency chosen based on image resolution

% Avoid obvious comments
img = imread('image.png');  % DON'T: "Read the image"
```

#### Function Documentation
```matlab
function outputImage = enhanceImage(inputImage, method)
% ENHANCEIMAGE Enhance image using specified method
%
%   outputImage = ENHANCEIMAGE(inputImage, method) applies image
%   enhancement using the specified method.
%
%   Inputs:
%       inputImage - Input grayscale or RGB image
%       method     - Enhancement method: 'histeq' or 'adaptive'
%
%   Output:
%       outputImage - Enhanced image
%
%   Example:
%       img = imread('cameraman.png');
%       enhanced = enhanceImage(img, 'histeq');
%       imshow(enhanced);
%
%   See also HISTEQ, ADAPTHISTEQ

    % Function implementation
end
```

### Live Script (.mlx) Guidelines

- Use **section breaks** (`%%`) to organize content logically
- Add **descriptive text** before code sections
- Include **visualizations** (plots, images) after processing
- Use **formatted text** for headings and explanations
- Add **equations** using LaTeX where applicable

### Code Organization

- **One main task per file**: Each script should focus on a single lab or task
- **Modular code**: Break complex operations into functions
- **Consistent structure**:
  1. File header with description
  2. Clear the workspace (if appropriate)
  3. Load data
  4. Process data
  5. Display/save results

## 📝 Commit Guidelines

### Commit Message Format

Use clear and descriptive commit messages following this format:

```
<type>: <subject>

<optional body>

<optional footer>
```

#### Types
- **feat**: New feature or script
- **fix**: Bug fix
- **docs**: Documentation changes
- **style**: Code style changes (formatting, no logic change)
- **refactor**: Code refactoring
- **test**: Adding or updating tests
- **chore**: Maintenance tasks

#### Examples
```
feat: add Lab 14 frequency domain filtering script

Implements low-pass, high-pass, and band-pass filters
using FFT approach.
```

```
fix: correct histogram equalization bounds in LAB11

Previously using incorrect range [0, 255] for normalized images.
Now properly handles [0, 1] range.
```

```
docs: update README with video processing examples
```

## 🔄 Pull Request Process

1. **Update documentation** with details of changes (if applicable)
2. **Follow the pull request template** provided
3. **Ensure your code runs** without errors
4. **Include screenshots** for visual changes
5. **Link related issues** using keywords (e.g., "Fixes #123")
6. **Request review** from maintainers
7. **Address review feedback** promptly
8. **Squash commits** if requested before merging

### Pull Request Checklist

- [ ] My code follows the project's style guidelines
- [ ] I have performed a self-review of my code
- [ ] I have commented my code, particularly in hard-to-understand areas
- [ ] I have made corresponding changes to the documentation
- [ ] My changes generate no new warnings or errors
- [ ] I have tested my changes in MATLAB
- [ ] Any dependent changes have been merged and published

## 🧪 Testing

### Manual Testing

Before submitting your changes:

1. **Run your script/Live Script** in MATLAB
2. **Test with different inputs** (various images, parameters)
3. **Check for errors and warnings**
4. **Verify output** matches expected results
5. **Test with different MATLAB versions** if possible

### Testing Checklist

- [ ] Code runs without errors
- [ ] Results are mathematically correct
- [ ] Visualizations display properly
- [ ] Script works with sample data
- [ ] Memory usage is reasonable
- [ ] Processing time is acceptable

### Sample Data

Use the provided sample images for testing:
- `cameraman.png` - Grayscale test image
- `peppers.png` - RGB test image
- `pout.tif` - Low contrast image
- `tire.tif` - Detailed grayscale image

## 📚 Documentation

### When to Update Documentation

Update documentation when you:
- Add new scripts or Live Scripts
- Change existing functionality
- Add new features or methods
- Fix bugs that affect user-facing behavior
- Add or modify dependencies

### Documentation Standards

- **README.md**: Update if adding new files or changing structure
- **Code comments**: Always include for complex operations
- **Function headers**: Required for all functions
- **Live Script text**: Explain concepts and methodology
- **Examples**: Include usage examples for new features

## 🎯 Areas for Contribution

We especially welcome contributions in these areas:

- 📝 Additional lab exercises and examples
- 🎨 New image processing techniques
- 🎥 Advanced video processing methods
- 📊 Data visualization improvements
- 📖 Documentation enhancements
- 🐛 Bug fixes and performance improvements
- 🧪 Test scripts and validation tools
- 🌐 Internationalization (comments in multiple languages)

## ❓ Questions?

If you have questions about contributing:

- 📫 Open a [GitHub Issue](https://github.com/H0NEYP0T-466/matlab-workbench/issues)
- 💬 Start a [Discussion](https://github.com/H0NEYP0T-466/matlab-workbench/discussions)
- 📧 Contact the maintainers

## 🙏 Recognition

Contributors will be recognized in:
- GitHub contributors list
- Release notes for significant contributions
- Project README (for major contributions)

Thank you for contributing to MATLAB Workbench! 🚀
