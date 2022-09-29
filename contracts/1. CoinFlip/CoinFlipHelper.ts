import { expect } from "chai";
import { ethers } from "hardhat";

const helper = async (victim: any, attacker: any) => {
  for (let index = 0; index < 10; index++) {
    let guess = await attacker.hackContract();
    await guess.wait();
  }
};

export default helper;
