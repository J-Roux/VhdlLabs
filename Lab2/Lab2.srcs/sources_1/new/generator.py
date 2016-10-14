from bitstring import BitArray, Bits

class Counter:
    zero_arr = [0,0,0,0,0,0,0,0]
    data = BitArray(zero_arr)
    IRC0 = True

    def count(self, S0, S1, IENP, IENT,inData):
        if S0 == False and S1 == False:
            self.data = BitArray(zero_arr)
        if S0 == False and S1 == True:
            self.data = inData
        if S0 == True and S1 == False:
            if IENP == False and IENT == False:
                if self.data.uint == 255:
                    self.data == BitArray(zero_arr)
                    self.IRCO == False
                else:
                    val = self.data.uint
                    val += 1
                    print(val)
                    self.data = BitArray(Bits(uint = val, length = 8))
                    if val == 255:
                        self.IRCO = True
        if S0 == True and S1 == True:
            if IENP == False or IENT == True:
                if self.data.uint == 255:
                    self.data = BitArray(zero_arr)
                    self.IRCO = False
                else:
                    val = data.uint
                    val -= 1
                    self.data = BitArray(Bits(uint = val, length = 8))
                    if val == 255:
                        self.IRCO = True
 

c = Counter();
c.count(True, False, False, False, [])


