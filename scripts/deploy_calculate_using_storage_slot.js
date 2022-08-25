// We require the Hardhat Runtime Environment explicitly here. This is optional
// but useful for running the script in a standalone fashion through `node <script>`.
//
// When running the script with `npx hardhat run <script>` you'll find the Hardhat
// Runtime Environment's members available in the global scope.
const hre = require("hardhat");

function sleep(ms) {
  return new Promise((resolve) => {
    setTimeout(resolve, ms);
  });
}

async function main() {
  const CalculationUsingStorageSlot = await hre.ethers.getContractFactory("CalculationUsingStorageSlot");
  const calculationUsingStorageSlotInstance = await CalculationUsingStorageSlot.deploy();

  console.log('CalculationUsingStorageSlot contract address ', calculationUsingStorageSlotInstance.address);

  await sleep(20000);

  await hre.run("verify:verify", {
    address: calculationUsingStorageSlotInstance.address,
    constructorArguments: [
    ],
  });

}

main()
  .then(() => process.exit(0))
  .catch((error) => {
    console.error(error);
    process.exit(1);
  });
