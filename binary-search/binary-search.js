function main() {
    const n = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20];

    console.log(binarySearch(n, 10));
}


function binarySearch(items, wantedNumber) {
    let low = 0
    let high = items.length - 1;

    while(low <= high) {
        let mid = Math.round((low + high) / 2);
        let guess = items[mid];

        if(guess === wantedNumber) {
            return guess;
        } else if(guess < wantedNumber) {
            low = mid + 1;
        } else {
            high = mid - 1;
        }

        return null;
    }
}

main();