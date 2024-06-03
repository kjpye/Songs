\version "2.25.16"

\include "../kjp.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "I Know His Voice."
  subtitle    = "Sankey No. 861"
%  subsubtitle = "Sankey 880 No. Y"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Howard E. Smith."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup{\smallCaps "J. Oatman," Jun.}
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
  \textMark \markup { \box \bold "A" } s4     s1*3 s2.
  \textMark \markup { \box \bold "B" } s4     s1*3 s2 s8.
  \textMark \markup { \box \bold "C" } s16 s4 s1*2
  \textMark \markup { \box \bold "D" }        s1*2 s2 s8.
  \textMark \markup { \box \bold "E" } s16 s4 s1*2 s2.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

soprano = \relative {
  aes'8.[bes16] | c8. ees,16 8. 16 f4 aes | c2. 4 | bes8. 16 c8. 16 des4 f | ees2. \bar "|" \break
  ees8.[des16] | c8. ees,16 8. 16 f4 aes | c2. des4 | c8. bes16 aes8. g16 aes4 bes | aes2~8.
  \section \sectionLabel \markup\smallCaps Chorus. \break
  ees16 f8. ees16 | c'2~8. aes16 bes8. aes16 | g2~8. ees16 f8. ees16 |
  des'2~8. 16 bes8. b16 | c2~8. ees,16 f8. ees16 | c'2~8. \bar "|" \break
  aes16 bes8. c16 | des2~8.\fermata aes16 g8. f16 | ees4. c'8 4 bes | aes2~4
}

alto = \relative {
  c'8.[des16] | ees8. c16 8. 16 des4 c | ees2. 4 | 8. 16 8. 16 g4 4 | aes2.
  ees4 | 8. c16 8. 16 des4 c | ees2. f4 | ees8. 16 8. 16 4 4 | 2~8. \section
  \apart r16 r4 | r8. ees16 8. 16 8. r16 r4 | r8. des16 8. 16 8. r16 r4 |
  r8. ees16 8. 16 8. r16 r4 | r8. ees16 8. 16 8. r16 r4 | r8. ees16 8. 16 8.
  r16 r4 | r8. f16 8. 16 8. \auto 16 ees8. des16 | c4. ees8 4 des | c8. 16 des8. 16 c4
}

tenor = \relative {
  aes4 | 8. 16 8. 16 4 4 |2. 4 | g8. 16 aes8. 16 bes4 des | c2.
  c8.[bes16] | aes8. 16 8. 16 4 4 | 2. 4 | 8. des16 c8. bes16 c4 des | c2~8. \section
  r16 r4 | r8. aes16 8. 16 8. r16 r4 | r8. bes16 8. 16 8. r16 r4 |
  r8. g16 8. 16 8. r16 r4 | r8. aes16 8. 16 8. r16 r4 | r8. aes16 8. 16 8.
  r16 r4 | r8. aes16 8. 16 8._\fermata des16 aes8. 16 | 4. 8 4 g | aes8. ees16 f8. 16 ees4
}

bass = \relative {
  aes,4 | 8. 16 8. 16 4 4 | 2. 4 | ees'8. 16 8. 16 4 4 | aes2.
  aes4 | aes,8. 16 8. 16 4 4 | 2. des4 | ees8. 16 8. 16 4 4 | aes,2~8. \section
  r16 r4 | r8. aes16 8. 16 8. r16 r4 | r8. ees'16 8. 16 8. r16 r4 |
  r8. ees16 8. 16 8. r16 r4 | r8. aes,16 8. 16 8. r16 r4 | r8. aes16 8. 16 8.
  r16 r4 | r8. des16 8. 16 8. 16 8. 16 | ees4. 8 4 4 | aes,2~4
}

chorus = \lyricmode {
  I know His voice, __ my Sa -- viour’s voice; __
  And oh, it makes __ my heart re -- joice, __
  When -- ev -- er He __ shall speak to me; __
  Oh, praise the Lord! I know His voice. __
}

chorusMen = \lyricmode {
  \repeat unfold 32 \skip 1
  I know His voice, my Sa -- viour’s voice;
  And oh, it makes my heart re -- joice,
  When -- ev -- er He shall speak to me;
%  Oh, praise the Lord! I know His voice.
  _ _ _ _ _ _ _ _ I know His voice.
}

verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  Though I my Sa -- viour may not see,
  Yet ev -- ’ry hour He speaks to me;
  And since I made of Him my choice,
  Oh, praise the Lord, I know His voice!
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  How oft -- en, tho’ I see no form,
  I hear His voice a -- bove the storm;
  He bids the waves their tu -- mult cease:
  The sun breaks forth, and all is peace.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  He speaks to me of truth and right,
  Of joy and rest be -- yond our sight;
  He speaks to me of peace and love,
  And tells me of the home a -- bove.
}
  
