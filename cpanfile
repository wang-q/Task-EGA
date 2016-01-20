# Basic set of tools
requires 'Archive::Extract', '0.76';
requires 'Config::Tiny';
requires 'File::Find::Rule', '0.34';
requires 'List::MoreUtils', '0.413';
requires 'JSON::XS', '3.01';
requires 'Text::CSV_XS';
requires 'YAML', '1.15';
requires 'YAML::XS', '0.59';
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
requires 'SVG', '2.64';
requires 'GD::SVG', '0.33';

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
requires 'Algorithm::Munkres', '0.08';
requires 'Array::Compare', '2.11';
requires 'Convert::Binary::C', '0.77';
requires 'Error', '0.17024';
requires 'File::Sort', '1.01';
requires 'Graph', '0.9704';
requires 'HTML::TableExtract', '2.13';
requires 'PostScript::TextBlock', '0.06';
requires 'Set::Scalar', '1.29';
requires 'Sort::Naturally', '1.03';
requires 'SVG::Graph', '0.02';
requires 'XML::DOM::XPath', '0.14';
requires 'XML::LibXML', '2.0123';
requires 'XML::SAX::Writer', '0.56';
requires 'XML::Simple', '2.22';
requires 'XML::Twig', '3.49';
requires 'XML::Writer', '0.625';

# BioPerl
requires 'Bio::Seq';
requires 'Bio::ASN1::EntrezGene';
requires 'Bio::Graphics';
requires 'Bio::Tools::Run::Alignment::Clustalw';
requires 'Bio::DB::EUtilities', '1.72';

# Bio::Phylo
requires 'Math::CDF', '0.1';
requires 'Math::Random', '0.72';
requires 'PDF::API2', '2.025';
requires 'XML::XML2JSON', '0.06';
requires 'Bio::Phylo';

# circos
requires 'Config::General', '2.60';
requires 'Data::Dumper', '2.154';
requires 'Math::Bezier', '0.01';
requires 'Math::BigInt', '1.999715';
requires 'Math::BigFloat', '1.999715';
requires 'Math::Round', '0.07';
requires 'Math::VecStat', '0.08';
requires 'Params::Validate', '1.21';
requires 'Readonly', '2.00';
requires 'Regexp::Common', '2016010801';
requires 'Set::IntSpan', '1.19';
requires 'Statistics::Basic', '1.6611';
requires 'Text::Balanced', '2.03';
requires 'Text::Format', '0.59';
requires 'Font::TTF::Font';

# Others
requires 'DateTime::Format::Natural', '1.03';
requires 'File::HomeDir', '1.00';
requires 'DBD::CSV';
requires 'Path::Class', '0.35';
requires 'File::Listing', '6.04';
requires 'File::Remove', '1.55';
requires 'File::Rename', '0.20';
requires 'File::Copy::Recursive', '0.38';
requires 'List::Flatten', '0.01';
requires 'String::Compare';
requires 'LWP::Online';
requires 'LWP::Protocol::https';
requires 'LWP::Protocol::socks';

# AlignDB
requires 'AlignDB::IntSpan';
requires 'AlignDB::Util';
requires 'AlignDB::Stopwatch';
requires 'AlignDB::Util';
requires 'AlignDB::Run';
requires 'App::Fasops';
requires 'App::RL';

# Test::*
requires 'Test::Class', '0.50';
requires 'Test::Roo', '1.004';
requires 'Test::Taint', '1.06';
requires 'Test::Without::Module', '0.18';

# Moose related
requires 'MooX::Options', '4.022';
requires 'MooseX::Storage', '0.50';
requires 'MooseX::AttributeHelpers', '0.24';

# Develop
requires 'App::pmuninstall', '0.30';
requires 'CPAN::Mini', '1.111016';
requires 'CPANDB', '0.18';
requires 'Dist::Milla';
requires 'Module::Path', '0.19';
requires 'Pod::POM::Web', '1.20';
requires 'Search::Indexer', '0.77';
requires 'Parallel::ForkManager', '1.17';
requires 'Proc::Background', '1.10';
requires 'Devel::CheckLib', '1.05';
requires 'Import::Into', '1.002005';
requires 'PPI::XS', '0.902';

# Gtk3 stuffs
requires 'Glib';
requires 'Cairo';
requires 'Cairo::GObject';
requires 'Glib::Object::Introspection';
requires 'Gtk3';

# Database and WWW
requires 'DBD::mysql';
requires 'DBIx::Class::Helpers';
requires 'DBIx::XHTML_Table';
requires 'DBM::Deep';
requires 'MongoDB';
requires 'Mojolicious';
requires 'IO::All';
requires 'IO::All::LWP';

# text and xlsx
requires 'Roman', '1.24';
requires 'Text::Table', '1.130';
requires 'Time::Duration', '1.20';
requires 'Excel::Writer::XLSX', '0.88';
requires 'Spreadsheet::ParseExcel', '0.65';
requires 'Spreadsheet::WriteExcel', '2.40';
requires 'Chart::Math::Axis', '1.06';

# Math and Stat
requires 'Math::Random::MT::Auto', '6.22';
requires 'Statistics::Lite', '3.62';
requires 'Statistics::TTest', '1.1.0';
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

