use strict;
use warnings;
use File::Copy;

# my $directory_normal = "ClaseNormal";
# my $directory_malas = "ClaseMalas";
my $directory_benignas = "output/train/benign";

# unless(mkdir $directory_normal){
#     die "No se pudo crear $directory_normal \n";
# }


# unless(mkdir $directory_malas){
#     die "No se pudo crear $directory_malas \n";
# }

# unless(mkdir $directory_benignas){
#     die "No se pudo crear $directory_benignas \n";
# }

# Apuntar al directorio que tiene las imagenes a mover
opendir DIR1, "data/Train" or die "cannot open dir: $!";
my @default_files= grep { ! /^\.\.?$/ } readdir  DIR1;

my $total = 0;
foreach my $file (@default_files){
	chomp($file);
    $total = $total+1;
    print "$file\n";
}
print "hay $total ejemplos";


my $benignos_file = 'Benign_List.csv';

open(my $benignos_file_fh, '<:encoding(UTF-8)', $benignos_file)
  or die "Could not open file '$benignos_file' $!";
chomp(my @benignos_v = <$benignos_file_fh>);

print "Benigno \n";
my $cont = 0;
my $cont2 = 0;
foreach my $benign(@benignos_v)
{
    if(grep $_ eq $benign, @default_files)
    {
        $cont=$cont+1;
        print $cont."\n";
        # copy("$benign", "/$directory_benignas/$benign");
        system("cp data/Train/$benign $directory_benignas/$cont+'.dcm'");
    }
    else
    {
        print $benign."\n";
        $cont2 = $cont2+1;
    }
}

print("Failures $cont2")



