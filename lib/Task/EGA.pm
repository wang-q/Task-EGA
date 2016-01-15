package Task::EGA;
use strict;
use warnings;
use autodie;

our $VERSION = '0.0.1';

sub dependencies {
    return (
        [   'Basic set of tools',
            1,
            [   ['Archive::Extract'], ['Config::Tiny'],
                ['DB_File'],          ['File::Find::Rule'],
                ['List::MoreUtils'],  ['JSON::XS'],
                ['Text::CSV_XS'],     ['YAML'],
                ['YAML::XS'],
            ],
        ],
        [   'Basic set of tools with huge tests',
            1,
            [   ['AnyEvent'], ['App::Ack'], ['DBI'],   ['EV'],
                ['MCE'],      ['Moo'],      ['Moose'], ['Perl::Tidy'],
                ['POE'],      ['Template'], ['WWW::Mechanize'],
            ],
        ],
        [ 'GD', 1, [ ['GD'], ['SVG'], ['GD::SVG'], ], ],
        [   'BioPerl needed',
            1,
            [   ['IO::String'],    ['Data::Stag'],
                ['Scalar::Util'],  ['ExtUtils::Manifest'],
                ['CPAN'],          ['Module::Build'],
                ['Test::Harness'], ['Test::Most'],
                ['URI::Escape'],
            ],
        ],
        [   'BioPerl recommended',
            1,
            [   ['Algorithm::Munkres'],    ['Array::Compare'],
                ['Convert::Binary::C'],    ['Error'],
                ['File::Sort'],            ['Graph'],
                ['HTML::TableExtract'],    ['GraphViz'],
                ['PostScript::TextBlock'], ['Set::Scalar'],
                ['Sort::Naturally'],       ['SVG::Graph'],
                ['XML::DOM::XPath'],       ['XML::LibXML'],
                ['XML::SAX::Writer'],      ['XML::Simple'],
                ['XML::Twig'],             ['XML::Writer'],
            ],
        ],
        [   'BioPerl',
            1,
            [   ['Bio::Seq'],            ['Bio::ASN1::EntrezGene'],
                ['Bio::DB::EUtilities'], ['Bio::Graphics'],
                ['Bio::Tools::Run::Alignment::Clustalw'],
            ],
        ],
        [   'circos', 1,
            [   ['Config::General'],   ['Data::Dumper'],
                ['Font::TTF::Font'],   ['Math::Bezier'],
                ['Math::BigInt'],      ['Math::BigFloat'],
                ['Math::Round'],       ['Math::VecStat'],
                ['Params::Validate'],  ['Readonly'],
                ['Regexp::Common'],    ['Set::IntSpan'],
                ['Statistics::Basic'], ['Text::Balanced'],
                ['Text::Format'],
            ],
        ],
        [   'Bio::Phylo',
            1,
            [ ['Math::CDF'], ['Math::Random'], ['PDF::API2'], ['XML::XML2JSON'], ['Bio::Phylo'], ],
        ],
        [   'Others', 1,
            [   ['DateTime::Format::Natural'], ['File::HomeDir'],
                ['DBD::CSV'],                  ['Path::Class'],
                ['File::Listing'],             ['File::Remove'],
                ['File::Rename'],              ['File::Copy::Recursive'],
                ['List::Flatten'],             ['LWP::Online'],
                ['LWP::Protocol::https'],      ['LWP::Protocol::socks'],
                ['String::Compare'],
            ],
        ],
        [   'AlignDB::*',
            1,
            [   ['AlignDB::IntSpan'],   ['AlignDB::Util'],
                ['AlignDB::Stopwatch'], ['AlignDB::Codon'],
                ['AlignDB::Util'],      ['AlignDB::Run'],
                ['AlignDB::Window'],    ['App::Fasops'],
                ['App::RL'],
            ],
        ],
    );
}

sub iter_deps {
    my ( $class, $cb ) = @_;
    my @deps = $class->dependencies;
    while ( my $ref = splice @deps, 0, 1 ) {
        $cb->( @{$ref} );
    }
}

sub cpanfile {
    my $class   = shift;
    my $fh      = shift;
    my $version = shift;

    $class->iter_deps(
        sub {
            my ( $name, $cond, $deps ) = @_;
            my @modules = grep defined, map $_->[0], @$deps;
            ( my $ident = $name ) =~ s/[^A-Za-z_]+/_/g;

            if ($cond) {
                $fh->print("# $name\n");
                for my $module (@modules) {
                    if ($version) {
                        $fh->printf( "requires '%s', '%s';\n", $module, version_for($module) );
                    }
                    else {
                        $fh->print("requires '$module';\n");
                    }
                }
            }
            else {
                $fh->print( "feature '", lc($ident), "', '$name' => sub {\n" );
                for my $module (@modules) {
                    if ($version) {
                        $fh->printf( "requires '%s', '%s';\n", $module, version_for($module) );
                    }
                    else {
                        $fh->print("requires '$module';\n");
                    }
                }
                $fh->print("};\n");
            }
            $fh->print("\n");
        }
    );
}

sub version_for {
    my $dist = shift;

    ( my $module = $dist ) =~ s/-/::/g;
    my $info = `cpanm --info $module ` or return;
    return ( $info =~ /-([\d\.]+)\.tar\.gz/ )[0];
}

1;

__END__

=encoding utf-8

=for stopwords

=head1 NAME

Task::EGA - EGA bundle

=head1 SYNOPSIS

    cpanm --interactive Task::EGA

=head1 AUTHOR

Qiang Wang <wang-q@outlook.com>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2015 by Qiang Wang.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut
