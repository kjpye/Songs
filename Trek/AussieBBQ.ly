\version "2.25.0"

\include "predefined-guitar-fretboards.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "The Aussie Barbecue"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Eric Bogle"
%  arranger    = "arranger"
%  opus        = "opus"

%  poet        = "poet"
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key g \major
  \time 4/4
}

TempoTrack = {
  \global
  \tempo 4=120
  \set Score.tempoHideNote = ##t
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
  \textMark \markup { \box "1a" }
}

chorus = \relative {
  r2 r4 b'8 8 | a g g b, d d b' b | % 9
  c8 c b c e,4 r8 e16 e | fis8 a a a b a a g16 g | % 12
  fis8 g fis e d4 b'8 8 | a g g b, d d b' b | c c b c e,4 r8 e | % 14
  a8 a a a b a a fis | d8. 16 e8 fis g2 | % 17
}

melody = \relative {
  \global
  r2 r4 b'8. 16 | a g8. 8 d d d b' b | c c b16 c8. e,4 r8 e |
  fis8 a a a b a a g | fis16 g8. fis16 e8. d4 r8 b' | a g g b, b d r b' | % 4
  c8 8 b16 c8. e,4 r8 e16 e | fis8 a16 16 8 16 16 8 a a fis16 16 | % 7
  d8 8 e fis g2 |
  \chorus
  r2 r4 r8 b |
  a8 a g d d d r b' | c c b c e,4 r8 e | % 20
  fis8 a a16 a a a a8 a b16 a g g | fis8 g fis e d4 r8 b' | % 22
  8 g g b, d d d b' | c c b c e,4 r8 e16 e | % 24
  fis8 a a a b a a fis16 16 | d8 d e fis g2 | r2 r4 b8 b | % 26
  a8 g g b, d d b' b | c c b c e,4 r8 16 16 | % 29
  fis8 a a a b a a g16 g | fis8 g fis e d4 b'8 8 | % 31
  a8 g g b, d d b' b | c c b c e,4 r8 e | % 33
  a8 a a a b a a fis | d8. 16 e8 fis g2 | r2 r4 r8 b | % 35
  a8 g g d d d d b' | c c b c e,4 r8 e | % 38
  fis8 a a16 a a a b8 a a16 a g g | fis8 g fis e d4 r8 b' | % 40
  a8 g g b, b d b' b | c c b16 c8. e,4 r8 r16 e | % 42
  fis8 a a a b a a fis | d d e fis g2 | % 44
  \chorus
  r2 r4 r8 b |
  a8 g g d d d b' b | c c b c e,4 r8 16 16 | % 56
  fis8 a a16 a a a b8 a a16 a g g | fis8 g fis e d4 b'8 8 | % 58
  a8 g g b, d d r8 b' | c c b16 c8. e,4 r8 e | % 60
  fis8 a a a16 a b b a8 a fis16 e | d8 d e fis g2 |
  \chorus
%  \bar "|."
}

dynamicsMelody = {
  \override DynamicTextSpanner.style = #'none
}

wordsOne = \lyricmode {
  \set stanza = "1: Steve."
  When the sum -- mer sun is shin -- ing
  on Aus -- tra -- lia's hap -- py land
  Round count -- less fires in strange at -- tire
  in ma -- ny so -- lemn bands
  of glum Aus -- tra -- lians watch -- ing
  the lunch go up in flames
  By the smoke and the smell you can plain -- ly tell,
  that it's bar -- by time a -- gain
}

wordsChorus = \lyricmode {
  \set stanza = "Chorus: "
  When the steaks are bur -- ning fierce -- ly,
  when the smoke gets in your eyes
  When the snags all taste like fried tooth -- paste
  and your mouth is full of flies
  It's a na -- tional in -- sti -- tu -- tion,
  it's Aust -- ra -- lian through and through
  So come on mate and grab your plate,
  let's have a  bar -- be -- cue.
}

wordsTwo = \lyricmode {
  \set stanza = "2: Frank."
  The Scots eat lots of hag -- gis,
  the French eats snails and frogs
  The Greeks throw ka -- kis
  ov -- er their mou -- sa -- kis,
  and the Chi -- nese love hot dogs
  The Welsh -- men love to have a leek,
  the Ir -- ish like their stew
  But you just can't beat that half -- cooked meat
  at an Aus -- sie bar -- be -- cue.
}

wordsThree = \lyricmode {
  \set stanza = "3: Kath."
  There's flies stuck to the mar -- ga -- rine,
  the bread has gone rock hard.
  The kids are fight -- ing and the mos -- sies bi -- ting,
  who for -- got the Ae -- ro -- gard?
  There's bull ants in the es -- kie,
  and the beer is run -- ning out
  And what you saw in Mum's cole -- slaw,
  you just don't think a -- bout.

}

wordsFour = \lyricmode {
  \set stanza = "4: Steve."
  And when the bar -- by's o -- ver
  and you're home -- ward way you wend
  With a  quee -- zy tum -- my on the fa -- mily dun -- ny,
  ma -- y lone -- ly hours you'll spend
  You might find your -- self re -- flec -- ting,
  like ma -- ny of -- ten do
  Come rain or shine that's the bloo -- dy last time
  that you'll have a bar -- be -- cue!
}

midiWords = \lyricmode {
  \set stanza = "1: Steve."
  "[Steve] When " "the " sum "mer " "sun " "is " shin "ing "
  "\non " Aus tra "lia's " hap "py " "land "
  "\nRound " count "less " "fires " "in " "strange " at "tire "
  "\nin " ma "ny " so "lemn " "bands "
  "\nof " "glum " Aus tra "lians " watch "ing "
  "\nthe " "lunch " "go " "up " "in " "flames "
  "\nBy " "the " "smoke " "and " "the " "smell "
  "you " "can " plain "ly " "tell, "
  "\nthat " "it's " bar "by " "time " a "gain\n"

  \set stanza = "Chorus: "
  "\n[Chorus] When " "the " "steaks " "are " bur "ning " fierce "ly, "
  "\nwhen " "the " "smoke " "gets " "in " "your " "eyes "
  "\nWhen " "the " "snags " "all " "taste " "like " "fried " tooth "paste "
  "\nand " "your " "mouth " "is " "full " "of " "flies "
  "\nIt's " "a " na "tional " in sti tu "tion, "
  "\nit's " Aust ra "lian " "through " "and " "through "
  "\nSo " "come " "on " "mate " "and " "grab " "your " "plate, "
  "\nlet's " "have " "a "  bar be "cue.\n"

  \set stanza = "2: Frank."
  "\n[Frank] The " "Scots " "eat " "lots " "of " hag "gis, "
  "\nthe " "French " "eats " "snails " "and " "frogs "
  "\nThe " "Greeks " "throw " ka "kis "
  "\nov" "er " "their " mou sa "kis, "
  "\nand " "the " Chi "nese " "love " "hot " "dogs "
  "\nThe " Welsh "men " "love " "to " "have " "a " "leek, "
  "\nthe " Ir "ish " "like " "their " "stew "
  "\nBut " "you " "just " "can't " "beat " "that " half "cooked " "meat "
  "\nat " "an " Aus "sie " bar be "cue.\n"
  
  \set stanza = "Chorus: "
  "\n[Chorus] When " "the " "steaks " "are " bur "ning " fierce "ly, "
  "\nwhen " "the " "smoke " "gets " "in " "your " "eyes "
  "\nWhen " "the " "snags " "all " "taste " "like " "fried " tooth "paste "
  "\nand " "your " "mouth " "is " "full " "of " "flies "
  "\nIt's " "a " na "tional " in sti tu "tion, "
  "\nit's " Aust ra "lian " "through " "and " "through "
  "\nSo " "come " "on " "mate " "and " "grab " "your " "plate, "
  "\nlet's " "have " "a "  bar be "cue.\n"


  \set stanza = "3: Kath."
  "\n[Kath] There's " "flies " "stuck " "to " "the " mar ga "rine, "
  "\nthe " "bread " "has " "gone " "rock " "hard. "
  "\nThe " "kids " "are " fight "ing " "and " "the " mos "sies " bi "ting, "
  "\nwho " for "got " "the " Ae ro "gard? "
  "\nThere's " "bull " "ants " "in " "the " es "kie, "
  "\nand " "the " "beer " "is " run "ning " "out "
  "\nAnd " "what " "you " "saw " "in " "Mum's " cole "slaw, "
  "\nyou " "just " "don't " "think " a "bout.\n"

  \set stanza = "Chorus: "
  "\n[Chorus] When " "the " "steaks " "are " bur "ning " fierce "ly, "
  "\nwhen " "the " "smoke " "gets " "in " "your " "eyes "
  "\nWhen " "the " "snags " "all " "taste " "like " "fried " tooth "paste "
  "\nand " "your " "mouth " "is " "full " "of " "flies "
  "\nIt's " "a " na "tional " in sti tu "tion, "
  "\nit's " Aust ra "lian " "through " "and " "through "
  "\nSo " "come " "on " "mate " "and " "grab " "your " "plate, "
  "\nlet's " "have " "a "  bar be "cue.\n"

  \set stanza = "4: Steve."
  "\n[Steve] And " "when " "the " bar "by's " o "ver "
  "\nand " "you're " home "ward " "way " "you " "wend "
  "\nWith " "a "  quee "zy " tum "my " "on " "the " fa "mily " dun "ny, "
  "\nma" "y " lone "ly " "hours " "you'll " "spend "
  "\nYou " "might " "find " your "self " re flec "ting, "
  "\nlike " ma "ny " of "ten " "do "
  "\nCome " "rain " "or " "shine " "that's " "the " bloo "dy " "last " "time "
  "\nthat " "you'll " "have " "a " bar be "cue! "

  \set stanza = "Chorus: "
  "\n[Chorus] When " "the " "steaks " "are " bur "ning " fierce "ly, "
  "\nwhen " "the " "smoke " "gets " "in " "your " "eyes "
  "\nWhen " "the " "snags " "all " "taste " "like " "fried " tooth "paste "
  "\nand " "your " "mouth " "is " "full " "of " "flies "
  "\nIt's " "a " na "tional " in sti tu "tion, "
  "\nit's " Aust ra "lian " "through " "and " "through "
  "\nSo " "come " "on " "mate " "and " "grab " "your " "plate, "
  "\nlet's " "have " "a "  bar be "cue.\n"
}

pianoRHone = \relative {
  \global
  c4
  \bar "|."
}

pianoRHtwo = \relative {
  \global
  \voiceTwo
  c4
  \bar "|."
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
}

pianoLHone = \relative {
  \global
  c4
  \bar "|."
}

pianoLHtwo = \relative {
  \global
  \voiceTwo
  c4
  \bar "|."
}

\book {
  #(define output-suffix "single")
%  \paper {
%    top-margin = 0
%    left-margin = 7
%    right-margin = 1
%    paper-width = 190\mm
%    page-breaking = #ly:one-page-breaking
%    system-system-spacing.basic-distance = #15
%    system-separator-markup = \slashSeparator
%  }
  \score {
    \unfoldRepeats
    <<
      <<
        \new ChoirStaff
        <<
          \new Dynamics \TempoTrack
          \new Dynamics \dynamicsMelody
          \new Staff
          <<
            \new Voice \RehearsalTrack
            \new Voice = "melody" \melody
            \new Lyrics \lyricsto "melody" { \wordsOne   \wordsChorus
                                             \wordsTwo   \wordsChorus
                                             \wordsThree \wordsChorus
                                             \wordsFour  \wordsChorus
                                           }
          >>
        >>
%        \new PianoStaff
%        <<
%          \new Staff
%          <<
%            \new Voice \pianoRHone
%            \new Voice \pianoRHtwo
%          >>
%          \new Dynamics \dynamicsPiano
%          \new Staff
%          <<
%            \clef "bass"
%            \new Voice \pianoLHone
%            \new Voice \pianoLHtwo
%          >>
%        >>
      >>
    >>
    \layout {
      #(layout-set-staff-size 20)
      indent = 1.5\cm
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}

\book {
  #(define output-suffix "singlepage")
  \paper {
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
    \unfoldRepeats
    <<
      <<
        \new ChoirStaff
        <<
          \new Dynamics \TempoTrack
          \new Dynamics \dynamicsMelody
          \new Staff
          <<
            \new Voice \RehearsalTrack
            \new Voice = "melody" \melody
            \new Lyrics \lyricsto "melody" { \wordsOne   \wordsChorus
                                             \wordsTwo   \wordsChorus
                                             \wordsThree \wordsChorus
                                             \wordsFour  \wordsChorus
                                           }
          >>
        >>
%        \new PianoStaff
%        <<
%          \new Staff
%          <<
%            \new Voice \pianoRHone
%            \new Voice \pianoRHtwo
%          >>
%          \new Dynamics \dynamicsPiano
%          \new Staff
%          <<
%            \clef "bass"
%            \new Voice \pianoLHone
%            \new Voice \pianoLHtwo
%          >>
%        >>
      >>
    >>
    \layout {
      #(layout-set-staff-size 20)
      indent = 1.5\cm
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}

\book {
  #(define output-suffix "midi")
  \score {
    \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff
        <<
          \new Dynamics \TempoTrack
          \new Dynamics \dynamicsMelody
          \new Staff
          <<
            \new Voice = "melody" \melody
            \new Lyrics \lyricsto "melody" { \midiWords }
          >>
        >>
%        \new PianoStaff
%        <<
%          \new Staff
%          <<
%            \new Voice \pianoRHone
%            \new Voice \pianoRHtwo
%          >>
%          \new Dynamics \dynamicsPiano
%          \new Staff
%          <<
%            \clef "bass"
%            \new Voice \pianoLHone
%            \new Voice \pianoLHtwo
%          >>
%        >>
      >>
    >>
    \midi {}
  }
}
