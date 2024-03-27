
my $str = "hello home";
print "Initial string: $str\n";

$str = $str . " world";
print "After adding 'world': $str\n";

my $index = index($str, "world");
if ($index != -1) {
    $str = substr($str, 0, $index);
}
print "After deleting 'world': $str\n";

my $index_l = index($str, "l");
if ($index_l != -1) {
    print "'l' found in the string\n";
} else {
    print "'l' not found in the string\n";
}

my $search_word = "home";
if ($str =~ /$search_word/) {
    print "'$search_word' found in the string\n";
} else {
    print "'$search_word' not found in the string\n";
}


my $start_index = index($str, $search_word);
if ($start_index != -1) {
    my $end_index = $start_index + length($search_word);
    $str = substr($str, 0, $start_index) . substr($str, $end_index);
}
print "After deleting '$search_word': $str\n";

my @chars = split(//, $str);
print "splitted string: @chars\n";