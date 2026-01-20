# Contributing to MATLAB Workbench

Thank you for your interest in contributing to this project! We welcome contributions from the community.

## 🚀 Getting Started

### Fork and Clone

1. **Fork the repository** on GitHub
2. **Clone your fork** locally:
   ```bash
   git clone https://github.com/YOUR_USERNAME/matlab-workbench.git
   cd matlab-workbench
   ```
3. **Add upstream remote**:
   ```bash
   git remote add upstream https://github.com/H0NEYP0T-466/matlab-workbench.git
   ```

### Development Setup

1. **Install MATLAB** (R2018b or later recommended)
2. **Install required toolboxes**:
   - Image Processing Toolbox
   - Signal Processing Toolbox
3. **Open MATLAB** and navigate to the project directory
4. **Verify setup** by running one of the example scripts:
   ```matlab
   run('lab10.m')
   ```

## 🌿 Branch Naming Conventions

Use descriptive branch names with prefixes:

- `feat/` - New features or enhancements
  - Example: `feat/add-wavelet-transform`
- `fix/` - Bug fixes
  - Example: `fix/correct-filter-coefficients`
- `docs/` - Documentation updates
  - Example: `docs/update-readme-examples`
- `refactor/` - Code refactoring
  - Example: `refactor/optimize-fft-computation`
- `test/` - Adding or updating tests
  - Example: `test/add-filter-validation`
- `chore/` - Maintenance tasks
  - Example: `chore/update-dependencies`

## 📝 Commit Message Format

We follow the [Conventional Commits](https://www.conventionalcommits.org/) specification:

```
<type>(<scope>): <subject>

<body>

<footer>
```

### Types

- `feat`: A new feature
- `fix`: A bug fix
- `docs`: Documentation changes
- `style`: Code style changes (formatting, semicolons, etc.)
- `refactor`: Code refactoring without feature changes
- `perf`: Performance improvements
- `test`: Adding or updating tests
- `chore`: Maintenance tasks

### Examples

```
feat(filtering): add Wiener filter implementation

Implement adaptive Wiener filtering for noise reduction
in grayscale and color images.

Closes #42
```

```
fix(lab10): correct Butterworth filter formula

The denominator was missing the square root in the
distance calculation.
```

```
docs(readme): add frequency domain examples

Include code snippets for FFT, IFFT, and filter applications.
```

## 🔀 Pull Request Process

1. **Create a feature branch** from `main`:
   ```bash
   git checkout -b feat/your-feature-name
   ```

2. **Make your changes** with clear, focused commits

3. **Test your changes**:
   - Run all affected MATLAB scripts
   - Verify output images/plots are correct
   - Check for errors or warnings

4. **Update documentation**:
   - Add comments to your code
   - Update README.md if adding new features
   - Create or update examples

5. **Push to your fork**:
   ```bash
   git push origin feat/your-feature-name
   ```

6. **Open a Pull Request** with:
   - Clear title describing the change
   - Detailed description of what and why
   - Reference to related issues (if any)
   - Screenshots/plots if applicable

7. **Address review feedback** promptly

8. **Ensure CI passes** (if configured)

### Pull Request Checklist

Before submitting, verify:

- [ ] Code runs without errors in MATLAB
- [ ] New functions include header comments
- [ ] Complex algorithms are documented
- [ ] Examples are provided for new features
- [ ] No sensitive data or large binary files added
- [ ] Commit messages follow conventions
- [ ] PR description is clear and complete

## 🎨 Code Style Guidelines

### MATLAB Coding Standards

1. **File Organization**:
   ```matlab
   % Script/Function Header
   % Brief description of purpose
   % Author: Your Name
   % Date: YYYY-MM-DD
   
   % Clear workspace (for scripts)
   clear all;
   close all;
   clc;
   
   % Main code
   ```

2. **Naming Conventions**:
   - Variables: `camelCase` (e.g., `filteredImage`, `cutoffFreq`)
   - Functions: `camelCase` (e.g., `applyGaussianFilter`)
   - Constants: `UPPER_CASE` (e.g., `PI_VALUE`, `MAX_ITERATIONS`)
   - Files: `snake_case` for scripts (e.g., `lab_10.m`)

3. **Comments**:
   ```matlab
   % Single-line comment for brief explanations
   
   %% Section header for major parts
   
   % Detailed explanation for complex algorithms
   % spanning multiple lines
   ```

4. **Formatting**:
   - Use 4 spaces for indentation (MATLAB default)
   - Add spaces around operators: `a = b + c`
   - Group related code with blank lines
   - Keep lines under 80 characters when possible

5. **Best Practices**:
   - Pre-allocate arrays: `result = zeros(M, N);`
   - Vectorize operations instead of loops
   - Use meaningful variable names
   - Close figures after use if not needed
   - Include error handling for file I/O

### Example Well-Formatted Code

```matlab
%% Gaussian Low-Pass Filter Implementation
% Applies a Gaussian low-pass filter in frequency domain
% Author: Contributor Name
% Date: 2026-01-20

function filteredImage = applyGaussianLPF(inputImage, cutoffFreq)
    % Convert to double and get dimensions
    img = double(inputImage);
    [M, N] = size(img);
    
    % Compute FFT and shift zero frequency to center
    F = fft2(img);
    F_shifted = fftshift(F);
    
    % Create Gaussian filter
    H = zeros(M, N);
    for u = 1:M
        for v = 1:N
            D = sqrt((u - M/2)^2 + (v - N/2)^2);
            H(u,v) = exp(-(D^2) / (2 * (cutoffFreq^2)));
        end
    end
    
    % Apply filter and inverse transform
    G = H .* F_shifted;
    filteredImage = real(ifft2(ifftshift(G)));
    
    % Convert back to uint8 if input was uint8
    if isa(inputImage, 'uint8')
        filteredImage = uint8(filteredImage);
    end
end
```

## 🧪 Testing Requirements

While this project primarily consists of educational scripts, please ensure:

1. **Functionality Testing**:
   - Run your script/function with sample images
   - Verify outputs are visually correct
   - Test edge cases (small images, large images, grayscale, color)

2. **Error Handling**:
   ```matlab
   if size(img, 3) ~= 3
       error('Input must be an RGB image');
   end
   ```

3. **Documentation Testing**:
   - Ensure examples in comments work
   - Verify README instructions are accurate

## 🤝 Code of Conduct

Please note that this project follows a [Code of Conduct](CODE_OF_CONDUCT.md). By participating, you are expected to uphold this code.

## 📧 Questions?

- Open a [Discussion](https://github.com/H0NEYP0T-466/matlab-workbench/discussions)
- Create an [Issue](https://github.com/H0NEYP0T-466/matlab-workbench/issues) for bugs
- Comment on existing issues or pull requests

## 📚 Additional Resources

- [MATLAB Documentation](https://www.mathworks.com/help/matlab/)
- [Image Processing Toolbox Documentation](https://www.mathworks.com/help/images/)
- [Conventional Commits Specification](https://www.conventionalcommits.org/)
- [GitHub Flow Guide](https://guides.github.com/introduction/flow/)

---

Thank you for contributing to MATLAB Workbench! 🎉
