entity test is

end test;



architecture bench of test is

  signal n4x1, n4x2, n4x3, n4x4: bit;
  signal n7x1, n7x2, n7x3, n7x4: bit;
  signal n8x1, n8x2, n8x3, n8x4: bit;
  

  signal x1, x2, x3, x4: bit;

  signal y4, y7, y8, y9, y10: bit;

  signal x1n, x2n, x3n, y10n: bit;

  signal y10a, y10b, y10c, y10d, y10e, y10f, y10g: bit;

begin

  -- Sisendsignaalid (sammuga 10 ns)

  -- '1': 0010, 0011, 0110, 1001, 1100, 1110 (0-60 ns)

  -- '0': 0101, 0111, 1000, 1010, 1011 (60-110+ ns)

  x1 <= '0', '1' after 30 ns, '0' after 60 ns, '1' after 80 ns;

  x2 <= '0', '1' after 20 ns, '0' after 30 ns,

        '1' after 40 ns, '0' after 80 ns;

  x3 <= '1', '0' after 30 ns, '1' after 50 ns, '0' after 60 ns,

        '1' after 70 ns, '0' after 80 ns, '1' after 90 ns;

  x4 <= '0', '1' after 10 ns, '0' after 20 ns, '1' after 30 ns,

        '0' after 40 ns, '1' after 60 ns, '0' after 80 ns,

        '1' after 100 ns;



  -- Punkti 4 tulemus

  n4x1 <= '0', '0' after 20 ns, '0' after 40 ns, '0' after 60 ns, '1' after 80 ns, '1' after 100 ns;

  n4x2 <= '0', '0' after 20 ns, '0' after 40 ns, '1' after 60 ns, '0' after 80 ns, '0' after 100 ns;

  n4x3 <= '0', '1' after 20 ns, '1' after 40 ns, '1' after 60 ns, '0' after 80 ns, '1' after 100 ns;

  n4x4 <= '1', '0' after 20 ns, '1' after 40 ns, '0' after 60 ns, '1' after 80 ns, '0' after 100 ns;

  y4 <= (not x1 and not x2 and not x3 and x4) or

        (not x1 and not x2 and x3 and not x4) or

        (not x1 and not x2 and x3 and x4) or

        (not x1 and x2 and x3 and not x4) or

        (x1 and not x2 and not x3 and x4) or

        (x1 and not x2 and x3 and not x4);

  -- Punkti 7 tulemus

  n7x1 <= '0', '1' after 80 ns, '0' after 160 ns;

  n7x2 <= '0', '1' after 40 ns, '0' after 80 ns, '1' after 120 ns, '0' after 160 ns;
  
  n7x3 <= '0', '1' after 20 ns, '0' after 40 ns, '1' after 60 ns, '0' after 80 ns, '1' after 100 ns, '0' after 120 ns, '1' after 140 ns;
  
  n7x4 <= '0', '1' after 10 ns, '0' after 20 ns, '1' after 30 ns, '0' after 40 ns, '1' after 50 ns, '0' after 60 ns, '1' after 70 ns, 
  '0' after 80 ns, '1' after 90 ns, '0' after 100 ns, '1' after 110 ns, '0' after 120 ns, '1' after 130 ns, '0' after 140 ns, 
  '1' after 150 ns, '0' after 160 ns;

  y7 <= (not x1 and not x2 and not x3 and x4) or

        (not x1 and not x2 and x3 and not x4) or

        (not x1 and not x2 and x3 and x4) or

        (not x1 and x2 and x3 and not x4) or

        (x1 and not x2 and not x3 and x4) or

        (x1 and not x2 and x3 and not x4);
        
  -- Punkti 8 tulemus

  n8x1 <= '0', '0' after 20 ns, '0' after 40 ns, '0' after 60 ns, '1' after 80 ns, '1' after 100 ns;

  n8x2 <= '0', '0' after 20 ns, '0' after 40 ns, '1' after 60 ns, '0' after 80 ns, '0' after 100 ns;

  n8x3 <= '0', '1' after 20 ns, '1' after 40 ns, '1' after 60 ns, '0' after 80 ns, '1' after 100 ns;

  n8x4 <= '1', '0' after 20 ns, '1' after 40 ns, '0' after 60 ns, '1' after 80 ns, '0' after 100 ns;

  y8 <= (not x1 and not x2 and not x3 and x4) or

        (not x1 and not x2 and x3 and not x4) or

        (not x1 and not x2 and x3 and x4) or

        (not x1 and x2 and x3 and not x4) or

        (x1 and not x2 and not x3 and x4) or

        (x1 and not x2 and x3 and not x4);

  -- Punkti 9 tulemus

  y9 <= not ( (not ((x1 nor x2) nor ((not x2) nor x4))) nor

              ((not ((not x1) nor (x3))) nor (not x4)) );



  -- Punkti 10 tulemus

  x1n <= not x1;             x2n <= not x2;             x3n <= not x3;

  y10d <= x2 nand x4;        y10c <= not y10d;          y10a <= x1n nand y10c;

  y10f <= x1 nand x2n;       y10e <= not y10f;          y10g <= x3n nand x4;

  y10b <= y10e nand y10g;    y10n <= y10a nand y10b;    y10 <= not y10n;



end bench;

