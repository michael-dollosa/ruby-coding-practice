def multiply(a,b)
  multiply(b,a) if a < b
  b.zero? ? 0 : a + multiply(a,b-1)
end
