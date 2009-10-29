
use strict;
use warnings;

use ExtUtils::MakeMaker;

WriteMakefile(
  DISTNAME  => 'Pod-Elemental-PerlMunger',
  NAME      => 'Pod::Elemental::PerlMunger',
  AUTHOR    => "Ricardo\ SIGNES\ \<rjbs\@cpan\.org\>",
  ABSTRACT  => "a\ thing\ that\ takes\ a\ string\ of\ Perl\ and\ rewrites\ its\ documentation",
  VERSION   => '0.093020',
  EXE_FILES => [ qw() ],
  (eval { ExtUtils::MakeMaker->VERSION(6.31) } ? (LICENSE => 'perl') : ()),
  PREREQ_PM    => {
    "PPI" => '0',
    "Pod::Elemental" => '0.092941',
    "namespace::autoclean" => '0',
    "Moose" => '0',
  },
  test => {TESTS => 't/*.t'}
);

