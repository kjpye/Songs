\version "2.14.0"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

     \header {
        title = "O Come, O Come, Emmanuel"
        subtitle = "SATB"
        composer = "Traditional"
        arranger = \markup {\italic {arr.} Andrew Hawryluk}
        copyright = \markup \tiny \center-column {
              "©2004 Andrew Hawryluk    www.musicbyandrew.ca"
              "You can share and modify this work under the Creative Commons Attribution-Noncommercial 3.0 License."
              "To view a copy of this license, visit http://creativecommons.org/licenses/by-nc/3.0/"
	    "Voices rearranged and different verses chosen by Kevin Pye and Grant Diffey"
	    \today }
     }
     
%!     \paper { #(set-paper-size "a4" 'landscape) }

     global = {
        \key e \minor
        \time 4/4
        \once \override Score.MetronomeMark #'transparent = ##t
        \tempo 4 = 105
     }
     
     sopranoMusic = \relative c' {
        \partial 4 e4
        \repeat volta 3 {
        g4 b b b a( c b) a g2.
        a4 b g e g a( fis e) d e2.
        a4 a e e fis g2( fis4) e d2.
        g4 a b b b a( c b) a g2.
        d'4 d2. b4 b2.
        b4 a( c b) a g2. a4 b g e g a( fis e) d}
        \alternative {{e2. e4} {e2. r4}}
%        \key g \minor \bar "||"
%        
%        bes4 d d d c( ees d) c bes2.
%        c4 d bes g bes c( a g) f g2.
%        c4 c g g a bes2( a4) g f2.
%        bes4 c d d d c( ees d) c bes2.
%        f'4 f2. d4 d2.
%        d4 c( ees d^\markup \italic{molto rit.}) c bes c d bes g2.
%        bes4 c2( d4) d d1
        \bar "|."
     }
     
     tenorMusic = \relative c {
        \partial 4 e4
        \repeat volta 3 {        
        g b b b a( c b) a g2.
        a4 b g e g a( fis e) d e2.
        a4 a e e fis g2( fis4) e d2.
        g4 fis g g g a2( g4) fis g2.
        b4 a2. g4 fis2.
        fis4 a2( g4) fis g2. fis4 g g e e fis2( e4) d}
        \alternative {{e2. e4} {e2. r4}}
%        \key g \minor \bar "||"
%        
%        bes4 bes bes bes a( c bes) a g2.
%        a4 bes bes g g g2. f4 g2.
%        g4 g g g g g2( f4) e f2.
%        bes4 a bes bes bes bes2. a4 f2.
%        d'4 c2. bes4 a2.
%        bes4 a( c bes) a g a bes bes bes2.
%        g4 a2( bes4) a b1
        \bar "|."
     }
     
     altoMusic = \relative c' {
        \partial 4 e4
        \repeat volta 3 {
        e g g g fis( a g) fis e2.
        d4 g e e e d2( b4) b e2.
        e4 c c c d e2( d4) cis d2.
        g4 d d d d e2. d4 g2.
        g4 fis2. e4 dis2.
        dis4 e2. d?4 e2. d4 d d c e d2( b4) b}
        \alternative {{e2. e4} {e2. r4}}
%        \key g \minor \bar "||"
%        
%        g4 g g g g2. g4 g2.
%        f4 f f ees d ees2( d4) d d2.
%        ees4 ees ees ees ees d2( c4) c f2.
%        f4 f f f f g2( f4) f d2.
%        bes'4 a2. g4 fis2.
%        g4 g2. fis4 g4 f f f ees2. ees4 ees( g2) fis4 g1
        \bar "|."
     }

     bassMusic = \relative c {
        \partial 4 e4
        \repeat volta 3 {
        e g g g fis( a g) fis e2.
        d4 g e e e d2( b4) b e2.
        e4 c c c d e2( d4) cis d2.
        g4 d d g, b c(a b) d g2.
        g4 d2. e4 b2.
        b4 c( a b) d e2. d4 g, b c b a2( b4) b}
        \alternative {{e2. e4} {e2. r4}}
%        \key g \minor \bar "||"
%        
%        g4 g d d ees( c d) ees d2.
%        c4 bes d ees d c2( d4) d g,2.
%        c4 c c ees ees d2( c4) c f2.
%        f4 f f bes, d ees( c f) f bes,2.
%        bes'4 f2. g4 d2.
%        d4 ees( c d) d d c bes d ees2. c4 c( ees d) d g,1
     }
     
     firstverse = \lyricmode {
        O come, O come, Em- man- u- el,
        And ran- som cap- tive Is- ra- el
        That mourns in lone- ly ex- ile here
        Un- til the Son of God __ ap- pear.
        Re- joice! Re- joice!
        Em- man- u- el
        Shall come to thee, O Is- ra- el. __
        O 
     }
     
