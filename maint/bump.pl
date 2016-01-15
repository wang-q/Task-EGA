use lib 'lib';
use Task::EGA;
use FileHandle;

# with module verions
my $version = shift;

open my $out, ">", "cpanfile" or die $!;
Task::EGA->cpanfile($out, $version);
