# System Profile

**Name:** Harsh Tomar | **Roll No:** 2601730006

## Hardware and OS Specifications

| Component | Specification |
|-----------|---------------|
| CPU Model Name | Intel(R) Core(TM) 7 240H |
| Number of Cores (logical CPUs) | 16 |
| Total RAM | 7.6 GiB |
| Available RAM | 7.1 GiB |
| Primary Storage Size | 1 TB (virtual disk mounted at /) |
| Storage Type | SSD |
| Operating System | Ubuntu 26.04.1 LTS (running on WSL2) |
| Kernel Version | 6.18.58.1-microsoft-standard-WSL2 |

## Binary Number Representation

### 1. Decimal 75 to Binary (division by 2)

| Step | Division | Quotient | Remainder |
|------|----------|----------|-----------|
| 1 | 75 ÷ 2 | 37 | 1 |
| 2 | 37 ÷ 2 | 18 | 1 |
| 3 | 18 ÷ 2 | 9 | 0 |
| 4 | 9 ÷ 2 | 4 | 1 |
| 5 | 4 ÷ 2 | 2 | 0 |
| 6 | 2 ÷ 2 | 1 | 0 |
| 7 | 1 ÷ 2 | 0 | 1 |

Reading the remainders from bottom to top: **75 (decimal) = 1001011 (binary)**

Check: 64 + 8 + 2 + 1 = 75

### 2. Binary 110101 to Decimal (positional weight method)

| Bit | 1 | 1 | 0 | 1 | 0 | 1 |
|-----|---|---|---|---|---|---|
| Position weight | 2^5 | 2^4 | 2^3 | 2^2 | 2^1 | 2^0 |
| Value | 32 | 16 | 8 | 4 | 2 | 1 |

(1 × 32) + (1 × 16) + (0 × 8) + (1 × 4) + (0 × 2) + (1 × 1) = 32 + 16 + 0 + 4 + 0 + 1 = **53**

So **110101 (binary) = 53 (decimal)**

### 3. Why computers use binary

Computers use binary because their electronic circuits have only two reliable states (on/off, high/low voltage), which map directly to 1 and 0.