wordsMidiSop = \lyricmode {
  \set stanza = "1."
  "Though " "I " "my " Sa "viour " "may " "not " "see, "
  "\nYet " ev "’ry " "hour " "He " "speaks " "to " "me; "
  "\nAnd " "since " "I " "made " "of " "Him " "my " "choice, "
  "\nOh, " "praise " "the " "Lord, " "I " "know " "His " "voice! "
  "\nI " "know " "His " "voice, "  "my " Sa "viour’s " "voice; " 
  "\nAnd " "oh, " "it " "makes "  "my " "heart " re "joice, " 
  "\nWhen" ev "er " "He "  "shall " "speak " "to " "me; " 
  "\nOh, " "praise " "the " "Lord! " "I " "know " "His " "voice.\n" 

  \set stanza = "2."
  "\nHow " oft "en, " "tho’ " "I " "see " "no " "form, "
  "\nI " "hear " "His " "voice " a "bove " "the " "storm; "
  "\nHe " "bids " "the " "waves " "their " tu "mult " "cease: "
  "\nThe " "sun " "breaks " "forth, " "and " "all " "is " "peace. "
  "\nI " "know " "His " "voice, "  "my " Sa "viour’s " "voice; " 
  "\nAnd " "oh, " "it " "makes "  "my " "heart " re "joice, " 
  "\nWhen" ev "er " "He "  "shall " "speak " "to " "me; " 
  "\nOh, " "praise " "the " "Lord! " "I " "know " "His " "voice.\n" 

  \set stanza = "3."
  "\nHe " "speaks " "to " "me " "of " "truth " "and " "right, "
  "\nOf " "joy " "and " "rest " be "yond " "our " "sight; "
  "\nHe " "speaks " "to " "me " "of " "peace " "and " "love, "
  "\nAnd " "tells " "me " "of " "the " "home " a "bove. "
  "\nI " "know " "His " "voice, "  "my " Sa "viour’s " "voice; " 
  "\nAnd " "oh, " "it " "makes "  "my " "heart " re "joice, " 
  "\nWhen" ev "er " "He "  "shall " "speak " "to " "me; " 
  "\nOh, " "praise " "the " "Lord! " "I " "know " "His " "voice. " 
}

wordsMidi = \lyricmode {
  \set stanza = "1."
  "Though " "I " "my " Sa "viour " "may " "not " "see, "
  "\nYet " ev "’ry " "hour " "He " "speaks " "to " "me; "
  "\nAnd " "since " "I " "made " "of " "Him " "my " "choice, "
  "\nOh, " "praise " "the " "Lord, " "I " "know " "His " "voice! "
  "\nI " "know " "His " "voice, " "my " Sa "viour’s " "voice; "
  "\nAnd " "oh, " "it " "makes " "my " "heart " re "joice, "
  "\nWhen" ev "er " "He " "shall " "speak " "to " "me; "
  "\nOh, " "praise " "the " "Lord! " "I " "know " "His " "voice, "
  "\nI " "know " "His " "voice.\n"

  \set stanza = "2."
  "\nHow " oft "en, " "tho’ " "I " "see " "no " "form, "
  "\nI " "hear " "His " "voice " a "bove " "the " "storm; "
  "\nHe " "bids " "the " "waves " "their " tu "mult " "cease: "
  "\nThe " "sun " "breaks " "forth, " "and " "all " "is " "peace. "
  "\nI " "know " "His " "voice, " "my " Sa "viour’s " "voice; "
  "\nAnd " "oh, " "it " "makes " "my " "heart " re "joice, "
  "\nWhen" ev "er " "He " "shall " "speak " "to " "me; "
  "\nOh, " "praise " "the " "Lord! " "I " "know " "His " "voice, "
  "\nI " "know " "His " "voice.\n"

  \set stanza = "3."
  "\nHe " "speaks " "to " "me " "of " "truth " "and " "right, "
  "\nOf " "joy " "and " "rest " be "yond " "our " "sight; "
  "\nHe " "speaks " "to " "me " "of " "peace " "and " "love, "
  "\nAnd " "tells " "me " "of " "the " "home " a "bove. "
  "\nI " "know " "His " "voice, " "my " Sa "viour’s " "voice; "
  "\nAnd " "oh, " "it " "makes " "my " "heart " re "joice, "
  "\nWhen" ev "er " "He " "shall " "speak " "to " "me; "
  "\nOh, " "praise " "the " "Lord! " "I " "know " "His " "voice, "
  "\nI " "know " "His " "voice. "
}

