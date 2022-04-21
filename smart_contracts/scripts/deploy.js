const { ethers } = require("hardhat")

const main = async () => 
{
    const [deployer] = await ethers.getSigners();
    
    const Funder = await ethers.getContractFactory("FundFactory");

    const funder = await Funder.deploy();

    console.log("Deployer Address", funder.address);
}

main()
.then(()=>process.exit(0))
.catch((error)=>{
    console.error(error)
    process.exit(1)
})
// 0x5FbDB2315678afecb367f032d93F642f64180aa3
