# Basic set of tools
requires 'Archive::Extract';
requires 'Config::Tiny';
requires 'File::Find::Rule';
requires 'List::MoreUtils';
requires 'JSON::XS';
requires 'Text::CSV_XS';
requires 'YAML';
requires 'YAML::XS';
requires 'DB_File';

# Basic set of tools with huge tests
requires 'AnyEvent';
requires 'App::Ack';
requires 'DBI';
requires 'EV';
requires 'MCE';
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
requires 'Data::Stag';
requires 'Scalar::Util';
requires 'ExtUtils::Manifest';
requires 'CPAN';
requires 'Module::Build';
requires 'Test::Harness';
requires 'Test::Most';
requires 'URI::Escape';

# BioPerl recommended
requires 'Algorithm::Munkres';
requires 'Array::Compare';
requires 'Convert::Binary::C';
requires 'Error';
requires 'File::Sort';
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
requires 'Bio::Graphics';
requires 'Bio::Tools::Run::Alignment::Clustalw';

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
requires 'File::Remove';
requires 'File::Rename';
requires 'File::Copy::Recursive';
requires 'List::Flatten';
requires 'String::Compare';
requires 'LWP::Online';
requires 'LWP::Protocol::https';
requires 'LWP::Protocol::socks';

# AlignDB
requires 'AlignDB::IntSpan';
requires 'AlignDB::Stopwatch';
requires 'AlignDB::Run';
requires 'App::Fasops';
requires 'App::RL';

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
requires 'CPAN::Mini';
requires 'CPANDB';
requires 'Dist::Milla';
requires 'Module::Path';
requires 'Pod::POM::Web';
requires 'Search::Indexer';
requires 'Parallel::ForkManager';
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
requires 'DBIx::Class::Helpers';
requires 'DBM::Deep';
requires 'MongoDB';
requires 'Mojolicious';
requires 'IO::All';
requires 'IO::All::LWP';

# text and xlsx
requires 'Roman';
requires 'Text::Table';
requires 'Time::Duration';
requires 'Excel::Writer::XLSX', '0.88';
requires 'Spreadsheet::ParseExcel';
requires 'Spreadsheet::WriteExcel';
requires 'Chart::Math::Axis';

# Math and Stat
requires 'Math::Random::MT::Auto';
requires 'Statistics::Lite';
requires 'Statistics::TTest';
requires 'PDL';
requires 'Math::GSL';
requires 'Statistics::R';

# AlignDB extra
requires 'AlignDB::Window';
requires 'AlignDB::Codon';
requires 'AlignDB::DeltaG';
requires 'AlignDB::GC';
requires 'AlignDB::SQL';
requires 'AlignDB::ToXLSX';