wordsMidiBass = \lyricmode {
  \set stanza = "1."
  "Though " "I " "my " Sa "viour " "may " "not " "see, "
  "\nYet " ev "’ry " "hour " "He " "speaks " "to " "me; "
  "\nAnd " "since " "I " "made " "of " "Him " "my " "choice, "
  "\nOh, " "praise " "the " "Lord, " "I " "know " "His " "voice! "
  "\nI " "know " "His " "voice, " "my " Sa "viour’s " "voice; "
  "\nAnd " "oh, " "it " "makes " "my " "heart " re "joice, "
  "\nWhen" ev "er " "He " "shall " "speak " "to " "me; "
  "\nOh, " "praise " "the " "Lord! " "I " "know " "His " "voice.\n"

  \set stanza = "2."
  "\nHow " oft "en, " "tho’ " "I " "see " "no " "form, "
  "\nI " "hear " "His " "voice " a "bove " "the " "storm; "
  "\nHe " "bids " "the " "waves " "their " tu "mult " "cease: "
  "\nThe " "sun " "breaks " "forth, " "and " "all " "is " "peace. "
  "\nI " "know " "His " "voice, " "my " Sa "viour’s " "voice; "
  "\nAnd " "oh, " "it " "makes " "my " "heart " re "joice, "
  "\nWhen" ev "er " "He " "shall " "speak " "to " "me; "
  "\nOh, " "praise " "the " "Lord! " "I " "know " "His " "voice.\n"

  \set stanza = "3."
  "\nHe " "speaks " "to " "me " "of " "truth " "and " "right, "
  "\nOf " "joy " "and " "rest " be "yond " "our " "sight; "
  "\nHe " "speaks " "to " "me " "of " "peace " "and " "love, "
  "\nAnd " "tells " "me " "of " "the " "home " a "bove. "
  "\nI " "know " "His " "voice, " "my " Sa "viour’s " "voice; "
  "\nAnd " "oh, " "it " "makes " "my " "heart " re "joice, "
  "\nWhen" ev "er " "He " "shall " "speak " "to " "me; "
  "\nOh, " "praise " "the " "Lord! " "I " "know " "His " "voice. "
}

\book {
  \paper {
    output-suffix = midi-sop
  }
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Voice { \repeat-verses \verses \RehearsalTrack }
            \new Voice { \repeat-verses \verses \TempoTrack     }
            \new Voice { \global \repeat-verses \verses \soprano \bar "|." }
            \addlyrics \wordsMidiSop
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \repeat-verses \verses \alto \bar "|." }
          >>
                                % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global \repeat-verses \verses \tenor }
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \repeat-verses \verses \bass }
          >>
        >>
    \midi { \context { \Staff autoBeaming = ##f } }
  }
}

\book {
  \paper {
    output-suffix = midi
  }
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Voice { \repeat-verses \verses \RehearsalTrack }
            \new Voice { \repeat-verses \verses \TempoTrack     }
            \new Voice { \global \repeat-verses \verses \soprano \bar "|." }
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \repeat-verses \verses \alto \bar "|." }
          >>
                                % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global \repeat-verses \verses \tenor }
            \addlyrics \wordsMidi
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \repeat-verses \verses \bass }
          >>
        >>
    \midi { \context { \Staff autoBeaming = ##f } }
  }
}

\book {
  \paper {
    output-suffix = midi-bass
  }
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Voice { \repeat-verses \verses \RehearsalTrack }
            \new Voice { \repeat-verses \verses \TempoTrack     }
            \new Voice { \global \repeat-verses \verses \soprano \bar "|." }
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \repeat-verses \verses \alto \bar "|." }
          >>
                                % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global \repeat-verses \verses \tenor }
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \repeat-verses \verses \bass }
            \addlyrics \wordsMidiBass
          >>
        >>
    \midi { \context { \Staff autoBeaming = ##f } }
  }
}

#(set-global-staff-size 19)

\book {
  \paper {
    output-suffix = repeat
  }
  \score {
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff = women \with { printPartCombineTexts = ##f }
          <<
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new NullVoice = "aligner" \keepWithTag #'dash \soprano
            \new Voice \partCombine #'(2 . 88) { \global \keepWithTag #'dash \soprano \bar "|." } { \global \keepWithTag #'dash \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
            \new Lyrics \lyricsto "aligner"   \wordsThree
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine #'(2 . 88) { \global \keepWithTag #'dash \tenor } { \global \keepWithTag #'dash \bass }
            \new NullVoice = alignerT { \keepWithTag #'dash \tenor }
          >>
          \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT \chorusMen
        >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Staff
                 \RemoveAllEmptyStaves
                 autoBeaming = ##f
      }
    }
  }
}

singlescore = {
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff = women \with { printPartCombineTexts = ##f }
          <<
            \new Voice { \repeat-verses \verses \RehearsalTrack }
            \new Voice { \repeat-verses \verses \TempoTrack }
            \new NullVoice = "aligner" { \repeat-verses \verses \soprano }
            \new Voice \partCombine #'(2 . 88) { \global \repeat-verses \verses \soprano \bar "|." }
                                    { \global \repeat-verses \verses { \alto \nl } \bar "|." }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine #'(2 . 88) { \global \repeat-verses \verses { \tenor \nl } }
                                    { \global \repeat-verses \verses \bass }
            \new NullVoice = alignerT { \repeat-verses \verses \tenor }
          >>
          \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT { \repeat unfold \verses \chorusMen }
        >>
}

\book {
  \paper {
    output-suffix = single
  }
  \score {
    \singlescore
    \layout {
      #(layout-set-staff-size 20)
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Staff
                 \RemoveAllEmptyStaves
                 autoBeaming = ##f
      }
    }
  }
}

\book {
  \paper {
    output-suffix = singlepage
  }
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
      \context { \Staff
                 \RemoveAllEmptyStaves
                 autoBeaming = ##f
      }
    }
  }
}
