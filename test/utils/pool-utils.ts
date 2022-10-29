import { ethers, network } from 'hardhat';

const NAME = 'Ticket';

const SYMBOL = 'TIK';

const PRICE = ethers.utils.parseEther('0.001');

const getBlocks = async function () {
  const CURRENT_BLOCK = Number(await network.provider.send('eth_blockNumber'));
  const START_BLOCK = CURRENT_BLOCK + 5;
  const END_BLOCK = START_BLOCK + 10;
  return { CURRENT_BLOCK, START_BLOCK, END_BLOCK };
};

module.exports = { NAME, SYMBOL, PRICE, getBlocks };
