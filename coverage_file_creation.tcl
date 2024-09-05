set file1 [open C:\questasim64_10.6c\examples\DMA_covg.sv a]
 if { [catch {open "DMA_covg.sv"} file ] } {
   puts stderr "error:$file"
}
puts "please modify my file add coverage details"
variable covergroup,coverpoint;
puts "enter the covergroup name "
gets stdin covergroup
puts "enter the coverpoint name "
gets stdin coverpoint
puts "enter the number of coverpoints"
gets stdin n
puts "covergroup $covergroup; "
for {set i 0 } { $i < $n } { incr i 1 } {
    puts "coverpoint $coverpoint $i {bins value1={1};
                              bins value0={0};
      }"
}
      puts "endcovergroup"
      close $file1
      set file1 [open C:\questasim64_10.6c\examples\DMA_covg.sv r]
      set file_data [read $file1]
      puts $file_data
      close $file1
