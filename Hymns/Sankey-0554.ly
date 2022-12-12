\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "He Feedeth His Flock."
  subtitle    = "Sankey No. 554"
%  subsubtitle = "Sankey 880 No. Y"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Geo. C. Stebbins."
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
  \time 6/8
  \partial 8
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s8  s2.*2 s4.
  \textMark \markup { \box \bold "B" } s4. s2.*3
  \textMark \markup { \box \bold "C" }     s2.*3 s4. s4
  \textMark \markup { \box \bold "D" } s8  s2.*3
  \textMark \markup { \box \bold "E" }     s2.*3 s2
  \textMark \markup { \box \bold "F" } s4  s2.*3
  \textMark \markup { \box \bold "G" }     s2.*3 s4. s4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  f'8 | f g a bes a g | a4. g4 f8 | f a bes
  c8 f, c' |d4.~4 8 | d ees d c bes a | c4. bes4 8 |
  g8 a bes d e bes | c4.~4 \bar "||" f,8^\markup\smallCaps Chorus. | f4(d'8 c) g a | f4.(bes4)
  bes8 | g4(bes8 ees) d c | bes4. a4 c8 | 4.(a8) bes c |
  d4.(bes4) 8 | g4(a8 bes) a bes | d4. c4 f,8 | d'4.(c8)
  g8 a | f4.(bes4) 8 | bes4(c8 d) c bes | 4. ees4 8 |
  ees4.~8 d c | d4.(bes4) 8 | f4(g8 bes) a8^\markup\italic rit. g | a4. bes4\fermata
}

alto = \relative {
  \autoBeamOff
  d'8 | d d d d d d | ees4. 4 8 | 8 8 8
  ees8 8 8 | f4.~4 8 | f g f ees d ees | d4. 4 8 |
  e8 8 8 8 8 8 | f4.~4 ees8 | c4(fes8 ees) ees ees | d4.~4
  f8 | ees4(g8 8) 8 8 | f4. 4 ees8 | 4.~8 8 8 |
  f4.(d4) f8 | e4.~8 8 8 | f4. 4 8 | 4.(ees8)
  ees8 8 | d4.~4 f8 | aes4(8 8) 8 8 | g4. 4 8 |
  g4.~8 8 8 | f4.(d4) 8 | d4.(ees8) 8 8 | 4. d4\fermata
}

tenor = \relative {
  \autoBeamOff
  bes8 | 8 8 8 f f f | 4. 4 a8 | a f g
  a8 8 8 | bes4.~4 8 | 8 8 8 a bes c | bes4. 4 8 |
  bes8 a g bes g c | a4.~4 8 | bes4 8 f8 8 8 | bes4 8 f4
  bes8 | 8 8 8 8 b c | d4. c4 a8 | 4 8 c g a |
  bes4 8 f4 bes8 | 8 8 a g c c | bes4. a4 8 | bes4 8 f
  f8 8 | bes4 8 4 d8 | 8 8 ees f ees d | ees4. bes4 8 |
  c4 8 8 b c | f,4 bes8 4 8 | 8 8 8 c c c | 4. bes4\fermata
}

bass = \relative {
  \autoBeamOff
  bes,8 | 8 8 8 8 8 8 | c4. 4 f8 | 8 8 8
  f8 8 8 | bes,4.~4 bes'8 | 8 8 8 a bes c | bes4. 4 8
  c,8 8 8 8 8 8 | f4.~4 8 | bes,4 8 8 8 8 | 4 8 4
  d8 | ees8 8 8 c d ees | f4. 4 8 | 4 8 8 8 8 |
  bes,4 8 4 d8 | c8 8 8 8 8 8 | f4. 4 8 | bes,4 8 8
  bes8 8 | 4 8 4 8 | bes'8 8 8 8 8 8 | ees,4. 4 8 |
  c4 8 8 d ees | f4 8 4 8 | 8 8 8 8 8 8 | 4. bes,4\fermata
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  He feed -- eth His flock, __
  His flock __ like a Shep -- herd,
  And gath -- ers the lambs, __ the lambs __ in His bo -- som;
  He feed -- eth His flock, __
  His flock like a Shep -- herd,
  And gath -- ers the lambs, __ the lambs __ in His bo -- som;
}

chorusMen = \lyricmode {
  \tiny
  _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  He feed -- eth, feed -- eth His flock, His flock,
  He feed -- eth His flock like a Shep -- herd,
  And gath -- ers, gath -- ers the lambs, the lambs,
  And gath -- ers the lambs in His bo -- som;
  He feed -- eth, feed -- eth His flock, His flock,
  He feed -- eth His flock like a Shep -- herd,
  And gath -- ers, gath -- ers the lambs, the lambs,
  And gath -- ers the lambs in His bo -- som;
}

verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  He feed -- eth His flock like a Shep -- herd,
  Where pas -- tures are bloom -- ing and fair;
  He gath -- ers the lambs in His bo -- som,
  And shel -- ters them ten -- der -- ly there.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  He feed -- eth His flock like a Shep -- herd;
  And when in the des -- ert they roam,
  He pa -- tient -- ly fol -- lows their foot -- steps,
  And lead -- eth tem ten -- der -- ly home.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  He feed -- eth His flock like a Shep -- herd;
  The weak -- est His kind -- ness may claim;
  He ne -- ver will leave nor for -- sake them
  Who trust in His ex -- cell -- ent name.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "He " feed "eth " "His " "flock " "like " "a " Shep "herd, "
  "\nWhere " pas "tures " "are " bloom "ing " "and " "fair; "
  "\nHe " gath "ers " "the " "lambs " "in " "His " bo "som, "
  "\nAnd " shel "ters " "them " ten der "ly " "there. "
  "\nHe " feed "eth " "His " "flock, " 
  "\nHis " "flock "  "like " "a " Shep "herd, "
  "\nAnd " gath "ers " "the " "lambs, "  "the " "lambs "  "in " "His " bo "som; "
  "\nHe " feed "eth " "His " "flock, " 
  "\nHis " "flock " "like " "a " Shep "herd, "
  "\nAnd " gath "ers " "the " "lambs, "  "the " "lambs "  "in " "His " bo "som;\n"

  \set stanza = "2."
  "\nHe " feed "eth " "His " "flock " "like " "a " Shep "herd; "
  "\nAnd " "when " "in " "the " des "ert " "they " "roam, "
  "\nHe " pa tient "ly " fol "lows " "their " foot "steps, "
  "\nAnd " lead "eth " "tem " ten der "ly " "home. "
  "\nHe " feed "eth " "His " "flock, " 
  "\nHis " "flock "  "like " "a " Shep "herd, "
  "\nAnd " gath "ers " "the " "lambs, "  "the " "lambs "  "in " "His " bo "som; "
  "\nHe " feed "eth " "His " "flock, " 
  "\nHis " "flock " "like " "a " Shep "herd, "
  "\nAnd " gath "ers " "the " "lambs, "  "the " "lambs "  "in " "His " bo "som;\n"

  \set stanza = "3."
  "\nHe " feed "eth " "His " "flock " "like " "a " Shep "herd; "
  "\nThe " weak "est " "His " kind "ness " "may " "claim; "
  "\nHe " ne "ver " "will " "leave " "nor " for "sake " "them "
  "\nWho " "trust " "in " "His " ex cell "ent " "name. "
  "\nHe " feed "eth " "His " "flock, " 
  "\nHis " "flock "  "like " "a " Shep "herd, "
  "\nAnd " gath "ers " "the " "lambs, "  "the " "lambs "  "in " "His " bo "som; "
  "\nHe " feed "eth " "His " "flock, " 
  "\nHis " "flock " "like " "a " Shep "herd, "
  "\nAnd " gath "ers " "the " "lambs, "  "the " "lambs "  "in " "His " bo "som; "
}

wordsMidiMen = \lyricmode {
  \set stanza = "1."
  "He " feed "eth " "His " "flock " "like " "a " Shep "herd, "
  "\nWhere " pas "tures " "are " bloom "ing " "and " "fair; "
  "\nHe " gath "ers " "the " "lambs " "in " "His " bo "som, "
  "\nAnd " shel "ters " "them " ten der "ly " "there. "
  "\nHe " feed "eth, " feed "eth " "His " "flock, " "His " "flock, "
  "\nHe " feed "eth " "His " "flock " "like " "a " Shep "herd, "
  "\nAnd " gath "ers, " gath "ers " "the " "lambs, " "the " "lambs, "
  "\nAnd " gath "ers " "the " "lambs " "in " "His " bo "som; "
  "\nHe " feed "eth, " feed "eth " "His " "flock, " "His " "flock, "
  "\nHe " feed "eth " "His " "flock " "like " "a " Shep "herd, "
  "\nAnd " gath "ers, " gath "ers " "the " "lambs, " "the " "lambs, "
  "\nAnd " gath "ers " "the " "lambs " "in " "His " bo "som;\n"

  \set stanza = "2."
  "\nHe " feed "eth " "His " "flock " "like " "a " Shep "herd; "
  "\nAnd " "when " "in " "the " des "ert " "they " "roam, "
  "\nHe " pa tient "ly " fol "lows " "their " foot "steps, "
  "\nAnd " lead "eth " "tem " ten der "ly " "home. "
  "\nHe " feed "eth, " feed "eth " "His " "flock, " "His " "flock, "
  "\nHe " feed "eth " "His " "flock " "like " "a " Shep "herd, "
  "\nAnd " gath "ers, " gath "ers " "the " "lambs, " "the " "lambs, "
  "\nAnd " gath "ers " "the " "lambs " "in " "His " bo "som; "
  "\nHe " feed "eth, " feed "eth " "His " "flock, " "His " "flock, "
  "\nHe " feed "eth " "His " "flock " "like " "a " Shep "herd, "
  "\nAnd " gath "ers, " gath "ers " "the " "lambs, " "the " "lambs, "
  "\nAnd " gath "ers " "the " "lambs " "in " "His " bo "som;\n"

  \set stanza = "3."
  "\nHe " feed "eth " "His " "flock " "like " "a " Shep "herd; "
  "\nThe " weak "est " "His " kind "ness " "may " "claim; "
  "\nHe " ne "ver " "will " "leave " "nor " for "sake " "them "
  "\nWho " "trust " "in " "His " ex cell "ent " "name. "
  "\nHe " feed "eth, " feed "eth " "His " "flock, " "His " "flock, "
  "\nHe " feed "eth " "His " "flock " "like " "a " Shep "herd, "
  "\nAnd " gath "ers, " gath "ers " "the " "lambs, " "the " "lambs, "
  "\nAnd " gath "ers " "the " "lambs " "in " "His " bo "som; "
  "\nHe " feed "eth, " feed "eth " "His " "flock, " "His " "flock, "
  "\nHe " feed "eth " "His " "flock " "like " "a " Shep "herd, "
  "\nAnd " gath "ers, " gath "ers " "the " "lambs, " "the " "lambs, "
  "\nAnd " gath "ers " "the " "lambs " "in " "His " bo "som; "
}

\book {
  \bookOutputSuffix "midi=women"
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
          \new Staff = women \with { printPartCombineTexts = ##f }
          <<
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new NullVoice = "aligner" \soprano
            \new Voice \partCombine #'(2 . 88) { \global \soprano \bar "|." } { \global \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
            \new Lyrics \lyricsto "aligner"   \wordsThree
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
