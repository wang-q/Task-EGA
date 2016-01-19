use lib 'lib';
use Task::EGA;
use FileHandle;

# with module verions
my $current = shift;

open my $out, ">", "cpanfile" or die $!;
Task::EGA->cpanfile($out, $current);
