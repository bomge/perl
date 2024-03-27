sub create_matrix {
    my ($rows, $cols) = @_;
    my @matrix;

    for (my $i = 0; $i < $rows; $i++) {
        my @row;
        for (my $j = 0; $j < $cols; $j++) {
            push @row, int(rand(10));
        }
        push @matrix, \@row;
    }

    return @matrix;
}

sub print_matrix {
    my @matrix = @_;

    for my $row (@matrix) {
        print join("\t", @$row), "\n";
    }
    print "\n";
}



sub add_matrices {
    my ($matrix1, $matrix2) = @_;
    my @result;

    for (my $i = 0; $i < scalar @$matrix1; $i++) {
        my @row;
        for (my $j = 0; $j < scalar @{$matrix1->[$i]}; $j++) {
            push @row, $matrix1->[$i][$j] + $matrix2->[$i][$j];
        }
        push @result, \@row;
    }

    return @result;
}

my @matrix1 = create_matrix(6, 6);
print "matrix 1:\n";
print_matrix(@matrix1);

my @matrix2 = create_matrix(6, 6);
print "matrix 2:\n";
print_matrix(@matrix2);

my @result_matrix = add_matrices(\@matrix1, \@matrix2);
print "sum matrix:\n";
print_matrix(@result_matrix);


# sub sort_matrix {
#     my @matrix = @_;

#     for my $row (@matrix) {
#         @$row = sort { $a <=> $b } @$row;
#     }

#     return @matrix;
# }

# @matrix1 = sort_matrix(@matrix1);
# print "sorted matrix 1:\n";
# print_matrix(@matrix1);