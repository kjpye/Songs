\version "2.25.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Some Time we'll Understand."
  subtitle    = "Sankey No. 740"
  subsubtitle = "N. H. No. 13"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "James McGranahan."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "M. N. Cornelius, D.D."
  meter       = \markup\smallCaps "L.M."
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key aes \major
  \time 4/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s4 s1*2 s2
  \textMark \markup { \box \bold "B" } s2 s1*3
  \textMark \markup { \box \bold "C" }    s1 s2 s8 s4. s2.
  \textMark \markup { \box \bold "D" }    s2.*3 s4 s2
  \textMark \markup { \box \bold "E" } s2 s1*2 s2.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120 s4*31 s8
  \tempo 4=130 s8*27
  \tempo 4=120 s4*16
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  ees'4 | c'4. bes8 aes c, ees aes | g2. 4 | 4. des'8 \bar "|" \break
  f,8 g f ees | c'2. ees,4 | c'4. bes8 aes c, ees ges | f2. des'4 |
  des4 r8 c c bes f g | aes2 r8
  \section \sectionLabel \markup {\smallCaps Chorus. \italic "A little faster."} \time 3/4 \partial 4.
  bes8 8 8 | 4. 8 c bes |
  ees4. 8 bes ees | d4. bes8 aes f | ees2. \time 4/4 \partial 4 | ees4^\markup\italic "a tempo primo" | c'4. bes8 \bar "|" \break
  aes8 c, ees aes^\markup\italic "cresc." | c4(d ees4.) 8 | ees4-> r8 des f,^\markup\italic "ad lib." des' c8. bes16 | aes2.
}

alto = \relative {
  \autoBeamOff
  c'4 | ees4. des8 c aes c c | des2. 4 | 4. f8
  des8 8 8 ees | 2. c4 | ees4. des8 c aes c ees | des2. f4 |
  f4 r8 ees ees des des des | c2 r8 ees8 g aes | g4. 8 aes aes |
  g4. 8 8 8 | aes4. d,8 d d | ees4 c des | c | ees4. des8
  c8 aes c ees | aes4(g ges4.) 8 | f4-> r8 f des f ees8. des16 | c2.
}

tenor = \relative {
  \autoBeamOff
  aes4 | 4. ees8 8 8 aes aes | ees2. 8[g] | bes4. 8
  bes8 8 aes g | aes2. 4 | 4. ees8 8 8 aes aes | 2. bes4 |
  bes4 r8 g g g aes bes | aes2 r8 \section g bes d | ees4. 8 8 bes |
  bes4. 8 ees bes | 4. 8 8 aes | g2. | aes4 | 4. g8
  aes8 8 8 c | ees2.. aes,8 | 4-> r8 bes aes aes aes8. g16 | aes2.
}

bass = \relative {
  \autoBeamOff
  aes,4 | 4. 8 8 8 8 8 | bes2. 4 | ees4. 8
  ees8 8 8 8 | aes,2. 4 | 4. 8 8 8 8 c | d2. 4 |
  ees4 r8 ees8 8 8 8 8 | aes,2 r8 ees'8 8 bes | ees4. 8 aes f |
  ees4. 8 8 8 | f4. 8 bes, bes | ees2. | aes,4 | 4. ees'8
  aes8 8 8 8 | 4(bes c4.) c,8 | des4 r8 8 8 8 ees8. 16 | aes,2.
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  Then trust in God thro' all thy days;
  Fear not! for He doth hold thy hand:
  Though dark thy way, still sing and praise;
  Some time, some time, we'll un -- der -- stand.
}

chorusAlto = \lyricmode {
  \tiny
  \repeat unfold 46 _
  doth hold thy hand
  \repeat unfold 16 _
}

verses = 5

wordsOne = \lyricmode {
  \set stanza = "1."
  Not now, but in the com -- ing years—
  It may be in the bet -- ter land—
  We'll read the mean -- ing of our tears,
  And there, some time, we'll un -- der -- stand.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  We'll catch the bro -- ken threads a -- gain,
  And fin -- ish what we here be -- gan;
  Heav'n will the mys -- te -- ries ex -- plain,
  And then, ah then, we'll un -- der -- stand.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  We'll know why clouds in -- stead of sun
  Were o -- ver many a cher -- ished plan;
  Why song has ceased when scarce be -- gun;
  'Tis there, some time, we'll un -- der -- stand.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Why what we long for most of all,
  E -- ludes so oft our ea -- ger hand;
  Why hopes are crushed amd cas -- tles fall,
  Up there, some time, we'll un -- der -- stand.
}
  
