\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "God be with You!"
  subtitle    = "Sankey No. 298"
  subsubtitle = "Sankey 880 No. 494"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "W. G. Tomer."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "J. E. Rankin, D. D."
%  meter       = \markup\smallCaps "meter"
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

#(set-global-staff-size 18)

global = {
  \key des \major
  \time 4/4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" }    s1*3
  \mark \markup { \box "B" }    s1*3 s2
  \mark \markup { \box "C" } s2 s1*2
  \mark \markup { \box "D" }    s1*3
  \mark \markup { \box "E" }    s1*4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
  s1*7
  s2 \tempo 4=40 s4 \tempo 4=120 s4
  s1*8
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  f'4. 8 8 8 8 8
  aes4 ees f r
  bes4. 8 8 8 8 8
  bes2 aes4 r % B
  aes4. 8 8 8 8 8
  aes2 f4 r
  f4. 8 \bar "|" \break bes8 aes des, ees
  f4 ees des\fermata \bar "||" f8.^\markup\smallCaps Chorus ges16 % C
  aes4(des f) ees8. des16 \break
  bes4(des2) c8. bes16 % D
  aes4. bes8 aes[f] des[f]
  ees2. f8. ges16
  aes4(des f) ees8. des16 % E
  bes4(des2.)
  des4. bes8 aes f des ees
  f4 ees des2
}

