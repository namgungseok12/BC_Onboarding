class TXO {
    constructor(owner, amount) {
        this.owner = owner;
        this.amount = amount;
        this.spent = false;
    }

    spend() {
        if(this.spent) {
            throw new Error('This TXO is already spent');
        }
        this.spent = true;
    }
}

const txoB = new TXO('B',10); // A가 B에게 10코인을 전송
console.log(txoB);
// TXO {owner: 'B', amount: 10, spent: false}

txoB.spend();
console.log(txoB);
// TXO { owner: 'C', amount: 10, spent: false }

const txoC = new TXO('C', 10);
console.log(txoC);
// TXO { owner: 'C', amount: 10, spent: false }

try {
    txoB.spend();
} catch (error) {
    console.error(error.message);
    //'This TXO is already spent'
}