
my %HoA = (
    flintstones => ["fred", "barney"],
    jetsons     => ["george", "jane", "elroy"],
    simpsons    => ["homer", "marge", "bart"],
);

sub print_array_of_hashes {
    my (%HoA) = @_;
    foreach my $family (keys %HoA) {
        print "family $family: ";
        foreach my $member (@{$HoA{$family}}) {
            print "$member ";
        }
        print "\n";
    }
}

sub find_by_key {
    my ($HoA_ref, $key) = @_;
    if (exists $HoA_ref->{$key}) {
        print "members of $key: @{$HoA_ref->{$key}}\n";
    } else {
        print "falimy $key not found\n";
    }
}

sub find_person {
    my ($HoA_ref, $person) = @_;
    foreach my $family (keys %$HoA_ref) {
        if (grep { $_ eq $person } @{$HoA_ref->{$family}}) {#first hit return
            print "$person is in family $family.\n";
            return;
        }
    }
    print "$person not found in families.\n";
}

print_array_of_hashes(%HoA);
print "\n";

find_by_key(\%HoA, "flintstones");
find_by_key(\%HoA, "simpsons");
find_by_key(\%HoA, "griffins");
print "\n";

find_person(\%HoA, "fred");
find_person(\%HoA, "bart");
find_person(\%HoA, "peter");