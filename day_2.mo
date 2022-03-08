import Nat8 "mo:base/Nat8";

actor {

    // Challenge 1 : Write a function nat_to_nat8 
    // that converts a Nat n to a Nat8. 
    public func nat_to_nat8(n : Nat ) : async Nat8 {
        return(Nat8.fromNat(n));
    };
    // Challenge 2 : Write a function max_number_with_n_bits
    // that takes a Nat n and returns the maximum number 
    // that can be represented with only n-bits.
    public func max_number_with_n_bits ( n : Nat ) : async Nat {
        return(2 ** n) -1;
    };
};
