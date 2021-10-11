\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "The Church and the Kingdom."
  subtitle    = "Sankey No. 253"
  subsubtitle = "Sankey 880 No. 222"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "S. Stanley."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Dr. T. Dwight."
  meter       = \markup\smallCaps "S.M."
  piece       = \markup\smallCaps "Shirland."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key g \major
  \time 2/2
  \partial 2
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s2 s1*5 s2
  \mark \markup { \box "B" } s2 s1*6 s2
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
  s2 s1 s1
  \tempo 4=40 s2 \tempo 4=120 s
  s1 s1
  \tempo 4=40 s2 \tempo 4=120 s
  s1*6
  \tempo 4=40 s2
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  g'2
  a2 b
  c4(a) d(fis,)
  g2\fermata 2
  fis4(a) d4.(c8)
  b4(e) d(cis)
  d2\fermata \bar "|" \break g,4(b)
  b4(a) a(c) % B
  c(b) b(d)
  d4(c) c(b)
  b2(a4) a
  b4(c) d(e)
  b2 a
  g2\fermata
}

alto = \relative {
  \autoBeamOff
  d'2
  fis2 g
  e2 fis4(d)
  d2\fermata 2
  d4(fis) a2
  g2 fis4(e)
  fis2\fermata g
  g4(fis) 4(a)
  a4(g) g(b)
  b4(a) a(g)
  g2(fis4) 4
  g2 2
  g2 fis
  g2\fermata
}

tenor = \relative {
  \autoBeamOff
  b2
  d2 2
  e4(c) a(c)
  b2\fermata 2
  a2 2
  b2 a
  a2\fermata b
  d2 2 % B
  d2 2
  e2 2
  d2. 4
  d4(e) d(c)
  b4(d) c2
  b\fermata
}

bass = \relative {
  \autoBeamOff
  g2
  d2 g
  c,2 d
  g,2\fermata g'
  d2 fis
  g2 a
  d,2\fermata g
  d2 2 % B
  g2 2
  c,2 c4(cis)
  d2. 4
  g4(e) b(c)
  d2 2
  g,2\fermata
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

verses = 5

wordsOne = \lyricmode {
  \set stanza = "1."
  I love Thy king -- dom, Lord,
  The house of Thine a -- bode,
  The Church our blest Re -- deem -- er saved
  With His own pre -- cious blood.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  I love Thy Church, O God!
  Her walls be -- fore Thee stand,
  Dear as the ap -- ple of Thine eye,
  And gra -- ven on Thy hand.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  For her my tears shall fail,
  For her my prayers as -- cend;
  To her my cares and toils be given,
  Till toils and cares shall end.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Be -- yond my high -- est joy
  I prize her heaven -- ly ways,
  Her sweet com -- mun -- ion, sol -- emn vows,
  Her hymns of love and praise.
}
  
wordsFive = \lyricmode {
  \set stanza = "5."
  Sure as Thy truth shall last,
  To Zi -- on shall be given
  The bright -- est glo -- ries earth can yield,
  And bright -- er bliss of heaven.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "I " "love " "Thy " king "dom, " "Lord, "
  "\nThe " "house " "of " "Thine " a "bode, "
  "\nThe " "Church " "our " "blest " Re deem "er " "saved "
  "\nWith " "His " "own " pre "cious " "blood. "

  \set stanza = "2."
  "\nI " "love " "Thy " "Church, " "O " "God! "
  "\nHer " "walls " be "fore " "Thee " "stand, "
  "\nDear " "as " "the " ap "ple " "of " "Thine " "eye, "
  "\nAnd " gra "ven " "on " "Thy " "hand. "

  \set stanza = "3."
  "\nFor " "her " "my " "tears " "shall " "fail, "
  "\nFor " "her " "my " "prayers " as "cend; "
  "\nTo " "her " "my " "cares " "and " "toils " "be " "given, "
  "\nTill " "toils " "and " "cares " "shall " "end. "

  \set stanza = "4."
  "\nBe" "yond " "my " high "est " "joy "
  "\nI " "prize " "her " heaven "ly " "ways, "
  "\nHer " "sweet " com mun "ion, " sol "emn " "vows, "
  "\nHer " "hymns " "of " "love " "and " "praise. "

  \set stanza = "5."
  "\nSure " "as " "Thy " "truth " "shall " "last, "
  "\nTo " Zi "on " "shall " "be " "given "
  "\nThe " bright "est " glo "ries " "earth " "can " "yield, "
  "\nAnd " bright "er " "bliss " "of " "heaven. "
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
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new NullVoice = "aligner" \soprano
            \new Voice = "women" \partCombine { \global \soprano \bar "|." } { \global \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
            \new Lyrics \lyricsto "aligner"   \wordsThree
            \new Lyrics \lyricsto "aligner"   \wordsFour
            \new Lyrics \lyricsto "aligner"   \wordsFive

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
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack }
            \new NullVoice = "aligner" { \repeat unfold \verses \soprano }
            \new Voice = "women" \partCombine { \global \repeat unfold \verses \soprano \bar "|." }
                                               { \global \repeat unfold \verses { \alto \nl } \bar "|." }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                              \wordsFour  \chorus
                                              \wordsFive  \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \repeat unfold \verses \tenor }
                                            { \global \repeat unfold \verses \bass }
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
    system-system-spacing.basic-distance = #22
    system-separator-markup = \slashSeparator
  }
  \score {
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack }
            \new NullVoice = "aligner" { \repeat unfold \verses \soprano }
            \new Voice = "women" \partCombine { \global \repeat unfold \verses \soprano \bar "|." }
                                               { \global \repeat unfold \verses { \alto \nl } \bar "|." }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                              \wordsFour  \chorus
                                              \wordsFive  \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \repeat unfold \verses \tenor }
                                            { \global \repeat unfold \verses \bass }
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
