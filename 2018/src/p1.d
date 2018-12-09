import std.stdio;  
import std.string;
import std.conv;

void main(string[] args) { 
  int s = 0;
  int f = 0; // part two
  int p = 0; // part one
  int[string] s_t;

  s_t[to!string(s)] = 1;

  while ( f == 0 ) {

    auto file = File("../data/p1", "r");
    while ( !file.eof() ) {
      string line = chomp(file.readln());

      if ( !file.eof() ) {
        s += to!int(line);
        s_t[to!string(s)] += 1;
        if ( s_t[to!string(s)] == 2 && f == 0) {
          writeln("first twice is ", s);
          f = 1;
        }
      }
    }
 
    p += 1;
    if ( p == 1){
      writeln("part 1 answer is:", s);
    }
  }  
}
