module file;
    integer fd;
    initial begin
        fd = $fopen("sendme.v", "w");  // open the file for writing
        if (fd) begin
            $fdisplay(fd, "Hello, I am amir");
            $fclose(fd);
        end else begin
            $display("Error: Cannot open file.");
        end
    end
endmodule