wordsFive = \lyricmode {
  \set stanza = "5."
  God knows the way, He holds the key,
  He guides us with un -- err -- ing hand;
  Some time with tear -- less eyes we'll see;
  Yes, there, up there, we'll un -- der -- stand.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Not " "now, " "but " "in " "the " com "ing " "years— "
  "\nIt " "may " "be " "in " "the " bet "ter " "land— "
  "\nWe'll " "read " "the " mean "ing " "of " "our " "tears, "
  "\nAnd " "there, " "some " "time, " "we'll " un der "stand. "
  "\nThen " "trust " "in " "God " "thro' " "all " "thy " "days; "
  "\nFear " "not! " "for " "He " "doth " "hold " "thy " "hand: "
  "\nThough " "dark " "thy " "way, " "still " "sing " "and " "praise; "
  "\nSome " "time, " "some " "time, " "we'll " un der "stand.\n"

  \set stanza = "2."
  "\nWe'll " "catch " "the " bro "ken " "threads " a "gain, "
  "\nAnd " fin "ish " "what " "we " "here " be "gan; "
  "\nHeav'n " "will " "the " mys te "ries " ex "plain, "
  "\nAnd " "then, " "ah " "then, " "we'll " un der "stand. "
  "\nThen " "trust " "in " "God " "thro' " "all " "thy " "days; "
  "\nFear " "not! " "for " "He " "doth " "hold " "thy " "hand: "
  "\nThough " "dark " "thy " "way, " "still " "sing " "and " "praise; "
  "\nSome " "time, " "some " "time, " "we'll " un der "stand.\n"

  \set stanza = "3."
  "\nWe'll " "know " "why " "clouds " in "stead " "of " "sun "
  "\nWere " o "ver " "many " "a " cher "ished " "plan; "
  "\nWhy " "song " "has " "ceased " "when " "scarce " be "gun; "
  "\n'Tis " "there, " "some " "time, " "we'll " un der "stand. "
  "\nThen " "trust " "in " "God " "thro' " "all " "thy " "days; "
  "\nFear " "not! " "for " "He " "doth " "hold " "thy " "hand: "
  "\nThough " "dark " "thy " "way, " "still " "sing " "and " "praise; "
  "\nSome " "time, " "some " "time, " "we'll " un der "stand.\n"

  \set stanza = "4."
  "\nWhy " "what " "we " "long " "for " "most " "of " "all, "
  "\nE" "ludes " "so " "oft " "our " ea "ger " "hand; "
  "\nWhy " "hopes " "are " "crushed " "amd " cas "tles " "fall, "
  "\nUp " "there, " "some " "time, " "we'll " un der "stand. "
  "\nThen " "trust " "in " "God " "thro' " "all " "thy " "days; "
  "\nFear " "not! " "for " "He " "doth " "hold " "thy " "hand: "
  "\nThough " "dark " "thy " "way, " "still " "sing " "and " "praise; "
  "\nSome " "time, " "some " "time, " "we'll " un der "stand.\n"

  \set stanza = "5."
  "\nGod " "knows " "the " "way, " "He " "holds " "the " "key, "
  "\nHe " "guides " "us " "with " un err "ing " "hand; "
  "\nSome " "time " "with " tear "less " "eyes " "we'll " "see; "
  "\nYes, " "there, " "up " "there, " "we'll " un der "stand. "
  "\nThen " "trust " "in " "God " "thro' " "all " "thy " "days; "
  "\nFear " "not! " "for " "He " "doth " "hold " "thy " "hand: "
  "\nThough " "dark " "thy " "way, " "still " "sing " "and " "praise; "
  "\nSome " "time, " "some " "time, " "we'll " un der "stand. "
}

