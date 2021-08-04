\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "The Lord is Coming."
  subtitle    = "Sankey No. 182"
  subsubtitle = "N.H. No. 42"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "E. A. Hoffman."
%  arranger    = "arranger"
%  opus        = "opus"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key g \major
  \time 4/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s4 s1*3 s2.
  \mark \markup { \box "A" } s4 s1*3 s2.
  \mark \markup { \box "B" } s4 s1*3 s2.
  \mark \markup { \box "C" } s4 s1*3 s2.
  \mark \markup { \box "D" } s4 s1*2
  \mark \markup { \box "E" }    s1*2 s2
  \mark \markup { \box "F" } s2 s1*2 s2.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  \repeat unfold 2 {
    d'4
    g4 4 4 8[a]
    b4 4 4 g
    a8 4. g4 fis
    g2. \bar "|" \break
  }
  b4
  d4 4 4 b % B
  c4 4 4 a
  b4 8[c] d4 b
  a4 4 4 \bar "|" \break d,4
  g4 4 4 8[a] b4 4 4 g % C
  a8 4. g4 fis
  g2. \bar "|" \break \tuplet 3/2 {d8^\markup\smallCaps Chorus.  e fis}
  g16 8. 8. 16 4 b % D
  a2. \tuplet 3/2 {d,8 fis g}
  a16 8. 8. 16 4 c % E
  b2. 8 c
  d8. 16 8 8 \bar "|" \break b4 d16 8.
  d8 c8 8. 16 g4 \tuplet 3/2 {g8 a b} % F
  a16 8. 8. 16 g4 fis
  g2.
}

alto = \relative {
  \autoBeamOff
  \repeat unfold 2 {
    d'4
    d4 4 4 g8[fis]
    g4 4 4 d
    e8 4. d4 4
    d2.
  }
  g4
  g4 d g g % B
  a4 fis a fis
  g4 8[a] b4 g
  fis4 4 4 d
  d4 4 4 g8[fis] % C
  g4 4 4 d
  e8 4. d4 4
  d2. \tuplet 3/2 {d8 e fis}
  g16 8. d8. 16 4 g % D
  fis2. \tuplet 3/2 {d8 fis g}
  a16 8. fis8. 16 4 a % E
  g2. 8 8
  g8. 16 8 8 4 16 f8.
  e8 8 8. 16 4 \tuplet 3/2 {g8 8 8} % F
  e16 8. 8. 16 d4 4
  d2.
}

