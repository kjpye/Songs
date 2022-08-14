\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "The Harvest is Passing."
  subtitle    = "Sankey No. 442"
  subsubtitle = "Sankey 880 No. 243"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "P. P. Bliss."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "H. C. Anstey."
%  meter       = \markup\smallCaps "meter"
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key g \major
  \time 2/4
  \partial 8
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \repeat unfold 2 {
    \mark \markup { \box "A" } s8 s2*3 s4.
    \mark \markup { \box "B" } s8 s2*3 s4.
  }
  \mark \markup { \box "C" } s8 s2*3 s4.
  \mark \markup { \box "D" } s8 s2*3 s4.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo Andante 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  \repeat unfold 2 {
    d'8\omit\mf
    b'4 a8 g
    e4 d8 8
    g4 fis8 g
    b8 a4 \bar "||" \break d,8
    b'4 a8 g % B
    c4 b8 g
    a4 g8 fis
    g4. \bar "||" \break
  }
  g8^\markup\smallCaps Refrain.
  a4^\cresc 8 8
  b8 b r b^\<
  c4 8 8
  b4^\f r8 \bar "||" \break g8^\pp
  a4 8 8 % D
  b8 8 r g
  a4 g8 fis
  g4.\fermata
}

alto = \relative {
  \autoBeamOff
  \repeat unfold 2 {
    b8
    d4 c8 b
    c4 b8 d
    cis4 8 8
    d8 4 8
    d4 c8 b % B
    e4 d8 8
    e4 d8 8
    d4.
  }
  d8\omit\cresc
  d4 8 8 % C
  d8 8 r g\omit\<
  g4 8 8
  g4\omit\f r8 d\omit\pp
  d4 8 8 % D
  d8 8 r d
  e4 d8 8
  d4.\fermata
}

tenor = \relative {
  \autoBeamOff
  \repeat unfold 2 {
    g8
    g4 8 8
    g4 8 b
    g4 a8 g
    g8 fis4 8
    g4 8 8 % B
    g4 8 b
    c4 b8 a
    b4.
  }
  g8
  fis4 8 8 % C
  g8 8 r d'
  e4 8 8
  d4 r8 g,^\pp
  fis4 8 8
  g8 8 r b
  c4 b8 a
  b4.\fermata
}

bass = \relative {
  \autoBeamOff
  \repeat unfold 2 {
    g8
    g4 8 8
    g4 8 fis
    e4 8 8
    d8 4 8
    g4 8 8 % B
    g4 8 8
    c,4 d8 8
    g,4.
  }
  b8\omit\cresc
  d4 8 8 % C
  g8 8 r g
  g4 8 8
  g4 r8 b,\omit\pp
  d4 8 8 % D
  g8 8 r g
  c,4 d8 8
  g,4.\fermata
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  The har -- vest is pass -- ing,
  the sum -- mer will end;
  "\'The" har -- vest is pass -- ing,
  the sum -- mer will "end;\""
}

