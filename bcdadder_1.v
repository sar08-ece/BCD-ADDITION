module bcdadder_1(a,b,carry_ins,sum,carry);
    input[3:0]a,b;
    input carry_ins;
    output[3:0]sum;
    output carry;
    reg[4:0]sum_temp;
    reg[3:0]sum;
    reg carry;
    always @(a,b,carry_ins)
    begin
        sum_temp=a+b+carry_ins;
        if(sum_temp>9)
        begin
            sum_temp=sum_temp+6;
            carry=1;
            sum=sum_temp[3:0];
        end
        begin
            carry=0;
            sum=sum_temp[3:0];
        end
    end
endmodule

