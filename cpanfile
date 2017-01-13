# Basic set of tools
requires 'Archive::Extract';
requires 'Config::Tiny';
requires 'DB_File';
requires 'File::Find::Rule';
requires 'Getopt::Long::Descriptive';
requires 'List::MoreUtils';
requires 'JSON::XS';
requires 'Path::Tiny';
requires 'Text::CSV_XS';
requires 'Tie::IxHash';
requires 'YAML';
requires 'YAML::Syck';

# Basic set of tools with huge tests
requires 'AnyEvent';
requires 'App::Ack';
requires 'App::Cmd', '0.33';
requires 'DBI';
requires 'EV';
requires 'MCE', '1.81';
requires 'Moo';
requires 'Moose';
requires 'Perl::Tidy';
requires 'POE';
requires 'Template';
requires 'WWW::Mechanize';

# GD
requires 'GD';
requires 'SVG';
requires 'GD::SVG';

# BioPerl needed
requires 'IO::String';
requires 'Data::Stag', '0.11';
requires 'Scalar::Util';
requires 'ExtUtils::Manifest', '1.52';
requires 'Module::Build', '0.42';
requires 'CPAN', '1.81';
requires 'Test::Harness', '2.62';
requires 'Test::Most';
requires 'URI::Escape';

# BioPerl recommended
requires 'Algorithm::Munkres';
requires 'Array::Compare';
requires 'Clone';
requires 'Convert::Binary::C';
requires 'Error';
requires 'Graph';
requires 'HTML::TableExtract';
requires 'PostScript::TextBlock';
requires 'Set::Scalar';
requires 'Sort::Naturally';
requires 'SVG::Graph';
requires 'XML::DOM::XPath';
requires 'XML::LibXML';
requires 'XML::SAX::Writer';
requires 'XML::Simple';
requires 'XML::Twig';
requires 'XML::Writer';

# BioPerl
requires 'Bio::Seq';
requires 'Bio::ASN1::EntrezGene';

# Bio::Phylo
requires 'Math::CDF';
requires 'Math::Random';
requires 'PDF::API2';
requires 'XML::XML2JSON';
requires 'Bio::Phylo';

# circos
requires 'Config::General';
requires 'Data::Dumper';
requires 'Math::Bezier';
requires 'Math::BigInt';
requires 'Math::BigFloat';
requires 'Math::Round';
requires 'Math::VecStat';
requires 'Params::Validate';
requires 'Readonly';
requires 'Regexp::Common';
requires 'Set::IntSpan';
requires 'Statistics::Basic';
requires 'Text::Balanced';
requires 'Text::Format';
requires 'Font::TTF::Font';

# Others
requires 'DateTime::Format::Natural';
requires 'File::HomeDir';
requires 'DBD::CSV';
requires 'Path::Class';
requires 'File::Listing';
requires 'File::Copy::Recursive';
requires 'String::Compare';
requires 'LWP::Online';
requires 'LWP::Protocol::https';
requires 'LWP::Protocol::socks';

# My own modules
requires 'AlignDB::IntSpan';
requires 'AlignDB::Stopwatch';
requires 'AlignDB::SQL';
requires 'AlignDB::Codon';
requires 'AlignDB::Window';
requires 'AlignDB::DeltaG';
requires 'AlignDB::GC';
requires 'AlignDB::ToXLSX';
requires 'AlignDB::Run';
requires 'App::Fasops';
requires 'App::RL';
requires 'App::Rangeops';

# Bio::Graphics and BioPerl-run
requires 'Bio::Graphics';
requires 'Bio::Tools::Run::Alignment::Clustalw';

# Test::*
requires 'Test::Class';
requires 'Test::Roo';
requires 'Test::Taint';
requires 'Test::Without::Module';

# Moose related
requires 'MooX::Options';
requires 'MooseX::Storage';

# Develop
requires 'App::pmuninstall';
requires 'CPANDB';
requires 'Minilla';
requires 'Module::Path';
requires 'Pod::POM::Web';
requires 'Search::Indexer';
requires 'Proc::Background';
requires 'Devel::CheckLib';
requires 'Import::Into';
requires 'PPI::XS';

# Gtk3 stuffs
requires 'Glib';
requires 'Cairo';
requires 'Cairo::GObject';
requires 'Glib::Object::Introspection';
requires 'Gtk3';

# Database and WWW
requires 'DBD::mysql';
requires 'MongoDB';
requires 'Mojolicious';
requires 'IO::All';
requires 'IO::All::LWP';

# text and xlsx
requires 'Roman';
requires 'Text::Table';
requires 'Time::Duration';
requires 'Excel::Writer::XLSX', '0.88';
requires 'Spreadsheet::XLSX';
requires 'Chart::Math::Axis';

# Math and Stat
requires 'Math::Random::MT::Auto';
requires 'PDL';
requires 'Math::GSL';
requires 'Statistics::R';