chorusMen = \lyricmode {
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  Hark, sin -- ner, while God from on high doth en -- treat thee,
  And warn -- ings with ac -- cents of mer -- cy doth blend;
  Give ear to His voice, lest in judg -- ment He meet thee:
  "\"The" har -- vest is pass -- ing, the sum -- mer will "end.\""
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  How oft of the dan -- ger and guilt He hath told thee!
  How oft still the mes -- sage of mer -- cy doth send!
  Haste, haste, while He waits in His arms to en -- fold thee:
  "\"The" har -- vest is pass -- ing, the sum -- mer will "end.\""
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Des -- pised and re -- jec -- ted, at length He may leave thee;
  What an -- guish and gor -- ror the bo -- som will read!
  The haste thee, O sin -- nerm while He will re -- ceive thee:
  "\"The" har -- vest is pass -- ing, the sum -- mer will "end.\""
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  The Sa -- viour will call thee in judg -- ment be -- fore Him;
  Oh, how to His scep -- trem and make Him thy Friend:
  Now yield Him thy jeart, and make hast to a -- dore Him:
  "\"The" har -- vest is pass -- ing, the sum -- mer will "end.\""
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Hark, " sin "ner, " "while " "God " "from " "on " "high " "doth " en "treat " "thee, "
  "\nAnd " warn "ings " "with " ac "cents " "of " mer "cy " "doth " "blend; "
  "\nGive " "ear " "to " "His " "voice, " "lest " "in " judg "ment " "He " "meet " "thee: "
  "\n\"The " har "vest " "is " pass "ing, " "the " sum "mer " "will " "end.\" "
  "\nThe " har "vest " "is " pass "ing, "
  "\nthe " sum "mer " "will " "end; "
  "\n\'The " har "vest " "is " pass "ing, "
  "\nthe " sum "mer " "will " "end;\"\n"

  \set stanza = "2."
  "\nHow " "oft " "of " "the " dan "ger " "and " "guilt " "He " "hath " "told " "thee! "
  "\nHow " "oft " "still " "the " mes "sage " "of " mer "cy " "doth " "send! "
  "\nHaste, " "haste, " "while " "He " "waits " "in " "His " "arms " "to " en "fold " "thee: "
  "\n\"The " har "vest " "is " pass "ing, " "the " sum "mer " "will " "end.\" "
  "\nThe " har "vest " "is " pass "ing, "
  "\nthe " sum "mer " "will " "end; "
  "\n\'The " har "vest " "is " pass "ing, "
  "\nthe " sum "mer " "will " "end;\"\n"

  \set stanza = "3."
  "\nDes" "pised " "and " re jec "ted, " "at " "length " "He " "may " "leave " "thee; "
  "\nWhat " an "guish " "and " gor "ror " "the " bo "som " "will " "read! "
  "\nThe " "haste " "thee, " "O " sin "nerm " "while " "He " "will " re "ceive " "thee: "
  "\n\"The " har "vest " "is " pass "ing, " "the " sum "mer " "will " "end.\" "
  "\nThe " har "vest " "is " pass "ing, "
  "\nthe " sum "mer " "will " "end; "
  "\n\'The " har "vest " "is " pass "ing, "
  "\nthe " sum "mer " "will " "end;\"\n"

  \set stanza = "4."
  "\nThe " Sa "viour " "will " "call " "thee " "in " judg "ment " be "fore " "Him; "
  "\nOh, " "how " "to " "His " scep "trem " "and " "make " "Him " "thy " "Friend: "
  "\nNow " "yield " "Him " "thy " "jeart, " "and " "make " "hast " "to " a "dore " "Him: "
  "\n\"The " har "vest " "is " pass "ing, " "the " sum "mer " "will " "end.\" "
  "\nThe " har "vest " "is " pass "ing, "
  "\nthe " sum "mer " "will " "end; "
  "\n\'The " har "vest " "is " pass "ing, "
  "\nthe " sum "mer " "will " "end;\" "
}

wordsMidiMen = \lyricmode {
}

\book {
  \bookOutputSuffix "midi"
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Voice { \repeat unfold \verses \TempoTrack     }
            \new Voice { \global \repeat unfold \verses \soprano \bar "|." }
            \addlyrics \wordsMidi
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \repeat unfold \verses { \alto \nl } \bar "|." }
          >>
                                % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global \repeat unfold \verses \tenor }
            \addlyrics \wordsMidiMen
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \repeat unfold \verses \bass }
          >>
        >>
    \midi {}
  }
}

\book {
  \bookOutputSuffix "repeat"
  \score {
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff = women \with { printPartCombineTexts = ##f }
          <<
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new NullVoice = "aligner" \soprano
            \new Voice \partCombine { \global \soprano \bar "|." } { \global \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
            \new Lyrics \lyricsto "aligner"   \wordsThree
            \new Lyrics \lyricsto "aligner"   \wordsFour
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine { \global \tenor } { \global \bass }
            \new NullVoice = alignerT { \tenor }
          >>
          \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT \chorusMen
        >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}

singlescore = {
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff = women \with { printPartCombineTexts = ##f }
          <<
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack }
            \new NullVoice = "aligner" { \repeat unfold \verses \soprano }
            \new Voice \partCombine { \global \repeat unfold \verses \soprano \bar "|." }
                                    { \global \repeat unfold \verses { \alto \nl } \bar "|." }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                              \wordsFour  \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine { \global \repeat unfold \verses \tenor }
                                    { \global \repeat unfold \verses \bass }
            \new NullVoice = alignerT { \repeat unfold \verses \tenor }
          >>
          \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT { \repeat unfold \verses \chorusMen }
        >>
}

\book {
  \bookOutputSuffix "single"
  \score {
    \singlescore
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
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
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
    \singlescore
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}
