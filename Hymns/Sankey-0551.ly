\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Firm as a Rock!"
  subtitle    = "Sankey No. 551"
  subsubtitle = "C. C. No. 223"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Ira D. Sankey."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Fanny J. Crosby."
%  meter       = \markup\smallCaps "meter"
%  piece       = \markup\smallCaps "piece"

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
  \textMark \markup { \box \bold "A" }    s1*3
  \textMark \markup { \box \bold "B" }    s1*3
  \textMark \markup { \box \bold "C" }    s1*3
  \textMark \markup { \box \bold "D" }    s1*3 s2
  \textMark \markup { \box \bold "E" } s2 s1*3
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  f'4 8. g16 f4. ees8 | d8 f bes8. c16 bes4 a | ees4 8. d16 c4. d8 |
  e8 g f8. ees16 d2 | f4 8. g16 f4. e8 | d f bes c d4 bes |
  g4 a8 bes f bes bes ees | d4 c bes2 \bar "||" | c4^\markup\smallCaps Chorus. 8. bes16 a4. bes8 |
  c8 b c d e4 c | d4 8. c16 bes4. c8 | d c d e f4(ees) | d4 8. c16 \bar "|" \break
  bes4. a8 | c bes a g8 4 f | g4 a8 bes bes a bes ees | d4 c bes2 |
}

alto = \relative {
  \autoBeamOff
  d'4 8. ees16 d4. c8 | bes8 d f8. g16 f4 4 | c4 8. bes16 a4. bes8 |
  c8 ees d8. c16 bes2 | d4 8. ees16 d4. c8 | bes8 d f f f4 d |
  ees4 f8 g f d d g | f4 ees d2 | ees4 8. d16 f4. 8 |
  f8 8 8 8 4 4 | 4 8. 16 4. 8 | 8 8 8 bes a4(f) | 4 8. 16
  f4. 8 | g8 8 f ees ees4 d | ees4 f8 g f ees d g | f4 ees d2 |
}

tenor = \relative {
  \autoBeamOff
  bes4 8. 16 4. f8 | 8 bes8 8. ees16 d4 c | a4 8. bes16 g4. 8 |
  f8 a bes8. f16 2 | bes4 8. 16 4. f8 | f bes bes a bes4 4 |
  bes4 8 8 8 8 8 8 | 4 a bes2 | a4 8. bes16 c4. d8 |
  ees8 d ees b c4 a | bes4 8. a16 bes4. a8 | bes8 a bes c c4(a) | bes4 8. a16
  bes4. 8 | 8 8 8 8 4 4 | 4 c8 bes bes c bes bes | 4 a bes2 |
}

bass = \relative {
  \autoBeamOff
  bes,4 8. 16 4. a8 | 8 8 d8. ees16 f4 4 | 4 8. 16 4. 8 |
  f8 8 8. 16 bes,2 | 4 8. 16 4. a8 | bes8 8 d f bes4 bes, |
  ees4 8 8 d bes g' e | f4 4 bes,2 | f'4 8. 16 4. 8 |
  f8 8 8 8 4 4 | bes,4 8. c16 d4. f8 | bes8 f bes g f2 | bes,4 8. c16
  d4. 8 | ees8 8 8 8 bes4 4 | ees4 8 8 d f g ees | f4 f, bes2 |
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  Firm as a rock! no pow'r shall cleave a -- sun -- der,
  Tho' light -- nings flash and thun -- ders loud -- ly roar;
  So will we trust in Him, our great Re -- deem -- er--- Je -- sus,
  our hi -- ding- place, for ev -- er -- more.
}

