import Nat8 "mo:base/Nat8";
import Nat "mo:base/Nat";

actor {

    // Challenge 1 : Write a function nat_to_nat8 
    // that converts a Nat n to a Nat8. 
    public func nat_to_nat8 ( n : Nat ) : async Nat8 {
        if(n > 255) {
            return 0; // error code
        };
        return (Nat8.fromNat(n));
    };
    // Challenge 2 : Write a function max_number_with_n_bits
    // that takes a Nat n and returns the maximum number 
    // that can be represented with only n-bits.
    public func max_number_with_n_bits ( n : Nat ) : async Nat {
        return ( 2 ** n ) -1;
    };
    // Challenge 3 : Write a function decimal_to_bits
    // that takes a Nat n and returns a Text corresponding to
    // the binary representation of this number. 
    public func decimal_to_bits ( n : Nat ) : async Text {
        if (n == 0) {
            return "BAD";
        };
        var array_2: [Nat] = [];
        while (n > 0) {
            array_2 := Array.append<Nat>(array_2, [n % 2]);
            n := (n / 2);  
        };
        var result = Nat.toText(array_2);
        return result     
        //    return bit_array;
    };

        

        
    
};
