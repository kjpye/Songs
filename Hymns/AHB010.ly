\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "The Lord's My Shepherd"
  subtitle    = "A. H. B. 10"
%  subsubtitle = "Sankey 880 No. Y"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Jessie Seymour Irvine (1836-87)"
  arranger    = "Arr. David Grant (1833-93)"
%  opus        = "opus"

  poet        = \markup\smallCaps "Psalm 23"
  meter       = \markup\smallCaps "86.86"
  piece       = \markup\smallCaps "Crimond"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key f \major
  \time 3/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s4 s2.*4
  \mark \markup { \box "B" }    s2.*5
  \mark \markup { \box "C" }    s2.*4 s2
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \voiceOne
  c'4
  a'2 bes8.(g16)
  c2 bes8(g)
  f2 e4
  f2 \breathe a4
  a4(g) g % B
  b2 4
  c2 \breathe a4
  a4(bes) a
  g2 a4
  bes4(c) bes % C
  a2 \breathe 4
  g4(bes) d
  f,2 e4
  f2
}

alto = \relative {
  \voiceTwo
  c'4
  f2 g8.(e16)
  a4(f) d
  c2 4
  c2 f4
  f2 4 % B
  d4(g) f
  e2 f4
  f4(g) f
  e2 f4
  g4(a) g % C
  f2 4
  d2 4
  c2 4
  c2
}

tenor = \relative {
  \voiceOne
  a4
  c2 bes4
  a2 bes4
  a2 g4
  a2 c4
  b2 4 % B
  d2 4
  c2 4
  c4(g) a8(bes)
  c2 4
  c2 4 % C
  c2 4
  bes2 4
  a2 g4
  a2
}

bass = \relative {
  \voiceTwo
  f4
  f2 4
  f2 bes,4
  c2 4
  f2 8(e)
  d2 4 % B
  g2 g,4
  c2 f4
  c2 4
  c4(bes') a
  g4(c,) d8(e) % C
  f2 4
  bes,2 4
  c2 4
  f2
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

verses = 5

wordsOne = \lyricmode {
  \set stanza = "1."
  The Lord's my shep -- herd, I'll not want,
  He makes me down to lie
  in pas -- tures green, he lead -- eth me
  the qui -- et wa -- ters by.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  My soul he doth re -- store a -- gain,
  and me to walk doth make
  with -- in the paths of right -- eous -- ness,
  ev'n for his own name's sake.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Yea, though I walk in death's dark vale,
  yet will I fear no ill:
  for thou art with me; and thy rod
  and staff me com -- fort still.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  My tab -- le thou hast fur -- nish -- ed
  in pre -- sence of my foes;
  my head thou dost with oil a -- noint,
  and my cup o -- ver -- flows.
}
  
wordsFive = \lyricmode {
  \set stanza = "5."
  Good -- ness and mer -- cy all my life
  shall sure -- ly fol -- low me:
  and in God's house for e -- ver -- more
  my dwell -- ing place shall be.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "The " "Lord's " "my " shep "herd, " "I'll " "not " "want, "
  "\nHe " "makes " "me " "down " "to " "lie "
  "\nin " pas "tures " "green, " "he " lead "eth " "me "
  "\nthe " qui "et " wa "ters " "by. "

  \set stanza = "2."
  "\nMy " "soul " "he " "doth " re "store " a "gain, "
  "\nand " "me " "to " "walk " "doth " "make "
  "\nwith" "in " "the " "paths " "of " right eous "ness, "
  "\nev'n " "for " "his " "own " "name's " "sake. "

  \set stanza = "3."
  "\nYea, " "though " "I " "walk " "in " "death's " "dark " "vale, "
  "\nyet " "will " "I " "fear " "no " "ill: "
  "\nfor " "thou " "art " "with " "me; " "and " "thy " "rod "
  "\nand " "staff " "me " com "fort " "still. "

  \set stanza = "4."
  "\nMy " tab "le " "thou " "hast " fur nish "ed "
  "\nin " pre "sence " "of " "my " "foes; "
  "\nmy " "head " "thou " "dost " "with " "oil " a "noint, "
  "\nand " "my " "cup " o ver "flows. "

  \set stanza = "5."
  "\nGood" "ness " "and " mer "cy " "all " "my " "life "
  "\nshall " sure "ly " fol "low " "me: "
  "\nand " "in " "God's " "house " "for " e ver "more "
  "\nmy " dwell "ing " "place " "shall " "be. "
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
          \new Staff
          <<
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new Voice = "soprano" { \global \soprano \bar "|." }
            \new Voice = "alto" { \global \alto }
            \new Lyrics \lyricsto "soprano" { \wordsOne \chorus }
            \new Lyrics \lyricsto "soprano"   \wordsTwo
            \new Lyrics \lyricsto "soprano"   \wordsThree
            \new Lyrics \lyricsto "soprano"   \wordsFour
            \new Lyrics \lyricsto "soprano"   \wordsFive
          >>
                                  % Joint tenor/bass staff
          \new Staff
          <<
            \clef "bass"
            \new Voice = "tenor" { \global \tenor }
            \new Voice = "bass"  { \global \bass }
          >>
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

\book {
  \bookOutputSuffix "single"
  \score {
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff
          <<
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack }
            \new Voice = "soprano" { \global \repeat unfold \verses \soprano \bar "|." }
            \new Voice = "alto"    { \global \repeat unfold \verses { \alto \nl } \bar "|." }
            \new Lyrics \lyricsto "soprano" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                              \wordsFour  \chorus
                                              \wordsFive  \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff
          <<
            \clef "bass"
            \new Voice = "tenor" { \global \repeat unfold \verses \tenor }
            \new Voice = "bass"  { \global \repeat unfold \verses \bass  }
          >>
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
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff
          <<
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack }
            \new Voice = "soprano" { \global \repeat unfold \verses \soprano \bar "|." }
            \new Voice = "alto"    { \global \repeat unfold \verses { \alto \nl } \bar "|." }
            \new Lyrics \lyricsto "soprano" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                              \wordsFour  \chorus
                                              \wordsFive  \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff
          <<
            \clef "bass"
            \new Voice = "tenor" { \global \repeat unfold \verses \tenor }
            \new Voice = "bass"  { \global \repeat unfold \verses \bass  }
          >>
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