tenor = \relative {
  \autoBeamOff
  \repeat unfold 2 {
    b4
    b4 4 4 d
    d4 4 4 b
    c8 4. b4 a
    b2.
  }
  d4
  b4 4 4 d % B
  d4 4 4 4
  d4 4 4 4
  d4 4 4 c
  b4 4 4 d % C
  d4 4 4 b
  c8 4. b4 a
  b2. \tuplet 3/2 {d,8 e fis}
  g16 8. b8. 16 4 d % D
  d4 8. 16 4 \tuplet 3/2 {d,8 fis g}
  a16 8. d8. 16 4 4 % E
  d4 8. 16 4 g,8 a
  b8. 16 8 8 d4 b16 8.
  g8 8 8. 16 4 \tuplet 3/2 {d'8 8 8}
  c16 8. 8. 16 b4 a
  b2.
}

bass = \relative {
  \autoBeamOff
  \repeat unfold 2 {
    g4
    g4 4 4 b,8[d]
    g4 4 4 4
    c,8 4. d4 4
    g2.
  }
  g4
  g4 4 4 4 % B
  d4 4 4 4
  g4 4 4 4
  d4 4 4 fis
  g4 4 4 b,8[d] % C
  g4 4 4 4
  c,8 4. d4 4
  g2. \tuplet 3/2 {d8 e fis}
  g16 8. 8. 16 4 4
  d4 8. 16 4 \tuplet 3/2 {d8 fis g}
  a16 8. d,8. 16 4 4 % E
  g4 8. 16 4 8 8
  g8. 16 8 8 4 16 8.
  c,8 8 8. 16 4 \tuplet 3/2 {b8 8 8} % F
  c16 8. 8. 16 d4 4
  g2.
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  Will you be read -- y when the Bride -- groom comes?
  Will you be read -- y when the Bride -- groom comes?
  Will your lamps be trimm'd and bright,
  Be it morn -- ing, noon, or night?
  Will you be read -- y when the Bride -- groom comes?
}

chorusMen = \lyricmode {
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  when He comes?
  _ _ _ _ _ _ _ _ _ _
  when He comes?
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _
}

wordsOne = \lyricmode {
  \set stanza = "1."
  The Lord is com -- ing by- and- by:
  Be read -- y when He comes!
  He comes from His fair home on high:
  Be read -- y when He comes!
  He is the Lord our Righ -- teous -- ness,
  And comes His cho -- sen ones to bless,
  And at His Fa -- ther's throne con -- fess:
  Be read -- y when He comes!
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  He soon will come to earth a -- gain:
  Be read -- y when He comes!
  Be -- gin His u -- ni -- ver -- sal reign:
  Be read -- y when He comes!
  With Hal -- le -- lu -- jahs heav'n will ring,
  When Je -- sus doth re -- demp -- tion bring;
  Oh, trim your lamps to meet your King!
  Be read -- y when He comes!
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Be -- hold! He comes to one and all:
  Be read -- y when He comes!
  And soon we'll hear the trum -- pet call:
  Be read -- y when He comes!
  To Judg -- ment call'd at His com -- mand,
  From ev -- 'ry clime, from ev -- 'ry land.
  Be -- fore His throne we all must stand:
  Be read -- y when He comes!
}
  
wordsMidiWomen = \lyricmode {
  \set stanza = "1."
  "The " "Lord " "is " com "ing " by and "by: "
  "\nBe " read "y " "when " "He " "comes! "
  "\nHe " "comes " "from " "His " "fair " "home " "on " "high: "
  "\nBe " read "y " "when " "He " "comes! "
  "\nHe " "is " "the " "Lord " "our " Righ teous "ness, "
  "\nAnd " "comes " "His " cho "sen " "ones " "to " "bless, "
  "\nAnd " "at " "His " Fa "ther's " "throne " con "fess: "
  "\nBe " read "y " "when " "He " "comes! "
  "\nWill " "you " "be " read "y " "when " "the " Bride "groom " "comes? "
  "\nWill " "you " "be " read "y " "when " "the " Bride "groom " "comes? "
  "\nWill " "your " "lamps " "be " "trimm'd " "and " "bright, "
  "\nBe " "it " morn "ing, " "noon, " "or " "night? "
  "\nWill " "you " "be " read "y " "when " "the " Bride "groom " "comes? "

  \set stanza = "2."
  "\nHe " "soon " "will " "come " "to " "earth " a "gain: "
  "\nBe " read "y " "when " "He " "comes! "
  "\nBe" "gin " "His " u ni ver "sal " "reign: "
  "\nBe " read "y " "when " "He " "comes! "
  "\nWith " Hal le lu "jahs " "heav'n " "will " "ring, "
  "\nWhen " Je "sus " "doth " re demp "tion " "bring; "
  "\nOh, " "trim " "your " "lamps " "to " "meet " "your " "King! "
  "\nBe " read "y " "when " "He " "comes! "
  "\nWill " "you " "be " read "y " "when " "the " Bride "groom " "comes? "
  "\nWill " "you " "be " read "y " "when " "the " Bride "groom " "comes? "
  "\nWill " "your " "lamps " "be " "trimm'd " "and " "bright, "
  "\nBe " "it " morn "ing, " "noon, " "or " "night? "
  "\nWill " "you " "be " read "y " "when " "the " Bride "groom " "comes? "

  \set stanza = "3."
  "\nBe" "hold! " "He " "comes " "to " "one " "and " "all: "
  "\nBe " read "y " "when " "He " "comes! "
  "\nAnd " "soon " "we'll " "hear " "the " trum "pet " "call: "
  "\nBe " read "y " "when " "He " "comes! "
  "\nTo " Judg "ment " "call'd " "at " "His " com "mand, "
  "\nFrom " ev "'ry " "clime, " "from " ev "'ry " "land. "
  "\nBe" "fore " "His " "throne " "we " "all " "must " "stand: "
  "\nBe " read "y " "when " "He " "comes! "
  "\nWill " "you " "be " read "y " "when " "the " Bride "groom " "comes? "
  "\nWill " "you " "be " read "y " "when " "the " Bride "groom " "comes? "
  "\nWill " "your " "lamps " "be " "trimm'd " "and " "bright, "
  "\nBe " "it " morn "ing, " "noon, " "or " "night? "
  "\nWill " "you " "be " read "y " "when " "the " Bride "groom " "comes? "
}

wordsMidiMen = \lyricmode {
  \set stanza = "1."
  "The " "Lord " "is " com "ing " by and "by: "
  "\nBe " read "y " "when " "He " "comes! "
  "\nHe " "comes " "from " "His " "fair " "home " "on " "high: "
  "\nBe " read "y " "when " "He " "comes! "
  "\nHe " "is " "the " "Lord " "our " Righ teous "ness, "
  "\nAnd " "comes " "His " cho "sen " "ones " "to " "bless, "
  "\nAnd " "at " "His " Fa "ther's " "throne " con "fess: "
  "\nBe " read "y " "when " "He " "comes! "
  "\nWill " "you " "be " read "y " "when " "the " Bride "groom " "comes? "
  "\nwhen " "He " "comes? "
  "\nWill " "you " "be " read "y " "when " "the " Bride "groom " "comes? "
  "\nwhen " "He " "comes? "
  "\nWill " "your " "lamps " "be " "trimm'd " "and " "bright, "
  "\nBe " "it " morn "ing, " "noon, " "or " "night? "
  "\nWill " "you " "be " read "y " "when " "the " Bride "groom " "comes? "

  \set stanza = "2."
  "\nHe " "soon " "will " "come " "to " "earth " a "gain: "
  "\nBe " read "y " "when " "He " "comes! "
  "\nBe" "gin " "His " u ni ver "sal " "reign: "
  "\nBe " read "y " "when " "He " "comes! "
  "\nWith " Hal le lu "jahs " "heav'n " "will " "ring, "
  "\nWhen " Je "sus " "doth " re demp "tion " "bring; "
  "\nOh, " "trim " "your " "lamps " "to " "meet " "your " "King! "
  "\nBe " read "y " "when " "He " "comes! "
  "\nWill " "you " "be " read "y " "when " "the " Bride "groom " "comes? "
  "\nwhen " "He " "comes? "
  "\nWill " "you " "be " read "y " "when " "the " Bride "groom " "comes? "
  "\nwhen " "He " "comes? "
  "\nWill " "your " "lamps " "be " "trimm'd " "and " "bright, "
  "\nBe " "it " morn "ing, " "noon, " "or " "night? "
  "\nWill " "you " "be " read "y " "when " "the " Bride "groom " "comes? "

  \set stanza = "3."
  "\nBe" "hold! " "He " "comes " "to " "one " "and " "all: "
  "\nBe " read "y " "when " "He " "comes! "
  "\nAnd " "soon " "we'll " "hear " "the " trum "pet " "call: "
  "\nBe " read "y " "when " "He " "comes! "
  "\nTo " Judg "ment " "call'd " "at " "His " com "mand, "
  "\nFrom " ev "'ry " "clime, " "from " ev "'ry " "land. "
  "\nBe" "fore " "His " "throne " "we " "all " "must " "stand: "
  "\nBe " read "y " "when " "He " "comes! "
  "\nWill " "you " "be " read "y " "when " "the " Bride "groom " "comes? "
  "\nwhen " "He " "comes? "
  "\nWill " "you " "be " read "y " "when " "the " Bride "groom " "comes? "
  "\nwhen " "He " "comes? "
  "\nWill " "your " "lamps " "be " "trimm'd " "and " "bright, "
  "\nBe " "it " morn "ing, " "noon, " "or " "night? "
  "\nWill " "you " "be " read "y " "when " "the " Bride "groom " "comes? "
}

\book {
  \bookOutputSuffix "repeat"
  \score {
     \unfoldRepeats
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new NullVoice = "aligner" \soprano
            \new Voice = "women" \partCombine { \global \soprano \bar "|." } { \global \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
            \new Lyrics \lyricsto "aligner"   \wordsThree
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor } { \global \bass }
            \new NullVoice \tenor
            \addlyrics \chorusMen
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
     \unfoldRepeats
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice {
               \RehearsalTrack
               \RehearsalTrack
               \RehearsalTrack
            }
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new NullVoice = "aligner" { \soprano \soprano \soprano }
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto \nl \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor }
                                            { \global \bass \bass \bass }
            \new NullVoice { \tenor \tenor \tenor }
            \addlyrics { \chorusMen \chorusMen \chorusMen }
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
     \unfoldRepeats
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice {
               \RehearsalTrack
               \RehearsalTrack
               \RehearsalTrack
            }
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new NullVoice = "aligner" { \soprano \soprano \soprano }
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto \nl \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor }
                                            { \global \bass \bass \bass }
            \new NullVoice { \tenor \tenor \tenor }
            \addlyrics { \chorusMen \chorusMen \chorusMen }
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
  \bookOutputSuffix "midi-women"
  \score {
     \unfoldRepeats
%    \articulate
        \new ChoirStaff <<
                                  % Soprano staff
          \new Staff = soprano
          <<
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new Voice { \global \soprano \soprano \soprano \bar "|." }
            \addlyrics \wordsMidiWomen
          >>
                                  % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \alto \nl \alto \nl \alto }
          >>
                                % Tenor/bass staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global \tenor \tenor \tenor }
          >>
                                  % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \bass \bass \bass }
          >>
        >>
    \midi {}
  }
}

\book {
  \bookOutputSuffix "midi-men"
  \score {
     \unfoldRepeats
%    \articulate
        \new ChoirStaff <<
                                  % Soprano staff
          \new Staff = soprano
          <<
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new Voice { \global \soprano \soprano \soprano \bar "|." }
          >>
                                  % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \alto \nl \alto \nl \alto }
          >>
                                % Tenor/bass staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global \tenor \tenor \tenor }
            \addlyrics \wordsMidiMen
          >>
                                  % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \bass \bass \bass }
          >>
        >>
    \midi {}
  }
}