%     secondverse = \lyricmode {
%        _ come, Thou Rod of Jes- se, free
%        Thine own from Sa- tan’s tyr- an- ny;
%        From depths of hell Thy peo- ple save,
%        And give them vic- t’ry o’er __ the grave.
%    }
     
     secondverse = \lyricmode {
       _ come, Thou Wis- dom from on high,
       Who ord'r- est all things might- i- ly;
       To us the path of know- ledge show,
       And teach us in her ways to go.
     }

     thirdverse = \lyricmode {
        _ come, Thou Day- spring, come __ and cheer
        Our spi- rits by Thine ad- vent here;
        And drive a- way the shades __ of night
        And pierce the clouds and bring __ us light!
      }

     fourthverse = \lyricmode {
       _ come, Des- ire of nat- ions, bind
       In one the hearts of all man- kind;
       Bid Thou our sad div- i- sions cease,
       And be Thy- self our King of Peace.
%       Re- joice! Re- joice!
%       Em- man- u- el
%       Shall come to thee, O Is- ra- el. __
     }

     Mfirstverse = \lyricmode {
        "O " "come, " "O " "come, " "Em" "man" "u" "el, "
        "/And " "ran" "som " "cap" "tive " "Is" "ra" "el "
        "/That " "mourns " "in " "lone" "ly " "ex" "ile " "here "
        "/Un" "til " "the " "Son " "of " "God " "ap" "pear. "
        "/Re" "joice! " "Re" "joice! "
        "/Em" "man" "u" "el "
        "/Shall " "come " "to " "thee, " "O " "Is" "ra" "el. "
	}
%Msecondverse = \lyricmode {
%        "\O " "come, " "Thou " "Rod " "of " "Jes" "se, " "free "
%        "/Thine " "own " "from " "Sa" "tan’s " "tyr" "an" "ny; "
%        "/From " "depths " "of " "hell " "Thy " "peo" "ple " "save, "
%        "/And " "give " "them " "vic" "t’ry " "o’er " "the " "grave. "
%        "/Re" "joice! " "Re" "joice! "
%        "/Em" "man" "u" "el "
%        "/Shall " "come " "to " "thee, " "O " "Is" "ra" "el. "
%}
     Msecondverse = \lyricmode {
       "/O " "come, " "Thou " "Wis" "dom " "from " "on " "high, "
       "/Who " "ord'r" "est " "all " "things " might i ly;
       "/To " "us " "the " "path " "of " know "ledge " show,
       "/And " "teach " "us " "in " "her " "ways " "to " go.
        "/Re" "joice! " "Re" "joice! "
        "/Em" "man" "u" "el "
        "/Shall " "come " "to " "thee, " "O " "Is" "ra" "el. "
     }

Mthirdverse = \lyricmode {
        "\O " "come, " "Thou " "Day" "spring, " "come " "and " "cheer "
        "/Our " "spi" "rits " "by " "Thine " "ad" "vent " "here; "
        "/And " "drive " "a" "way " "the " "shades " "of " "night "
        "/And " "pierce " "the " "clouds " "and " "bring " "us " "light! "
        "/Re" "joice! " "Re" "joice! "
        "/Em" "man" "u" "el " "is " "come " "to " "thee, "
        "/O " "Is" "ra" "el."
     }
Mfourthverse = \lyricmode {
       "/O " "come, " "Des" "ire " "of " "nat" "ions, " "bind "
  "/In " "one " "the " "hearts " "of " "all " "man" "kind; "
  "/Bid " "Thou " "our " "sad " "div" "i" "sions " "cease, "
  "/And " "be " "Thy" "self " "our " "King " "of " "Peace. "
        "/Re" "joice! " "Re" "joice! "
        "/Em" "man" "u" "el " "is " "come " "to " "thee, "
        "/O " "Is" "ra" "el."
     }

     \score {
        \new ChoirStaff <<
           \new Staff = women <<
              \clef "treble"
              \new Voice =
                "soprano" { \voiceOne << \global \sopranoMusic >> }
              \new Voice =
                "alto" { \voiceTwo << \global \altoMusic >> }
           >>
           
           \lyricsto "soprano" \new Lyrics { \firstverse }
           \lyricsto "soprano" \new Lyrics \thirdverse
           \lyricsto "soprano" \new Lyrics \fourthverse
           
           \new Staff = men <<
              \clef bass
              \new Voice =
                "tenor" { \voiceOne <<\global \tenorMusic >> }
              \new Voice =
                "bass" { \voiceTwo <<\global \bassMusic >> }
           >>
           
        >>
     
        \layout {
           \context {
              \Score
              \override BarNumber #'padding = #2
           }
        }
     }
     \score {
         <<
           \new Staff = sopranos <<
              \set Staff.midiInstrument = "flute"
              \new Voice =
                "Msoprano" { \voiceOne << \global \unfoldRepeats \sopranoMusic >> }
           >>
           \new Staff = altos <<
              \set Staff.midiInstrument = "clarinet"
              \new Voice =
                "Malto" { \voiceTwo << \global \unfoldRepeats \altoMusic >> }
           >>
           
           \lyricsto "Msoprano" \new Lyrics { \Mfirstverse
%					      \Msecondverse
					      \Mthirdverse
					      \Mfourthverse
					      }
           % \lyricsto "soprano" \new Lyrics \secondverse
           
           \new Staff = tenors <<
              \set Staff.midiInstrument = "oboe"
              \new Voice =
                "Mtenor" { \voiceOne <<\global \unfoldRepeats \tenorMusic >> }
           >>
           \new Staff = basses <<
              \set Staff.midiInstrument = "bassoon"
              \new Voice =
                "Mbass" { \voiceTwo <<\global \unfoldRepeats \bassMusic >> }
           >>
         >>

        \midi {}
     }
