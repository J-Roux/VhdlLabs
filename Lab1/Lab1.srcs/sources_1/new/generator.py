from bitarray import bitarray

with open('input', 'w') as f:
    with open('output', 'w') as l:
        for i in range(0, 8):
            for j in range(0, 8):
               _input = bitarray()
               _input.frombytes(chr((i << 3) + j))
               f.write(_input[2:].to01() + '\n')
               _output = bitarray(8)
               _input = _input[2:] 
               G1 = _input[0]
               G2A = _input[1]
               G2B = _input[2]
               A = _input[5]
               B = _input[4]
               C = _input[3]
               control = not(G1 and not(G2A) and not(G2B))
               _output[0] =  not(not(control) and (not(A) and not(B) and not(C)))
               _output[1] =  not(not(control) and ( A and not(B) and not(C))) 
               _output[2] =  not(not(control) and (not(A) and  B and not(C))) 
               _output[3] =  not(not(control) and (A and B and not(C))) 
               _output[4] =  not(not(control) and (not(A) and not(B) and C)) 
               _output[5] =  not(not(control) and (A and not(B) and C)) 
               _output[6] =  not(not(control) and (not(A) and B and C)) 
               _output[7] =  not(not(control) and (A and B and C)) 
               _output.reverse()
               l.write(_output.to01() + '\n')
