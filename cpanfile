# Basic set of tools
requires 'Archive::Extract', '0.76';
requires 'Config::Tiny';
requires 'DB_File', '1.835';
requires 'File::Find::Rule', '0.34';
requires 'List::MoreUtils', '0.413';
requires 'JSON::XS', '3.01';
requires 'Text::CSV_XS';
requires 'YAML', '1.15';
requires 'YAML::XS', '0.59';

# Basic set of tools with huge tests
requires 'AnyEvent', '7.11';
requires 'App::Ack', '2.14';
requires 'DBI', '1.634';
requires 'EV', '4.22';
requires 'MCE', '1.608';
requires 'Moo', '2.000002';
requires 'Moose', '2.1604';
requires 'Perl::Tidy', '20150815';
requires 'POE', '1.367';
requires 'Template', '2.26';
requires 'WWW::Mechanize', '1.75';

# GD
requires 'GD', '2.56';
requires 'SVG', '2.64';
requires 'GD::SVG', '0.33';

# BioPerl needed
requires 'IO::String', '1.08';
requires 'Data::Stag', '0.14';
requires 'Scalar::Util', '1.42';
requires 'ExtUtils::Manifest', '1.70';
requires 'CPAN', '2.10';
requires 'Module::Build', '0.4214';
requires 'Test::Harness', '3.36';
requires 'Test::Most', '0.34';
requires 'URI::Escape', '1.71';

# BioPerl recommended
requires 'Algorithm::Munkres', '0.08';
requires 'Array::Compare', '2.11';
requires 'Convert::Binary::C', '0.77';
requires 'Error', '0.17024';
requires 'File::Sort', '1.01';
requires 'Graph', '0.9704';
requires 'HTML::TableExtract', '2.13';
requires 'GraphViz';
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
requires 'Glib', '1.320';
requires 'Cairo', '1.106';
requires 'Cairo::GObject', '1.004';
requires 'Glib::Object::Introspection', '0.040';
requires 'Gtk3', '0.026';

# Database and WWW
requires 'DBD::mysql', '4.033';
requires 'DBIx::Class::Helpers', '2.032000';
requires 'DBIx::XHTML_Table', '1.47';
requires 'DBM::Deep', '2.0013';
requires 'MongoDB';
requires 'Mojolicious', '6.40';
requires 'IO::All', '0.86';
requires 'IO::All::LWP', '0.14';

# text, rtf and xlsx
requires 'Roman', '1.24';
requires 'Text::Table', '1.130';
requires 'Time::Duration', '1.20';
requires 'Excel::Writer::XLSX', '0.88';
requires 'Spreadsheet::ParseExcel', '0.65';
requires 'Spreadsheet::WriteExcel', '2.40';
requires 'RTF::Writer', '1.11';
requires 'Chart::Math::Axis', '1.06';

# Math and Stat
requires 'Math::Random::MT::Auto', '6.22';
requires 'PDL', '2.015';
requires 'Statistics::Lite', '3.62';
requires 'Statistics::TTest', '1.1.0';
requires 'Set::Light', '0.04';
requires 'Math::GSL';
requires 'Statistics::R';

# AlignDB extra
requires 'AlignDB::Window';
requires 'AlignDB::Codon';
requires 'AlignDB::DeltaG';
requires 'AlignDB::GC';
requires 'AlignDB::SQL';
requires 'AlignDB::ToXLSX';

