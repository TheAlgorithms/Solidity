<div align="center">
<!-- Title: -->
  <a href="https://github.com/TheAlgorithms/">
    <img src="https://raw.githubusercontent.com/TheAlgorithms/website/1cd824df116b27029f17c2d1b42d81731f28a920/public/logo.svg" height="100">
  </a>
  <h1><a href="https://github.com/TheAlgorithms/">The Algorithms</a> - Solidity</h1>
<!-- Labels: -->
  <!-- First row: -->
  <a href="https://gitpod.io/#https://github.com/TheAlgorithms/Solidity">
    <img src="https://img.shields.io/badge/Gitpod-Ready--to--Code-blue?logo=gitpod&style=flat-square" height="20" alt="Gitpod Ready-to-Code">
  </a>
  <a href="https://github.com/TheAlgorithms/Solidity/blob/master/CONTRIBUTING.md">
    <img src="https://img.shields.io/static/v1.svg?label=Contributions&message=Welcome&color=0059b3&style=flat-square" height="20" alt="Contributions Welcome">
  </a>
  <img src="https://img.shields.io/github/repo-size/TheAlgorithms/Solidity.svg?label=Repo%20size&style=flat-square" height="20">
  <a href="https://discord.gg/c7MnfGFGa6">
    <img src="https://img.shields.io/discord/808045925556682782.svg?logo=discord&colorB=7289DA&style=flat-square" height="20" alt="Discord chat">
  </a>
  <a href="https://gitter.im/TheAlgorithms">
    <img src="https://img.shields.io/badge/Chat-Gitter-ff69b4.svg?label=Chat&logo=gitter&style=flat-square" height="20" alt="Gitter chat">
  </a>
  <a href="https://liberapay.com/TheAlgorithms/donate">
    <img src="https://liberapay.com/assets/widgets/donate.svg" alt="Donate on Liberapay">
  </a>
<!-- Short description: -->
  <h3>All algorithms implemented in Solidity - for education</h3>
  <h5>(still a work-in-progress project)</h5>

</div>

This is going to be used for our partnership with [Dev Protocol](https://devprotocol.xyz). 🚀

Implementations are for learning purposes only. As they may be less secure than in real-world context, use them at your discretion.

## Setting up `foundry`

Guide to installing `foundry` - <https://book.getfoundry.sh/getting-started/installation>\
Clone the current project and enter the directory.

```bash
  git clone https://github.com/TheAlgorithms/Solidity.git
  cd Solidity
```

Installing `forge-std` (Forge Standard Library).

```bash
  forge install foundry-rs/forge-std 
```

Build the project using `forge-std`.

```bash 
  forge build
```

Run `forge-std` automatic tests.

```bash 
  # forge test --match-contract <contract-name>Test
  forge test --match-contract AbsTest
```

## Lists of Algorithms

- [Algorithms](./src)
  - [Maths](./src/Maths)
    - [Abs](./src/Maths/Abs.sol)
    - [AddArray](./src/Maths/AddArray.sol)
    - [AliquotSum](./src/Maths/AliquotSum.sol)
    - [Area](./src/Maths/Area.sol)
    - [Armstrong Number](./src/Maths/armstrongNumber.sol)
    - [Array Reversal](./src/Maths/ReverseArray.sol)
    - [Average Mean](./src/Maths/AverageMean.sol)
    - [BinaryExponentiation](./src/Maths/BinaryExponentiation.sol)
    - [Divide Digit](./src/Maths/divideDigit.sol)
    - [Exponentiation](./src/Maths/exponentiation.sol)
    - [Factorial](./src/Maths/factorial.sol)
    - [Fibonacci](./src/Maths/fibonacci.sol)
    - [Lucas Series](./src/Maths/lucasSeries.sol)
    - [Modulo](./src/Maths/modulo.sol)
    - [Multiply Array](./src/Maths/MulArray.sol)
    - [Multiply Digit](./src/Maths/multiplyDigit.sol)
    - [Percentage](./src/Maths/Percentage.sol)
    - [Perfect Square](./src/Maths/perfectSquare.sol)
    - [Sub Digit](./src/Maths/subDigit.sol)
    - [Sum Digit](./src/Maths/subDigit.sol)
    - [String Matching](./src/Maths/stringMatch.sol)
    - [Volume](./src/Maths/volume.sol)
    - [Zellers Congruence Algorithm](./src/Maths/zellersCongruenceAlgorithm.sol)
  - [Dynamic Programming](./src/DynamicProgramming)
    - [Knapsack](./src/DynamicProgramming/Knapsack.sol)
  - [Searches](./src/Searches)
    - [Binary Search](./src/Searches/BinarySearch.sol)
    - [Linear Search](./src/Searches/LinearSearch.sol)
  - [Sorts](./src/Sorts)
    - [Bubble Sort](./src/Sorts/BubbleSort.sol)
    - [Merge Sort](./src/Sorts/MergeSort.sol)
    - [Quick Sort](./src/Sorts/QuickSort.sol)
    - [Selection Sort](./src/Sorts/SelectionSort.sol)

## Community Channels

We're on [Discord](https://discord.gg/c7MnfGFGa6) and [Gitter](https://gitter.im/TheAlgorithms)! Community channels are great for you to ask questions and get help. Please join us!