alto = \relative {
  \autoBeamOff
  des'4. 8 8 8 8 8
  des4 c des r
  des4. ges8 8 8 8 8
  ges2 f4 r % B
  ees4. 8 8 8 ges ges
  f2 des4 r
  des4. 8 ges f des des
  des4 c des\fermata 8. ees16 % C
  des2(aes'4) 8. 16
  ges4(bes2) aes8. ges16 % D
  f4. ges8f[des] des4
  c2. des8. ees16
  f2(aes4) 8. 16 % E
  ges4(bes2.)
  ges4. 8 f des8 8 8
  des4 c des2
}

tenor = \relative {
  \autoBeamOff
  aes4. 8 8 8 8 8
  aes4 4 4 r
  ges4. des'8 8 8 8 8
  des2 4 r % B
  c4. 8 8 8 ees ees
  des2 aes4 r
  aes4. 8 des8 8 aes bes
  aes4 ges f\fermata r % C
  r4 aes8 8 des4 8. 16
  des4 4 4 8. 16 % D
  des4. 8 8[aes] f[aes]
  aes4 8 8 4-! r
  r4 aes8 8 des4 8. 16 % E
  des4 4 2
  bes4. des8 8 aes8 8 bes
  aes4 ges f2
}

bass = \relative {
  \autoBeamOff
  des4. 8 8 8 8 8
  f4 aes des, r
  ges4. 8 8 8 8 8
  des2 4 r % B
  aes'4. 8 8 8 aes, aes
  des2 4 r
  des4. 8 8 8 f ges
  aes4 aes, des\fermata r % C
  r4 des8 8 4 f8. 16
  ges4 4 4 8. 16 % D
  des4. 8 4 4
  aes4 8 8 4-! r
  r4 des8 8 4 des8. 16 % E
  ges4 4 2
  ges4. 8 des des f ges
  aes4 aes, des2
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  Till we meet! __ Till we meet!
  Till we meet at Je -- sus' feet;
  Till we meet! __ Till we meet!
  God be with you till we meet a -- gain!
}

chorusMen = \lyricmode {
  Till we meet! __ Till we meet a -- gain!
  _ _ _ _ _ _ _ _ _
%  Till we meet at Je -- sus' feet;
  Till we meet! Till we meet! __ Till we meet a -- gain!
  _ _ _ _ _ _ _ _ _
%  God be with you till we meet a -- gain!
}

verses = 4

emptyVerse = \lyricmode {
  _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _
}

wordsOne = \lyricmode {
  \set stanza = "1."
  God be with you till we meet a -- gain!—
  By His coun -- sels guide, up -- hold you,
  With His sheep se -- cure -- ly fold you;
  God be with you till we meet a -- gain!
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  God be with you till we meet a -- gain!—
  'Neath His wings se -- cure -- ly hide you,
  Dai -- ly man -- na still pro -- vide you;
  God be with you till we meet a -- gain!
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  God be with you till we meet a -- gain!—
  When life's per -- ils thick con -- found you,
  Put His lov -- ing arms a -- round you;
  God be with you till we meet a -- gain!
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  God be with you till we meet a -- gain!—
  Keep love's ban -- ner float -- ing o'er you,
  Smite death's threat -- 'ning wave be -- fore you;
  God be with you till we meet a -- gain!
}
  
wordsSingleWomen = \lyricmode {
  \set stanza = "1."
  God be with you till we meet a -- gain!—
  By His coun -- sels guide, up -- hold you,
  With His sheep se -- cure -- ly fold you;
  God be with you till we meet a -- gain!
  Till we meet! __ Till we meet!
  Till we meet at Je -- sus' feet;
  Till we meet! __ Till we meet!
  God be with you till we meet a -- gain!

  \set stanza = "2."
  God be with you till we meet a -- gain!—
  'Neath His wings se -- cure -- ly hide you,
  Dai -- ly man -- na still pro -- vide you;
  God be with you till we meet a -- gain!
  Till we meet! __ Till we meet!
  Till we meet at Je -- sus' feet;
  Till we meet! __ Till we meet!
  God be with you till we meet a -- gain!

  \set stanza = "3."
  God be with you till we meet a -- gain!—
  When life's per -- ils thick con -- found you,
  Put His lov -- ing arms a -- round you;
  God be with you till we meet a -- gain!
  Till we meet! __ Till we meet!
  Till we meet at Je -- sus' feet;
  Till we meet! __ Till we meet!
  God be with you till we meet a -- gain!

  \set stanza = "4."
  God be with you till we meet a -- gain!—
  Keep love's ban -- ner float -- ing o'er you,
  Smite death's threat -- 'ning wave be -- fore you;
  God be with you till we meet a -- gain!
  Till we meet! __ Till we meet!
  Till we meet at Je -- sus' feet;
  Till we meet! __ Till we meet!
  God be with you till we meet a -- gain!
}

wordsMidiWomen = \lyricmode {
  \set stanza = "1."
  "God " "be " "with " "you " "till " "we " "meet " a "gain!— "
  "\nBy " "His " coun "sels " "guide, " up "hold " "you, "
  "\nWith " "His " "sheep " se cure "ly " "fold " "you; "
  "\nGod " "be " "with " "you " "till " "we " "meet " a "gain! "
  "\nTill " "we " "meet! "  "Till " "we " "meet! "
  "\nTill " "we " "meet " "at " Je "sus' " "feet; "
  "\nTill " "we " "meet! "  "Till " "we " "meet! "
  "\nGod " "be " "with " "you " "till " "we " "meet " a "gain! "

  \set stanza = "2."
  "\nGod " "be " "with " "you " "till " "we " "meet " a "gain!— "
  "\n'Neath " "His " "wings " se cure "ly " "hide " "you, "
  "\nDai" "ly " man "na " "still " pro "vide " "you; "
  "\nGod " "be " "with " "you " "till " "we " "meet " a "gain! "
  "\nTill " "we " "meet! "  "Till " "we " "meet! "
  "\nTill " "we " "meet " "at " Je "sus' " "feet; "
  "\nTill " "we " "meet! "  "Till " "we " "meet! "
  "\nGod " "be " "with " "you " "till " "we " "meet " a "gain! "

  \set stanza = "3."
  "\nGod " "be " "with " "you " "till " "we " "meet " a "gain!— "
  "\nWhen " "life's " per "ils " "thick " con "found " "you, "
  "\nPut " "His " lov "ing " "arms " a "round " "you; "
  "\nGod " "be " "with " "you " "till " "we " "meet " a "gain! "
  "\nTill " "we " "meet! "  "Till " "we " "meet! "
  "\nTill " "we " "meet " "at " Je "sus' " "feet; "
  "\nTill " "we " "meet! "  "Till " "we " "meet! "
  "\nGod " "be " "with " "you " "till " "we " "meet " a "gain! "

  \set stanza = "4."
  "\nGod " "be " "with " "you " "till " "we " "meet " a "gain!— "
  "\nKeep " "love's " ban "ner " float "ing " "o'er " "you, "
  "\nSmite " "death's " threat "'ning " "wave " be "fore " "you; "
  "\nGod " "be " "with " "you " "till " "we " "meet " a "gain! "
  "\nTill " "we " "meet! "  "Till " "we " "meet! "
  "\nTill " "we " "meet " "at " Je "sus' " "feet; "
  "\nTill " "we " "meet! "  "Till " "we " "meet! "
  "\nGod " "be " "with " "you " "till " "we " "meet " a "gain! "
}

wordsSingleMen = \lyricmode {
  \set stanza = "1."
  God be with you till we meet a -- gain!—
  By His coun -- sels guide, up -- hold you,
  With His sheep se -- cure -- ly fold you;
  God be with you till we meet a -- gain!
  Till we meet! __ Till we meet a -- gain!
  Till we meet at Je -- sus' feet;
  Till we meet! Till we meet! __ Till we meet a -- gain!
  God be with you till we meet a -- gain!

  \set stanza = "2."
  God be with you till we meet a -- gain!—
  'Neath His wings se -- cure -- ly hide you,
  Dai -- ly man -- na still pro -- vide you;
  God be with you till we meet a -- gain!
  Till we meet! __ Till we meet a -- gain!
  Till we meet at Je -- sus' feet;
  Till we meet! Till we meet! __ Till we meet a -- gain!
  God be with you till we meet a -- gain!

  \set stanza = "3."
  God be with you till we meet a -- gain!—
  When life's per -- ils thick con -- found you,
  Put His lov -- ing arms a -- round you;
  God be with you till we meet a -- gain!
  Till we meet! __ Till we meet a -- gain!
  Till we meet at Je -- sus' feet;
  Till we meet! Till we meet! __ Till we meet a -- gain!
  God be with you till we meet a -- gain!

  \set stanza = "4."
  God be with you till we meet a -- gain!—
  Keep love's ban -- ner float -- ing o'er you,
  Smite death's threat -- 'ning wave be -- fore you;
  God be with you till we meet a -- gain!
  Till we meet! __ Till we meet a -- gain!
  Till we meet at Je -- sus' feet;
  Till we meet! Till we meet! __ Till we meet a -- gain!
  God be with you till we meet a -- gain!
}

wordsMidiMen = \lyricmode {
  \set stanza = "1."
  "God " "be " "with " "you " "till " "we " "meet " a "gain!— "
  "\nBy " "His " coun "sels " "guide, " up "hold " "you, "
  "\nWith " "His " "sheep " se cure "ly " "fold " "you; "
  "\nGod " "be " "with " "you " "till " "we " "meet " a "gain! "
  "\nTill " "we " "meet! "  "Till " "we " "meet " a "gain! "
  "\nTill " "we " "meet " "at " Je "sus' " "feet; "
  "\nTill " "we " "meet! " "Till " "we " "meet! "  "Till " "we " "meet " a "gain! "
  "\nGod " "be " "with " "you " "till " "we " "meet " a "gain! "

  \set stanza = "2."
  "\nGod " "be " "with " "you " "till " "we " "meet " a "gain!— "
  "\n'Neath " "His " "wings " se cure "ly " "hide " "you, "
  "\nDai" "ly " man "na " "still " pro "vide " "you; "
  "\nGod " "be " "with " "you " "till " "we " "meet " a "gain! "
  "\nTill " "we " "meet! "  "Till " "we " "meet " a "gain! "
  "\nTill " "we " "meet " "at " Je "sus' " "feet; "
  "\nTill " "we " "meet! " "Till " "we " "meet! "  "Till " "we " "meet " a "gain! "
  "\nGod " "be " "with " "you " "till " "we " "meet " a "gain! "

  \set stanza = "3."
  "\nGod " "be " "with " "you " "till " "we " "meet " a "gain!— "
  "\nWhen " "life's " per "ils " "thick " con "found " "you, "
  "\nPut " "His " lov "ing " "arms " a "round " "you; "
  "\nGod " "be " "with " "you " "till " "we " "meet " a "gain! "
  "\nTill " "we " "meet! "  "Till " "we " "meet " a "gain! "
  "\nTill " "we " "meet " "at " Je "sus' " "feet; "
  "\nTill " "we " "meet! " "Till " "we " "meet! "  "Till " "we " "meet " a "gain! "
  "\nGod " "be " "with " "you " "till " "we " "meet " a "gain! "

  \set stanza = "4."
  "\nGod " "be " "with " "you " "till " "we " "meet " a "gain!— "
  "\nKeep " "love's " ban "ner " float "ing " "o'er " "you, "
  "\nSmite " "death's " threat "'ning " "wave " be "fore " "you; "
  "\nGod " "be " "with " "you " "till " "we " "meet " a "gain! "
  "\nTill " "we " "meet! "  "Till " "we " "meet " a "gain! "
  "\nTill " "we " "meet " "at " Je "sus' " "feet; "
  "\nTill " "we " "meet! " "Till " "we " "meet! "  "Till " "we " "meet " a "gain! "
  "\nGod " "be " "with " "you " "till " "we " "meet " a "gain! "
}

\book {
  \bookOutputSuffix "midi-women"
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Voice { \repeat unfold \verses \TempoTrack     }
            \new Voice { \global \repeat unfold \verses \soprano \bar "|." }
            \addlyrics \wordsMidiWomen
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
  \bookOutputSuffix "midi-men"
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Voice { \repeat unfold \verses \TempoTrack     }
            \new Voice { \global \repeat unfold \verses \soprano \bar "|." }
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
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine { \global \tenor } { \global \bass }
            \new NullVoice = alignerT \tenor
            \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT {\emptyVerse \chorusMen}
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
            \new Voice = "women" \partCombine { \global \repeat unfold \verses \soprano \bar "|." }
                                               { \global \repeat unfold \verses { \alto \nl } \bar "|." }
            \new NullVoice { \repeat unfold \verses \soprano }
            \addlyrics \wordsSingleWomen
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \repeat unfold \verses \tenor }
                                            { \global \repeat unfold \verses \bass }
            \new NullVoice { \repeat unfold \verses \tenor }
            \addlyrics \wordsSingleMen
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
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack }
            \new NullVoice = "aligner" { \repeat unfold \verses \soprano }
            \new Voice = "women" \partCombine { \global \repeat unfold \verses \soprano \bar "|." }
                                               { \global \repeat unfold \verses { \alto \nl } \bar "|." }
            \new Lyrics \lyricsto "aligner" \wordsSingleWomen
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \repeat unfold \verses \tenor }
                                            { \global \repeat unfold \verses \bass }
            \new NullVoice { \repeat unfold \verses \tenor }
            \addlyrics \wordsSingleMen
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
