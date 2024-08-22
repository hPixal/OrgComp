module pc_module_tb;

    reg clk;
    reg [15:0] pcNext;
    wire [15:0] pc;
    
    // Instancia del módulo a probar
    pc_module uut (
        .clk(clk),
        .pcNext(pcNext),
        .pc(pc)
    );
    // Ciclo de reloj
  
    always #5 clk = ~clk;

    // Generación de señales de prueba
    initial begin

        $dumpfile("pc_module_tb.vcd");
        $dumpvars(0, pc_module_tb);

        clk = 0;
        pcNext = 0;

        // Estímulo de prueba
        // Inicialización
        #10 pcNext = 16'h0000; // Establecer un nuevo valor para pcNext
        #20 pcNext = 16'h0001;
        #30 pcNext = 16'h1234;
        #40 pcNext = 16'hABCD;

        #100 $finish; // Terminar la simulación después de cierto tiempo
    end

endmodule
