package Task::EGA;
use strict;
use warnings;
use autodie;

our $VERSION = '0.1.3';

sub dependencies {
    return (
        # EGA
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
            [   [ 'Bio::Seq',                             0 ],
                [ 'Bio::ASN1::EntrezGene',                0 ],
                [ 'Bio::Graphics',                        0 ],
                [ 'Bio::Tools::Run::Alignment::Clustalw', 0 ],
                [ 'Bio::DB::EUtilities',                  1.72 ],    # 1.73 inc::TestHelper
            ],
        ],
        [   'Bio::Phylo',
            1,
            [   ['Math::CDF'], ['Math::Random'], ['PDF::API2'], ['XML::XML2JSON'],
                [ 'Bio::Phylo', 0 ],
            ],
        ],
        [   'circos',
            1,
            [   ['Config::General'], ['Data::Dumper'],
                ['Math::Bezier'],    ['Math::BigInt'],
                ['Math::BigFloat'],  ['Math::Round'],
                ['Math::VecStat'],   ['Params::Validate'],
                ['Readonly'],        ['Regexp::Common'],
                ['Set::IntSpan'],    ['Statistics::Basic'],
                ['Text::Balanced'],  ['Text::Format'],
                [ 'Font::TTF::Font', 0 ],
            ],
        ],
        [   'Others',
            1,
            [   ['DateTime::Format::Natural'], ['File::HomeDir'],
                ['DBD::CSV'],                  ['Path::Class'],
                ['File::Listing'],             ['File::Remove'],
                ['File::Rename'],              ['File::Copy::Recursive'],
                ['List::Flatten'],             [ 'String::Compare', 0 ],
                [ 'LWP::Online', 0 ], [ 'LWP::Protocol::https', 0 ],
                [ 'LWP::Protocol::socks', 0 ],
            ],
        ],
        [   'AlignDB',
            1,
            [   [ 'AlignDB::IntSpan',   0 ],
                [ 'AlignDB::Util',      0 ],
                [ 'AlignDB::Stopwatch', 0 ],
                [ 'AlignDB::Util',      0 ],
                [ 'AlignDB::Run',       0 ],
                [ 'App::Fasops',        0 ],
                [ 'App::RL',            0 ],
            ],
        ],

        # AlignDB
        [   'Test::*', 0,
            [ ['Test::Class'], ['Test::Roo'], ['Test::Taint'], ['Test::Without::Module'], ],
        ],
        [   'Moose related',
            0, [ ['MooX::Options'], ['MooseX::Storage'], ['MooseX::AttributeHelpers'], ],
        ],
        [   'Develop',
            0,
            [   ['App::pmuninstall'], ['CPAN::Mini'],
                ['CPANDB'],           ['Dist::Milla'],
                ['Module::Path'],     ['Pod::POM::Web'],
                ['Search::Indexer'],  ['Parallel::ForkManager'],
                ['Proc::Background'], ['Devel::CheckLib'],
                ['Import::Into'],     ['PPI::XS'],
            ],
        ],
        [   'Gtk3 stuffs',
            0,
            [ ['Glib'], ['Cairo'], ['Cairo::GObject'], ['Glib::Object::Introspection'], ['Gtk3'], ],
        ],
        [   'Database and WWW',
            0,
            [   ['DBD::mysql'],        ['DBIx::Class::Helpers'],
                ['DBIx::XHTML_Table'], ['DBM::Deep'],
                ['MongoDB'],           ['Mojolicious'],
                ['IO::All'],           ['IO::All::LWP'],
            ],
        ],
        [   'text, rtf and xlsx',
            0,
            [   ['Roman'],                   ['Text::Table'],
                ['Time::Duration'],          ['Excel::Writer::XLSX'],
                ['Spreadsheet::ParseExcel'], ['Spreadsheet::WriteExcel'],
                ['RTF::Writer'],             ['Chart::Math::Axis'],
            ],
        ],
        [   'Math and Stat',
            0,
            [   ['Math::Random::MT::Auto'], ['PDL'],
                ['Statistics::Lite'],       ['Statistics::TTest'],
                ['Set::Light'],             ['Math::GSL'],
                ['Statistics::R'],
            ],
        ],
        [   'AlignDB extra',
            0,
            [   [ 'AlignDB::Window', 0 ],
                [ 'AlignDB::Codon',  0 ],
                [ 'AlignDB::DeltaG', 0 ],
                [ 'AlignDB::GC',     0 ],
                [ 'AlignDB::SQL',    0 ],
                [ 'AlignDB::ToXLSX', 0 ],
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
    my $current = shift;

    $class->iter_deps(
        sub {
            my ( $name, $cond, $deps ) = @_;

            if ($cond) {
                $fh->print("# $name\n");
            }
            else {
                ( my $ident = $name ) =~ s/[^A-Za-z_]+/_/g;
                $fh->print( "feature '", lc($ident), "', '$name' => sub {\n" );
            }

            for my $dep ( @{$deps} ) {
                my ( $module, $version ) = @{$dep};
                if ( !defined($version) and $current ) {
                    $version = version_for($module);
                }

                if ($version) {
                    $fh->printf( "requires '%s', '%s';\n", $module, $version );
                }
                else {
                    $fh->printf( "requires '%s';\n", $module );
                }
            }

            if ( !$cond ) {
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
