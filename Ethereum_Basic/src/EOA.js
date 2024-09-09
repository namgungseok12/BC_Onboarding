const { ethers } = require('ethers');

const wallet = ethers.Wallet.createRandom();
console.log('random wallet: ',wallet,'\n');

const privateKey = wallet.privateKey;
console.log('Private key: ', privateKey);

const address = wallet.address;
console.log('My ethereum address: ', address);

const EC = require('elliptic').ec;
const ec = new EC('secp256k1');

const privateKeyNum = privateKey.substring(2);
const keyPair = ec.keyFromPrivate(privateKeyNum);

const myPublicKey = keyPair.getPublic().encodeCompressed('hex');
console.log('myPublicKey:::',myPublicKey);