chorusMen = \lyricmode {
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  Firm as a rock, that in the migh -- ty o -- cean
  Hurls back the waves, and with ma -- jes -- tic form,
  Grand and sub -- lime, a -- mid their wild com -- mo -- tion
  Heeds not the tem -- pest, nor the ra -- ging storm;
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Firm as a rock, that in the thir -- sty des -- ert
  Veils like a cloud the noon -- tide's burn -- ing ray,
  While with de -- light the worn and wea -- ry trav -- 'ller
  Turns to its sha -- dow from his lone -- ly way.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Firm as a rock, tho' surg -- es dash a -- round us;
  Firm as a rock, tho' tri -- als dark may fall;
  Yet shall we cling to Him, the Rock of A -- ges,
  Je -- sus, the Ho -- ly One, our All in All.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Firm as a rock, when earth -- ly scenes are wa -- ning;
  Firm as a rock, when Jor -- dan's bil -- lows roll;
  Firm as a rock, we'll rest up -- on His pro -- mise;
  Je -- sus, the Re -- fuge of the wea -- ry soul.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Firm " "as " "a " "rock, " "that " "in " "the " migh "ty " o "cean "
  "\nHurls " "back " "the " "waves, " "and " "with " ma jes "tic " "form, "
  "\nGrand " "and " sub "lime, " a "mid " "their " "wild " com mo "tion "
  "\nHeeds " "not " "the " tem "pest, " "nor " "the " ra "ging " "storm; "
  "\nFirm " "as " "a " "rock! " "no " "pow'r " "shall " "cleave " a sun "der, "
  "\nTho' " light "nings " "flash " "and " thun "ders " loud "ly " "roar; "
  "\nSo " "will " "we " "trust " "in " "Him, " "our " "great " Re deem er- Je "sus, "
  "\nour " hi ding "place, " "for " ev er "more.\n"

  \set stanza = "2."
  "\nFirm " "as " "a " "rock, " "that " "in " "the " thir "sty " des "ert "
  "\nVeils " "like " "a " "cloud " "the " noon "tide's " burn "ing " "ray, "
  "\nWhile " "with " de "light " "the " "worn " "and " wea "ry " trav "'ller "
  "\nTurns " "to " "its " sha "dow " "from " "his " lone "ly " "way. "
  "\nFirm " "as " "a " "rock! " "no " "pow'r " "shall " "cleave " a sun "der, "
  "\nTho' " light "nings " "flash " "and " thun "ders " loud "ly " "roar; "
  "\nSo " "will " "we " "trust " "in " "Him, " "our " "great " Re deem er- Je "sus, "
  "\nour " hi ding "place, " "for " ev er "more.\n"

  \set stanza = "3."
  "\nFirm " "as " "a " "rock, " "tho' " surg "es " "dash " a "round " "us; "
  "\nFirm " "as " "a " "rock, " "tho' " tri "als " "dark " "may " "fall; "
  "\nYet " "shall " "we " "cling " "to " "Him, " "the " "Rock " "of " A "ges, "
  "\nJe" "sus, " "the " Ho "ly " "One, " "our " "All " "in " "All. "
  "\nFirm " "as " "a " "rock! " "no " "pow'r " "shall " "cleave " a sun "der, "
  "\nTho' " light "nings " "flash " "and " thun "ders " loud "ly " "roar; "
  "\nSo " "will " "we " "trust " "in " "Him, " "our " "great " Re deem er- Je "sus, "
  "\nour " hi ding "place, " "for " ev er "more.\n"

  \set stanza = "4."
  "\nFirm " "as " "a " "rock, " "when " earth "ly " "scenes " "are " wa "ning; "
  "\nFirm " "as " "a " "rock, " "when " Jor "dan's " bil "lows " "roll; "
  "\nFirm " "as " "a " "rock, " "we'll " "rest " up "on " "His " pro "mise; "
  "\nJe" "sus, " "the " Re "fuge " "of " "the " wea "ry " "soul. "
  "\nFirm " "as " "a " "rock! " "no " "pow'r " "shall " "cleave " a sun "der, "
  "\nTho' " light "nings " "flash " "and " thun "ders " loud "ly " "roar; "
  "\nSo " "will " "we " "trust " "in " "Him, " "our " "great " Re deem er- Je "sus, "
  "\nour " hi ding "place, " "for " ev er "more. "
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
            \new Voice \partCombine #'(2 . 88) { \global \soprano \bar "|." } { \global \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
            \new Lyrics \lyricsto "aligner"   \wordsThree
            \new Lyrics \lyricsto "aligner"   \wordsFour
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine #'(2 . 88) { \global \tenor } { \global \bass }
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
            \new Voice \partCombine #'(2 . 88) { \global \repeat unfold \verses \soprano \bar "|." }
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
            \new Voice \partCombine #'(2 . 88) { \global \repeat unfold \verses \tenor }
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
