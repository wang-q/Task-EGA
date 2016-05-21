package Task::EGA;
use strict;
use warnings;
use autodie;

our $VERSION = '0.1.7';

sub dependencies {
    return (
        # EGA
        [   'Basic set of tools',
            1,
            [   ['Archive::Extract'], ['Config::Tiny'],
                ['File::Find::Rule'], ['List::MoreUtils'],
                ['JSON::XS'],         ['Text::CSV_XS'],
                ['YAML'],             ['YAML::XS'],
                [ 'DB_File', 0 ],
            ],
        ],
        [   'Basic set of tools with huge tests',
            1,
            [   [ 'AnyEvent',       0 ],
                [ 'App::Ack',       0 ],
                [ 'DBI',            0 ],
                [ 'EV',             0 ],
                [ 'MCE',            0 ],
                [ 'Moo',            0 ],
                [ 'Moose',          0 ],
                [ 'Perl::Tidy',     0 ],
                [ 'POE',            0 ],
                [ 'Template',       0 ],
                [ 'WWW::Mechanize', 0 ],
            ],
        ],
        [ 'GD', 1, [ [ 'GD', 0 ], ['SVG'], ['GD::SVG'], ], ],
        [   'BioPerl needed',
            1,
            [   [ 'IO::String',         0 ],
                [ 'Data::Stag',         0 ],
                [ 'Scalar::Util',       0 ],
                [ 'ExtUtils::Manifest', 0 ],
                [ 'CPAN',               0 ],
                [ 'Module::Build',      0 ],
                [ 'Test::Harness',      0 ],
                [ 'Test::Most',         0 ],
                [ 'URI::Escape',        0 ],
            ],
        ],
        [   'BioPerl recommended',
            1,
            [   ['Algorithm::Munkres'], ['Array::Compare'],
                ['Convert::Binary::C'], ['Error'],
                ['File::Sort'],         ['Graph'],
                ['HTML::TableExtract'], ['PostScript::TextBlock'],
                ['Set::Scalar'],        ['Sort::Naturally'],
                ['SVG::Graph'],         ['XML::DOM::XPath'],
                ['XML::LibXML'],        ['XML::SAX::Writer'],
                ['XML::Simple'],        ['XML::Twig'],
                ['XML::Writer'],
            ],
        ],
        [   'BioPerl',
            1,
            [   [ 'Bio::Seq',                             0 ],
                [ 'Bio::ASN1::EntrezGene',                0 ],
                [ 'Bio::Graphics',                        0 ],
                [ 'Bio::Tools::Run::Alignment::Clustalw', 0 ],
            ],
        ],
        [   'Bio::Phylo',
            1,
            [   ['Math::CDF'], ['Math::Random'], ['PDF::API2'], ['XML::XML2JSON'],
                [ 'Bio::Phylo', 0 ],
            ],
        ],
        [   'circos', 1,
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
        [   'Others', 1,
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
                [ 'AlignDB::Stopwatch', 0 ],
                [ 'AlignDB::Run',       0 ],
                [ 'App::Fasops',        0 ],
                [ 'App::RL',            0 ],
            ],
        ],

        # AlignDB
        [   'Test::*', 1,
            [ ['Test::Class'], ['Test::Roo'], ['Test::Taint'], ['Test::Without::Module'], ],
        ],
        [   'Moose related',
            1, [ ['MooX::Options'], ['MooseX::Storage'], ['MooseX::AttributeHelpers'], ],
        ],
        [   'Develop',
            1,
            [   ['App::pmuninstall'], ['CPAN::Mini'],
                ['CPANDB'],           ['Dist::Milla'],
                ['Module::Path'],     ['Pod::POM::Web'],
                ['Search::Indexer'],  ['Parallel::ForkManager'],
                ['Proc::Background'], ['Devel::CheckLib'],
                ['Import::Into'],     ['PPI::XS'],
            ],
        ],
        [   'Gtk3 stuffs',
            1,
            [   [ 'Glib',                        0 ],
                [ 'Cairo',                       0 ],
                [ 'Cairo::GObject',              0 ],
                [ 'Glib::Object::Introspection', 0 ],
                [ 'Gtk3',                        0 ],
            ],
        ],
        [   'Database and WWW',
            1,
            [   [ 'DBD::mysql',           0 ],
                [ 'DBIx::Class::Helpers', 0 ],
                [ 'DBM::Deep',            0 ],
                [ 'MongoDB',              0 ],
                [ 'Mojolicious',          0 ],
                [ 'IO::All',              0 ],
                [ 'IO::All::LWP',         0 ],
            ],
        ],
        [   'text and xlsx',
            1,
            [   ['Roman'],                   ['Text::Table'],
                ['Time::Duration'],          [ 'Excel::Writer::XLSX', 0.88 ],
                ['Spreadsheet::ParseExcel'], ['Spreadsheet::WriteExcel'],
                ['Chart::Math::Axis'],
            ],
        ],
        [   'Math and Stat',
            1,
            [   ['Math::Random::MT::Auto'], ['Statistics::Lite'],
                ['Statistics::TTest'], [ 'PDL', 0 ],
                [ 'Math::GSL', 0 ], [ 'Statistics::R', 0 ],
            ],
        ],
        [   'AlignDB extra',
            1,
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

    cpanm --mirror-only --mirror https://stratopan.com/wangq/ega/full --interactive Task::EGA

=head1 AUTHOR

Qiang Wang <wang-q@outlook.com>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2015 by Qiang Wang.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut
