\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Praise ye the Lord!"
  subtitle    = "Sankey No. 215"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "H. R. Palmer."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Fanny J. Crosby."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key bes \major
  \time 4/4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" }    s1*2 s2
  \mark \markup { \box "B" } s2 s1*3
  \mark \markup { \box "C" }    s1*3
  \mark \markup { \box "D" }    s1*3
  \mark \markup { \box "E" }    s1   s2.
  \mark \markup { \box "F" } s4 s1*2
  \mark \markup { \box "G" }    s1*2
  \mark \markup { \box "H" }    s1*2
  \mark \markup { \box "I" }    s1   s2
  \mark \markup { \box "J" } s2 s1*2
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
  s1*11
  s2 \tempo 4=60 s2 \tempo 4=120
  s1*11
  s2 \tempo 4=60 s2
}

nl = { \bar "||" \break }

soprano = \relative {
%  \autoBeamOff
  bes'4\omit\mf^\markup\bold\italic "Boldly; in strict time." 8. 16 4 \tuplet 3/2 {a8 bes c}
  bes4 f d bes
  d'8. c16 bes8. c16 \bar "|" \break d4 e
  f2. r4 % B
  c4 8. 16 4 \tuplet 3/2 {b8 c d}
  c4 g ees c \break
  c'8. d16 ees8. c16 bes4 a % C
  c2(bes4) r
  d4 8. 16 4 \tuplet 3/2 {a8 bes c} \break
  bes4 g d2 % D
  g8. fis16 g8. a16 bes8. a16 bes8. c16
  d2~2\fermata
  d4 8. 16 f4 \tuplet 3/2 {ees8 d c} % E
  bes4 8. 16 d4 \bar "|" \break \tuplet 3/2 {c8 bes a}
  g8. a16 bes8. c16 d4 \tuplet 3/2 {bes8 c d} % F
  c2 bes4 r
  \tuplet 3/2 {f8^\p^\markup\smallCaps Chorus. 8 8} 8. 16 4 bes8.^\f c16 % G
  d8. bes16 ees8. bes16 d4 c8 r \break
  \tuplet 3/2 {f,8^\p f f} 8. 16 4  a8.^\f bes16 % H
  c8. bes16 d8. c16 4 bes8 r
  \tuplet 3/2 {d8^\f 8 8} 8. 16 4 \tuplet 3/2 {a8 bes c} % I
  bes4 \tuplet 3/2 {g8 a bes} \bar "|" \break a4 d,8 r
  ees8.^\cresc f16 g8. a16 bes8. c16 d8. ees16
  d4-. c-. bes2\omit\ff\fermata
}

alto = \relative {
%  \autoBeamOff
  bes'4\omit\mf 8. 16 4 \tuplet 3/2 {a8 bes c}
  bes4 f d bes
  bes'8. f16 d8. f16 bes4 4
  a2. r4 % B
  c4 8. 16 4 \tuplet 3/2 {b8 c d}
  c4 g ees c
  ees8. f16 g8. 16 f4 4 % C
  ees2(d4) r
  d'4 8. 16 4 \tuplet 3/2 {a8 bes c}
  bes4 g d2 % D
  g8. fis16 g8. a16 bes8. a16 bes8. c16
  fis,4 \tuplet 3/2 {g8 a g} fis2\fermata
  f4 8. 16 4 \tuplet 3/2 {f8 8 ees} % E
  d4 8. 16 4 \tuplet 3/2 {d8 8 c}
  bes8. ees16 g8. 16 f4 \tuplet 3/2 {d8 ees f} % F
  ees2 d4 r
  \tuplet 3/2 {d8^\p 8 8} 8. 16 4 8.^\f ees16 % G
  f8. d16 g8. 16 f4 8 r
  \tuplet 3/2 {ees8^\p 8 8} 8. 16 4 8.^\f 16 % H
  ees8. d16 f8. ees16 4 d8 r
  \tuplet 3/2 {d'8^\f 8 8} 8. 16 4 \tuplet 3/2 {a8 bes c} % I
  bes4 \tuplet 3/2 {g8 a bes} a4 d,8 r
  ees8.^\cresc f16 g8. a16 bes8. a16 bes8. g16 % J
  f4-. ees-. d2\omit\ff\fermata

}

tenor = \relative {
%  \autoBeamOff
  bes4\omit\mf 8. 16 4 \tuplet 3/2 {a8 bes c}
  bes4 f d bes
  d'8. c16 bes8. c16 d4 c
  c2. r4 % B
  c4 8. 16 4 \tuplet 3/2 {b8 c d}
  c4 g ees c
  c'8. b16 c8. 16 d4 c % C
  a2(bes4) r
  d4 8. 16 4 \tuplet 3/2 {a8 bes c}
  bes4 g d2 % D
  g8. fis16 g8. a16 bes8. 16 8. g16
  a4 \tuplet 3/2 {bes8 c bes} a2\fermata
  bes4 8. 16 a4 \tuplet 3/2 {c8 bes a} % E
  g4 8. 16 fis4 \tuplet 3/2 {a8 g fis}
  g8. 16 bes8. 16 4 \tuplet 3/2 {bes8 8 8} % F
  a2 bes4 r
  \tuplet 3/2 {bes8\omit\p 8 8} 8. 16 4 8. 16 % G
  bes8. 16 8. 16 4 a8 r
  \tuplet 3/2 {c8\omit\p 8 8} 8. 16 4 8.\omit\f bes16 % H
  a8. bes16 8. a16 4 bes8 r
  \tuplet 3/2 {d8 8 8} 8. 16 4 \tuplet 3/2 {a8 bes c} % I
  bes4 \tuplet 3/2 {g8 a bes} a4 d,8 r
  ees8.\omit\cresc f16 g8. a16 bes8. c16 d8. bes16
  bes4-. a-. bes2\omit\ff\fermata
}

bass = \relative {
%  \autoBeamOff
  bes4\omit\mf 8. 16 4 \tuplet 3/2 {a8 bes c}
  bes4 f d bes
  bes'8. f16 d8. f16 bes4 g
  f2. r4 % B
  c'4 8. 16 4 \tuplet 3/2 {b8 c d}
  c4 g ees c
  ees8. d16 c8. ees16 f4 4 % C
  f2(bes,4) r
  d'4 8. 16 4 \tuplet 3/2 {a8 bes c}
  bes4 g d2 % D
  g8. fis16 g8. a16 g8. 16 8. ees16
  d2~2\fermata
  bes'4 8. 16 a4 \tuplet 3/2 {c8 bes a} % E
  g4 8. 16 d4 \tuplet 3/2 {d8 8 8}
  ees8. 16 8. 16 bes4 \tuplet 3/2 {bes'8 8 8} % F
  f2 bes,4 r
  \tuplet 3/2 {bes8\omit\p 8 8} 8. 16 4 bes'8.\omit\f 16 % G
  bes8. 16 ees,8. 16 f4 8 r
  \tuplet 3/2 {f8\omit\p 8 8} 8. 16 4 8.\omit\f 16 % H
  f8. 16 8. 16 4 bes,8 r
  \tuplet 3/2 {d'8\omit\f 8 8} 8. 16 4 \tuplet 3/2 {a8 bes c} % I
  bes4 \tuplet 3/2 {g8 a bes} a4 d,8 r
  ees8.\omit\cresc f16 g8. a16 bes8. a16 bes8. ees,16 % J
  f4-. 4-. bes,2\omit\ff\fermata
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  Stead -- i -- ly march -- ing on,
  with our ban -- ner wa -- ving o'er us;
  Stead -- i -- ly march -- ing on,
  while we sing the joy -- ful cho -- rus;
  Stead -- i -- ly march -- ing on,
  pil -- lar and cloud go -- ing be -- fore us,
  To the realms of glo -- ry,
  to our home on high.
}

wordsOne = \lyricmode {
  \set stanza = "1."
  Praise ye the Lord!
  joy -- ful -- ly shout ho -- san -- na!
  Praise the Lord with glad ac -- claim:
  Lift up your hearts un -- to His throne with glad -- ness—
  Mag -- ni -- fy His ho -- ly name.
  march -- ing a -- long un -- der His ban -- ner bright,
  Trust -- ing in His mer -- cy as we go: __
  His light di -- vine ten -- der -- ly o'er us will shine;
  We shall be guid -- ed by His hand now and for -- ev -- er.
}
  
wordsAltoTenor = \lyricmode {
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _
  trust -- ing -- ly go:
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
}

wordsTwo = \lyricmode {
  \set stanza = "2."
  Praise ye the Lord!
  He is the King e -- ter -- nal;
  Glo -- ry be to God on high!
  Praise ye the Lord, tell of His lov -- ing kind -- ness—
  Join the cho -- rus of the sky.
  Still March -- ing on, chee -- ri -- ly march -- ing on,
  In the ranks of Je -- sus we will go: __
  Home to our rest, joy -- ful -- ly home where the blest
  Gath -- er and praise the Sa -- viour's name, praise Him for -- ev -- er.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Praise " "ye " "the " "Lord! "
  "\njoy" ful "ly " "shout " ho san "na! "
  "\nPraise " "the " "Lord " "with " "glad " ac "claim: "
  "\nLift " "up " "your " "hearts " un "to " "His " "throne " "with " glad "ness— "
  "\nMag" ni "fy " "His " ho "ly " "name. "
  "\nmarch" "ing " a "long " un "der " "His " ban "ner " "bright, "
  "\nTrust" "ing " "in " "His " mer "cy " "as " "we " "go: " 
  "\nHis " "light " di "vine " ten der "ly " "o'er " "us " "will " "shine; "
  "\nWe " "shall " "be " guid "ed " "by " "His " "hand " "now " "and " for ev "er. "
  "\nStead" i "ly " march "ing " "on, "
  "\nwith " "our " ban "ner " wa "ving " "o'er " "us; "
  "\nStead" i "ly " march "ing " "on, "
  "\nwhile " "we " "sing " "the " joy "ful " cho "rus; "
  "\nStead" i "ly " march "ing " "on, "
  "\npil" "lar " "and " "cloud " go "ing " be "fore " "us, "
  "\nTo " "the " "realms " "of " glo "ry, "
  "\nto " "our " "home " "on " "high. "

  \set stanza = "2."
  "\nPraise " "ye " "the " "Lord! "
  "\nHe " "is " "the " "King " e ter "nal; "
  "\nGlo" "ry " "be " "to " "God " "on " "high! "
  "\nPraise " "ye " "the " "Lord, " "tell " "of " "His " lov "ing " kind "ness— "
  "\nJoin " "the " cho "rus " "of " "the " "sky. "
  "\nStill " March "ing " "on, " chee ri "ly " march "ing " "on, "
  "\nIn " "the " "ranks " "of " Je "sus " "we " "will " "go: " 
  "\nHome " "to " "our " "rest, " joy ful "ly " "home " "where " "the " "blest "
  "\nGath" "er " "and " "praise " "the " Sa "viour's " "name, " "praise " "Him " for ev "er. "
  "\nStead" i "ly " march "ing " "on, "
  "\nwith " "our " ban "ner " wa "ving " "o'er " "us; "
  "\nStead" i "ly " march "ing " "on, "
  "\nwhile " "we " "sing " "the " joy "ful " cho "rus; "
  "\nStead" i "ly " march "ing " "on, "
  "\npil" "lar " "and " "cloud " go "ing " be "fore " "us, "
  "\nTo " "the " "realms " "of " glo "ry, "
  "\nto " "our " "home " "on " "high. "
}

wordsMidiAlto = \lyricmode {
  \set stanza = "1."
  "Praise " "ye " "the " "Lord! "
  "\njoy" ful "ly " "shout " ho san "na! "
  "\nPraise " "the " "Lord " "with " "glad " ac "claim: "
  "\nLift " "up " "your " "hearts " un "to " "His " "throne " "with " glad "ness— "
  "\nMag" ni "fy " "His " ho "ly " "name. "
  "\nmarch" "ing " a "long " un "der " "His " ban "ner " "bright, "
  "\nTrust" "ing " "in " "His " mer "cy " "as " "we " "go, " trust ing "ly " "go: "
  "\nHis " "light " di "vine " ten der "ly " "o'er " "us " "will " "shine; "
  "\nWe " "shall " "be " guid "ed " "by " "His " "hand " "now " "and " for ev "er. "
  "\nStead" i "ly " march "ing " "on, "
  "\nwith " "our " ban "ner " wa "ving " "o'er " "us; "
  "\nStead" i "ly " march "ing " "on, "
  "\nwhile " "we " "sing " "the " joy "ful " cho "rus; "
  "\nStead" i "ly " march "ing " "on, "
  "\npil" "lar " "and " "cloud " go "ing " be "fore " "us, "
  "\nTo " "the " "realms " "of " glo "ry, "
  "\nto " "our " "home " "on " "high. "

  \set stanza = "2."
  "\nPraise " "ye " "the " "Lord! "
  "\nHe " "is " "the " "King " e ter "nal; "
  "\nGlo" "ry " "be " "to " "God " "on " "high! "
  "\nPraise " "ye " "the " "Lord, " "tell " "of " "His " lov "ing " kind "ness— "
  "\nJoin " "the " cho "rus " "of " "the " "sky. "
  "\nStill " March "ing " "on, " chee ri "ly " march "ing " "on, "
  "\nIn " "the " "ranks " "of " Je "sus " "we " "will " "go, " trust ing "ly " "go: "
  "\nHome " "to " "our " "rest, " joy ful "ly " "home " "where " "the " "blest "
  "\nGath" "er " "and " "praise " "the " Sa "viour's " "name, " "praise " "Him " for ev "er. "
  "\nStead" i "ly " march "ing " "on, "
  "\nwith " "our " ban "ner " wa "ving " "o'er " "us; "
  "\nStead" i "ly " march "ing " "on, "
  "\nwhile " "we " "sing " "the " joy "ful " cho "rus; "
  "\nStead" i "ly " march "ing " "on, "
  "\npil" "lar " "and " "cloud " go "ing " be "fore " "us, "
  "\nTo " "the " "realms " "of " glo "ry, "
  "\nto " "our " "home " "on " "high. "
}

\book {
  \bookOutputSuffix "repeat"
  \score {
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new NullVoice = "aligner" \soprano
            \new NullVoice = "alignerA" \alto
            \new Voice = "women" \partCombine { \global \soprano \bar "|." } { \global \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
            \new Lyrics \lyricsto "alignerA" { \set fontSize = #-2 \wordsAltoTenor }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor } { \global \bass }
          >>
        >>
    \layout {
      indent = 1.5\cm
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}

\book {
  \bookOutputSuffix "single"
  \score {
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice {
               \RehearsalTrack
               \RehearsalTrack
            }
            \new Voice {
              \TempoTrack
              \TempoTrack
            }
            \new NullVoice = "alignerA" { \alto \alto }
            \new NullVoice = "aligner" { \soprano \soprano }
            \new Voice = "women" \partCombine { \global \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                            }
            \new Lyrics \lyricsto "alignerA" { \set fontSize = #-2 \wordsAltoTenor \wordsAltoTenor }
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor \tenor }
                                            { \global \bass \bass }
          >>
        >>
    \layout {
      indent = 1.5\cm
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}

\book {
  \bookOutputSuffix "singlepage"
  \paper {
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    paper-height = 2000\mm
    ragged-bottom = true
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice {
               \RehearsalTrack
               \RehearsalTrack
            }
            \new Voice {
              \TempoTrack
              \TempoTrack
            }
            \new NullVoice = "alignerA" { \alto \alto }
            \new NullVoice = "aligner" { \soprano \soprano }
            \new Voice = "women" \partCombine { \global \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                            }
            \new Lyrics \lyricsto "alignerA" { \set fontSize = #-2 \wordsAltoTenor \wordsAltoTenor }
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor \tenor }
                                            { \global \bass \bass }
          >>
        >>
    \layout {
      indent = 1.5\cm
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}

\book {
  \bookOutputSuffix "midi-sop-bass"
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Voice {
              \TempoTrack
              \TempoTrack
            }
            \new Voice { \global \soprano \soprano \bar "|." }
            \addlyrics \wordsMidi
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \alto \nl \alto }
          >>
                                % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global \tenor \tenor }
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \bass \bass }
          >>
        >>
    \midi {}
  }
}

\book {
  \bookOutputSuffix "midi-alto-tenor"
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Voice {
              \TempoTrack
              \TempoTrack
            }
            \new Voice { \global \soprano \soprano \bar "|." }
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \alto \nl \alto }
            \addlyrics \wordsMidiAlto
          >>
                                % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global \tenor \tenor }
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \bass \bass }
          >>
        >>
    \midi {}
  }
}
