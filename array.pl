#!/usr/bin/perl

sub multiply_even_elements {
    my ($arr_ref, $multiplier) = @_;
    for (my $i = 0; $i < scalar(@$arr_ref); $i++) {
        if ($arr_ref->[$i] % 2 == 0) {
            $arr_ref->[$i] *= $multiplier;
        }
    }
}

sub find_element {
    my ($arr_ref, $element) = @_;
    my $index = -1;
    for (my $i = 0; $i < scalar(@$arr_ref); $i++) {
        if ($arr_ref->[$i] == $element) {
            $index = $i;
            last;
        }
    }
    return $index;
}

sub insert_element {
    my ($arr_ref, $index, $element) = @_;
    splice @$arr_ref, $index, 0, $element;
}



my @arr = (1, 2, 3, 4, 5, 6, 7, 8, 9, 10);
print "array: @arr\n";

my $arr_ref = \@arr;

splice @$arr_ref, 3, 1;
print "array after remove 3 index: @$arr_ref\n";

push @$arr_ref, 11, 12, 13;
print "array after push 11, 12, 13: @$arr_ref\n";

my $search_element = 7;
my $index = find_element($arr_ref, $search_element);
if ($index == -1) {
    print "element $search_element not found\n";
} else {
    print "element $search_element has index $index\n";
}

my $insert_index = 4;
my $insert_element = 20;
insert_element($arr_ref, $insert_index, $insert_element);
print "array after inster $insert_element after index $insert_index: @$arr_ref\n";


multiply_even_elements($arr_ref, 3);
print "array after multiply even elems by 3: @$arr_ref\n";