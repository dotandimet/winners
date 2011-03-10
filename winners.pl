#!/usr/bin/env perl

use warnings;
use strict;
use List::Util qw(max min);

my (%authors, $min_birth, $max);

while (<DATA>){
    chomp;
    my ($name, $birth, $end) = split(/\t/, $_);
    $end = 2010 unless ($end);
    $authors{$name} = [$birth, $end];
    $min_birth = $birth if (!$min_birth || $birth < $min_birth);
    $max = $end if (!$max || $max < $end);
}
for my $year ($min_birth..$max) {
    my $living = 0;
    for my $author (values %authors) {
        my ($birth, $end) = @$author;
        if (($birth <= $year) && ($end >= $year)) {
            $living++;
        }
    }
    print "$year\t$living\n";
}
# data from here: http://www.nicholaswhyte.info/sf/nh2.htm
__DATA__
Connie Willis	1945	
Poul Anderson	1926	2001
Joe Haldeman	1943	
Fritz Leiber	1910	1992
Ursula K. Le Guin	1929	
Harlan Ellison	1934	
Lois McMaster Bujold	1949	
Ted Chiang	1967	
Arthur C. Clarke	1917	2008
Greg Bear	1951	
Isaac Asimov	1920	1992
Neil Gaiman	1960	
Orson Scott Card	1951	
John Varley	1947	
Roger Zelazny	1937	1995
Nancy Kress	1948	
George R.R. Martin	1948	
Frederik Pohl	1919	
James Tiptree Jr	1915	1987
Michael D. Resnick	1942	
Larry Niven	1938	
Samuel R Delany	1942	
Octavia E. Butler	1947	2006
Kelly Link	1969	
David Brin	1950	
Clifford D Simak	1904	1988
Vonda N. McIntyre	1948	
Spider Robinson	1948	
Terry Bisson	1942	
Jack Vance	1920	
Paolo Bacigalupi	1972	
Michael Chabon	1963	
Peter Beagle	1939	
Jack Williamson	1908	2006
David Gerrold	1944	
Charles Sheffield	1934	2002
George Alec Effinger	1947	2002
William Gibson	1948	
Barry B. Longyear	1942	
Jeanne Robinson	1948	2010
Theodore Sturgeon	1918	1985
Frank Herbert	1920	1986
Daniel Keyes	1927	
Robert Silverberg	1935	
Michael Swanwick	1950	
Kim Stanley Robinson	1952	
Kate Wilhelm	1928	
Gordon R. Dickson	1923	2001
James Patrick Kelly	1951	
Geoffrey A. Landis	1955	
Robert J. Sawyer	1960	
Lucius Shepard	1947	
Suzy McKee Charnas	1939	
Joanna Russ	1937	
Anne McCaffrey	1926	
Brian W. Aldiss	1925	
Robert A Heinlein	1907	1988
Vernor Vinge	1944	
C.J. Cherryh	1942	
James Blish	1921	1975
Charles Stross	1964	
Elizabeth Bear	1971	
Catherine Asaro	1958	
John Kessel	1950	
Karen Joy Fowler	1950	
Elizabeth Hand	1957	
Carol Emshwiller	1921	
Walter Jon Williams	1953	
Bruce Sterling	1954	
Jane Yolen	1939	
Bruce Holland Rogers	1958	
Allen Steele	1958	
Esther M. Friesner	1951	
James Morrow	1947	
Pat Murphy	1955	
Gardner Dozois	1947	
Michael Bishop	1945	
Joan D. Vinge	1948	
Edward Bryant	1945	
Gene Wolfe	1931	
Gregory Benford	1941	
Charles L. Grant	1942	2006
Philip José Farmer	1918	2009
Walter M. Miller Jr	1923	1996
C.M. Kornbluth	1923	1958
Murray Leinster	1896	1975
China Miéville	1972	
Peter Watts	1958	
Will McIntosh	1962	
Kage Baker	1952	2010
Eugie Foster	1971	
Kij Johnson	1960	
Nina Kiriki Hoffman	1955	
Robert Reed	1956	
Ian McDonald	1960	
Tim Pratt	1976	
Jack McDevitt	1935	
Robert Charles Wilson	1953	
David D. Levine	1961	
Susannah Clarke	1959	
Ellen Klages	1954	
Eileen Gunn	1945	
Elizabeth Moon	1945	
Jeffrey Ford	1955	
Richard Chwedyk	1955	
Severna Park	1958	
J.K. Rowling	1965	
Kristine Kathryn Rusch	1960	
Dave Langford	1953	
Linda Nagata	1960	
Greg Egan	1961	
Mary A. Turzillo	1940	
Leslie What	1955	
Sheila Finch	1935	
Bill Johnson	1956	
Jerry Oltion	1957	
Nicola Griffith	1960	
Neal Stephenson	1959	
Jack Dann	1945	
Maureen F. McHugh	1959	
Harry Turtledove	1949	
Martha Soukup	1959	
Jack Cady	1932	2004
Janet Kagan	1945	2008
Pamela Sargent	1948	
Mike Conner	1951	
Alan Brennert	1954	
Dan Simmons	1948	
Elizabeth Ann Scarborough	1947	
Lawrence Watt-Evans 1954    
Timothy Zahn	1951	
Lisa Tuttle	1952	
Howard Waldrop	1946	
Tom Reamy	1935	1977
Gordon Eklund	1945	
R.A. Lafferty	1914	2002
Katherine MacLean	1925	
John Brunner	1934	1995
Alexei Panshin	1940	
Richard Wilson	1920	1987
Michael Moorcock	1939	
Richard McKenna	1913	1964
Philip K Dick	1928	1982
Robert Bloch	1917	1994
Avram Davidson	1923	1993
Mark Clifton	1906	1963
Frank Riley	1915	1996
Eric Frank Russell	1905	1978
Ray Bradbury	1920	
Alfred Bester	1913	1987
Damon Knight	1922	2002
George Orwell	1903	1950
Hal Clement	1922	2003