wordsMidiAlto = \lyricmode {
  \set stanza = "1."
  "Not " "now, " "but " "in " "the " com "ing " "years— "
  "\nIt " "may " "be " "in " "the " bet "ter " "land— "
  "\nWe'll " "read " "the " mean "ing " "of " "our " "tears, "
  "\nAnd " "there, " "some " "time, " "we'll " un der "stand. "
  "\nThen " "trust " "in " "God " "thro' " "all " "thy " "days; "
  "\nFear " "not! " "for " "He " "doth " "hold, " "doth " "hold " "thy " "hand: "
  "\nThough " "dark " "thy " "way, " "still " "sing " "and " "praise; "
  "\nSome " "time, " "some " "time, " "we'll " un der "stand.\n"

  \set stanza = "2."
  "\nWe'll " "catch " "the " bro "ken " "threads " a "gain, "
  "\nAnd " fin "ish " "what " "we " "here " be "gan; "
  "\nHeav'n " "will " "the " mys te "ries " ex "plain, "
  "\nAnd " "then, " "ah " "then, " "we'll " un der "stand. "
  "\nThen " "trust " "in " "God " "thro' " "all " "thy " "days; "
  "\nFear " "not! " "for " "He " "doth " "hold, " "doth " "hold " "thy " "hand: "
  "\nThough " "dark " "thy " "way, " "still " "sing " "and " "praise; "
  "\nSome " "time, " "some " "time, " "we'll " un der "stand.\n"

  \set stanza = "3."
  "\nWe'll " "know " "why " "clouds " in "stead " "of " "sun "
  "\nWere " o "ver " "many " "a " cher "ished " "plan; "
  "\nWhy " "song " "has " "ceased " "when " "scarce " be "gun; "
  "\n'Tis " "there, " "some " "time, " "we'll " un der "stand. "
  "\nThen " "trust " "in " "God " "thro' " "all " "thy " "days; "
  "\nFear " "not! " "for " "He " "doth " "hold, " "doth " "hold " "thy " "hand: "
  "\nThough " "dark " "thy " "way, " "still " "sing " "and " "praise; "
  "\nSome " "time, " "some " "time, " "we'll " un der "stand.\n"

  \set stanza = "4."
  "\nWhy " "what " "we " "long " "for " "most " "of " "all, "
  "\nE" "ludes " "so " "oft " "our " ea "ger " "hand; "
  "\nWhy " "hopes " "are " "crushed " "amd " cas "tles " "fall, "
  "\nUp " "there, " "some " "time, " "we'll " un der "stand. "
  "\nThen " "trust " "in " "God " "thro' " "all " "thy " "days; "
  "\nFear " "not! " "for " "He " "doth " "hold, " "doth " "hold " "thy " "hand: "
  "\nThough " "dark " "thy " "way, " "still " "sing " "and " "praise; "
  "\nSome " "time, " "some " "time, " "we'll " un der "stand.\n"

  \set stanza = "5."
  "\nGod " "knows " "the " "way, " "He " "holds " "the " "key, "
  "\nHe " "guides " "us " "with " un err "ing " "hand; "
  "\nSome " "time " "with " tear "less " "eyes " "we'll " "see; "
  "\nYes, " "there, " "up " "there, " "we'll " un der "stand. "
  "\nThen " "trust " "in " "God " "thro' " "all " "thy " "days; "
  "\nFear " "not! " "for " "He " "doth " "hold, " "doth " "hold " "thy " "hand: "
  "\nThough " "dark " "thy " "way, " "still " "sing " "and " "praise; "
  "\nSome " "time, " "some " "time, " "we'll " un der "stand. "
}

\book {
  \bookOutputSuffix "midi"
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Voice { \repeat unfold \verses \RehearsalTrack }
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
  \bookOutputSuffix "midi-alto"
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack     }
            \new Voice { \global \repeat unfold \verses \soprano \bar "|." }
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \repeat unfold \verses { \alto \nl } \bar "|." }
            \addlyrics \wordsMidiAlto
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

#(set-global-staff-size 17)

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
            \new Lyrics \lyricsto "aligner"   \wordsFive
            \new NullVoice \alto
            \addlyrics \chorusAlto
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine #'(2 . 88) { \global \tenor } { \global \bass }
            \new NullVoice = alignerT { \tenor }
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
                                              \wordsFive  \chorus
                                            }
            \new NullVoice {\repeat unfold \verses \alto}
            \addlyrics {\repeat unfold \verses \chorusAlto}
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine #'(2 . 88) { \global \repeat unfold \verses \tenor }
                                    { \global \repeat unfold \verses \bass }
            \new NullVoice = alignerT { \repeat unfold \verses \tenor }
          >>
        >>
}

\book {
  \bookOutputSuffix "single"
  \score {
    \singlescore
    \layout {
      #(layout-set-staff-size 20)
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
      #(layout-set-staff-size 20)
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}
