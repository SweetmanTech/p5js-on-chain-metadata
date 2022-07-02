const hre = require("hardhat");

async function main() {
  await hre.run("compile");
  const cxy = await hre.ethers.getContractFactory("CXY");
  const contract = await cxy.deploy();

  await contract.deployed();

  console.log("cxy deployed to:", contract.address);
}

main()
  .then(() => process.exit(0))
  .catch((error) => {
    console.error(error);
    process.exit(1);
  });
