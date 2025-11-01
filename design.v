
module traffic_light_4way(
    input clk,
    input reset,
    output reg [2:0] ns_light,
    output reg [2:0] ew_light
    );

    reg [3:0] count;

    always @(posedge clk or posedge reset) begin
        if (reset)
            count <= 0;
        else if (count == 11)
            count <= 0;
        else
            count <= count + 1;
    end

    always @(*) begin
        case (count)
            0,1,2,3: begin
                ns_light = 3'b001; // Green
                ew_light = 3'b100; // Red
            end
            4,5: begin
                ns_light = 3'b010; // Yellow
                ew_light = 3'b100; // Red
            end
            6,7,8,9: begin
                ns_light = 3'b100; // Red
                ew_light = 3'b001; // Green
            end
            10,11: begin
                ns_light = 3'b100; // Red
                ew_light = 3'b010; // Yellow
            end
            default: begin
                ns_light = 3'b100;
                ew_light = 3'b100;
            end
        endcase
    end

endmodule
