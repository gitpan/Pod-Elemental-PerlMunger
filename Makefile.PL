
use strict;
use warnings;



use ExtUtils::MakeMaker 6.30;



my %WriteMakefileArgs = (
  "ABSTRACT" => "a thing that takes a string of Perl and rewrites its documentation",
  "AUTHOR" => "Ricardo SIGNES <rjbs\@cpan.org>",
  "BUILD_REQUIRES" => {
    "File::Find" => 0,
    "File::Temp" => 0,
    "Moose" => 0,
    "Pod::Elemental" => 0,
    "Test::More" => "0.96",
    "strict" => 0,
    "warnings" => 0
  },
  "CONFIGURE_REQUIRES" => {
    "ExtUtils::MakeMaker" => "6.30"
  },
  "DISTNAME" => "Pod-Elemental-PerlMunger",
  "EXE_FILES" => [],
  "LICENSE" => "perl",
  "NAME" => "Pod::Elemental::PerlMunger",
  "PREREQ_PM" => {
    "List::MoreUtils" => 0,
    "Moose" => 0,
    "Moose::Role" => 0,
    "PPI" => 0,
    "Pod::Elemental" => "0.092941",
    "namespace::autoclean" => 0
  },
  "VERSION" => "0.093332",
  "test" => {
    "TESTS" => "t/*.t"
  }
);


unless ( eval { ExtUtils::MakeMaker->VERSION(6.56) } ) {
  my $br = delete $WriteMakefileArgs{BUILD_REQUIRES};
  my $pp = $WriteMakefileArgs{PREREQ_PM};
  for my $mod ( keys %$br ) {
    if ( exists $pp->{$mod} ) {
      $pp->{$mod} = $br->{$mod} if $br->{$mod} > $pp->{$mod};
    }
    else {
      $pp->{$mod} = $br->{$mod};
    }
  }
}

delete $WriteMakefileArgs{CONFIGURE_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.52) };

WriteMakefile(%WriteMakefileArgs);



