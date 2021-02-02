\version "2.20.2"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Tell Me the Story of Jesus"
  subtitle    = "Sankey No. 43"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Ira D. Sankey"
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = "Fanny J. Crosby"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key ees \major
  \time 6/8
  \tempo 4=120
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
% \mark \markup { \circle "1a" }
  \mark \markup { \box "A" } s2.*4
  \mark \markup { \box "B" } s2.*4
  \mark \markup { \box "C" } s2.*4
  \repeat volta 2 {
    \mark \markup { \box "D" } s2.*3
  }
  \alternative {{s2.}{s2.}}
}

soprano = \relative {
  \global
  g'8 aes a bes c bes
  bes4. f
  ees8 ees ees f f f
  g4.~g
  g8 aes a bes c bes % B
  bes4. ees
  d8 bes d c bes a
  bes4.~bes
  aes8 aes aes aes bes aes % C
  aes4. g
  c8 c c ees d c
  bes4.~bes
  \repeat volta 2 {
    ees8 ees ees d d d % D
    c4. ees
    bes8 bes bes bes aes f
  }
  \alternative {
    {
      g4.~g
    }
    {
      ees4.~ees
    }
  }
}

alto = \relative {
  \global
  ees'8 f fis g ees ees
  d4. d
  ees8 c c d d d
  ees4.~ees
  ees8 f fis g ees ees % B
  ees4. ees
  f8 d f ees d ees
  ees4.~ees
  f8 f f f g f % C
  f4. ees
  ees8 ees ees ees ees ees
  ees4.~ees
  \repeat volta 2 {
    ees8 g g f f f % D
    ees4. ees
    ees8 d ees d f d
  }
  \alternative {
    {
      ees4.~ees
    }
    {
      ees4.~ees
    }
  }
}

tenor = \relative {
  \global
  bes8 bes c bes aes g
  f4. aes
  g8 g g bes bes bes
  bes4.~bes
  bes8 bes c bes aes g % B
  g4. g
  bes8 bes bes a bes c
  bes4.~bes
  bes8 bes bes bes bes bes % C
  bes4. bes
  aes8 aes aes c bes aes
  g4.~g
  \repeat volta 2 {
    c8 c c b b b % D
    c4. c
    g8 aes g f bes bes
  }
  \alternative {
    { bes4.~bes }
    { g4.~g }
  }
}

bass= \relative {
  \global
  ees8 ees ees ees ees ees
  bes4. bes
  c8 c c bes bes bes
  ees4.~ees
  ees8 ees ees ees ees ees % B
  ees4. c
  f8 f f f f f
  bes,4.~bes
  bes8 bes bes bes bes d % C
  ees4. ees
  aes,8 aes aes aes aes aes
  ees'4.~ees
  \repeat volta 2 {
    c8 c c g' g g % D
    aes4. aes,
    bes8 bes bes bes bes bes
  }
  \alternative {
    { ees4.~ees }
    { ees4.~ees }
  }
}

chorus = \lyricmode {
}

wordsOne = \lyricmode {
  \set stanza = "1."
  Tell me the sto -- ry of Je -- sus,
  Write on my heart ev -- "'ry" word;
  Tell me the sto -- ry most pre -- cious,
  Sweet -- est that ev -- er was heard;
  Tell how the an -- gels in cho -- rus
  Sang, as they wel -- comed His birth,
  "\"Glo" -- ry to God in the high -- est.
  Peace and good tid -- ings to "earth!\""
  "earth!\""
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Fast -- ing a -- lone in the des -- ert,
  Tell of the days that He pass'd
  How for our sins He was temp -- ted,
  Yet was tri -- umph -- ant at last;
  Tell of the years of His la -- bour,
  Tell of the sor -- rows He bore;
  He was des -- pised and re -- ject -- ed,
  Home -- less, af -- flict -- ed, and poor;
  poor.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Tell of the cross where they nail'd Him;
  Tell of His an -- guish and pain;
  Tell of the grave where they laid Him—
  Tell how He liv -- eth a -- gain;
  Love, in that sto -- ry so ten -- der,
  Clear -- er than ev -- er I see;
  Glo -- ry for ev -- er to Je -- sus!
  He paid the ran -- som for me;
  me.
}
  
wordsSingle = \lyricmode {
  \set stanza = "1."
  Tell me the sto -- ry of Je -- sus,
  Write on my heart ev -- "'ry" word;
  Tell me the sto -- ry most pre -- cious,
  Sweet -- est that ev -- er was heard;
  Tell how the an -- gels in cho -- rus
  Sang, as they wel -- comed His birth,
  "\"Glo" -- ry to God in the high -- est.
  Peace and good tid -- ings to "earth!\""
  "\"Glo" -- ry to God in the high -- est.
  Peace and good tid -- ings to "earth!\""

  \set stanza = "2."
  Fast -- ing a -- lone in the des -- ert,
  Tell of the days that He pass'd
  How for our sins He was temp -- ted,
  Yet was tri -- umph -- ant at last;
  Tell of the years of His la -- bour,
  Tell of the sor -- rows He bore;
  He was des -- pised and re -- ject -- ed,
  Home -- less, af -- flict -- ed, and poor;
  He was des -- pised and re -- ject -- ed,
  Home -- less, af -- flict -- ed, and poor;

  \set stanza = "3."
  Tell of the cross where they nail'd Him;
  Tell of His an -- guish and pain;
  Tell of the grave where they laid Him—
  Tell how He liv -- eth a -- gain;
  Love, in that sto -- ry so ten -- der,
  Clear -- er than ev -- er I see;
  Glo -- ry for ev -- er to Je -- sus!
  He paid the ran -- som for me;
  Glo -- ry for ev -- er to Je -- sus!
  He paid the ran -- som for me;
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Tell " "me " "the " sto "ry " "of " Je "sus, "
  "\nWrite " "on " "my " "heart " ev "'ry " "word; "
  "\nTell " "me " "the " sto "ry " "most " pre "cious, "
  "\nSweet" "est " "that " ev "er " "was " "heard; "
  "\nTell " "how " "the " an "gels " "in " cho "rus "
  "\nSang, " "as " "they " wel "comed " "His " "birth, "
  "\n\"Glo" "ry " "to " "God " "in " "the " high "est. "
  "\nPeace " "and " "good " tid "ings " "to " "earth!\" "
  "\n\"Glo" "ry " "to " "God " "in " "the " high "est. "
  "\nPeace " "and " "good " tid "ings " "to " "earth!\" "

  \set stanza = "2."
  "\nFast" "ing " a "lone " "in " "the " des "ert, "
  "\nTell " "of " "the " "days " "that " "He " "pass'd "
  "\nHow " "for " "our " "sins " "He " "was " temp "ted, "
  "\nYet " "was " tri umph "ant " "at " "last; "
  "\nTell " "of " "the " "years " "of " "His " la "bour, "
  "\nTell " "of " "the " sor "rows " "He " "bore; "
  "\nHe " "was " des "pised " "and " re ject "ed, "
  "\nHome" "less, " af flict "ed, " "and " "poor; "
  "\nHe " "was " des "pised " "and " re ject "ed, "
  "\nHome" "less, " af flict "ed, " "and " "poor; "

  \set stanza = "3."
  "\nTell " "of " "the " "cross " "where " "they " "nail'd " "Him; "
  "\nTell " "of " "His " an "guish " "and " "pain; "
  "\nTell " "of " "the " "grave " "where " "they " "laid " "Him— "
  "\nTell " "how " "He " liv "eth " a "gain; "
  "\nLove, " "in " "that " sto "ry " "so " ten "der, "
  "\nClear" "er " "than " ev "er " "I " "see; "
  "\nGlo" "ry " "for " ev "er " "to " Je "sus! "
  "\nHe " "paid " "the " ran "som " "for " "me; "
  "\nGlo" "ry " "for " ev "er " "to " Je "sus! "
  "\nHe " "paid " "the " ran "som " "for " "me; "
}
  
\book {
  \bookOutputSuffix "repeat"
  \score {
%    \unfoldRepeats
%    \articulate
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff <<
            \set Staff.soloText   = #""
            \set Staff.soloIIText = #""
            \set Staff.aDueText   = #""
            \new Voice \RehearsalTrack
%            \new Voice {
%               \RehearsalTrack
%               \RehearsalTrack
%               \RehearsalTrack
%            }
            \new NullVoice = "aligner" \soprano
%            \new NullVoice = "aligner" { \soprano \soprano \soprano \soprano \soprano \soprano }
            \new Voice = "women" \partCombine { \soprano \bar "|." } \alto
%            \new Voice = "women" \partCombine { \soprano \soprano \soprano  \bar "|." }
%                                               { \alto \alto \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
            \new Lyrics \lyricsto "aligner"   \wordsThree
%            \new Lyrics \lyricsto "aligner"
%            { \wordsOne   \chorus
%                                              \wordsTwo   \chorus
%                                              \wordsThree \chorus
%                                            }
%            \new Lyrics \lyricsto "aligner" \wordsMidi
          >>
                                  % Joint tenor/bass staff
          \new Staff <<
            \set Staff.soloText   = #""
            \set Staff.soloIIText = #""
            \set Staff.aDueText   = #""
            \clef "bass"
            \new Voice = "men" \partCombine \tenor \bass
%            \new Voice = "men" \partCombine { \tenor \tenor \tenor \tenor \tenor \tenor }
%                                            { \bass \bass \bass \bass \bass \basss }
          >>
        >>
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
%    \articulate
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff <<
            \set Staff.soloText   = #""
            \set Staff.soloIIText = #""
            \set Staff.aDueText   = #""
            \new Voice {
               \RehearsalTrack
               \RehearsalTrack
               \RehearsalTrack
            }
            \new NullVoice = "aligner" { \soprano \soprano \soprano }
            \new Voice = "women" \partCombine { \soprano \soprano \soprano  \bar "|." }
                                               { \alto \alto \alto }
            \new Lyrics \lyricsto "aligner" \wordsSingle
%            \new Lyrics \lyricsto "aligner" \wordsMidi
          >>
                                  % Joint tenor/bass staff
          \new Staff <<
            \set Staff.soloText   = #""
            \set Staff.soloIIText = #""
            \set Staff.aDueText   = #""
            \clef "bass"
            \new Voice = "men" \partCombine { \tenor \tenor \tenor }
                                            { \bass \bass \bass }
          >>
        >>
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
  \bookOutputSuffix "midi"
  \score {
    \unfoldRepeats
%    \articulate
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff <<
            \set Staff.soloText   = #""
            \set Staff.soloIIText = #""
            \set Staff.aDueText   = #""
            \new Voice {
               \RehearsalTrack
               \RehearsalTrack
               \RehearsalTrack
            }
            \new NullVoice = "aligner" { \soprano \soprano \soprano }
            \new Voice = "women" \partCombine { \unfoldRepeats \soprano
                                                \unfoldRepeats \soprano
                                                \unfoldRepeats \soprano  \bar "|." }
            { \unfoldRepeats \alto
              \unfoldRepeats \alto
              \unfoldRepeats \alto }
            \new Lyrics \lyricsto "aligner" \wordsMidi
          >>
                                  % Joint tenor/bass staff
          \new Staff <<
            \set Staff.soloText   = #""
            \set Staff.soloIIText = #""
            \set Staff.aDueText   = #""
            \clef "bass"
            \new Voice = "men" \partCombine { \unfoldRepeats \tenor
                                              \unfoldRepeats \tenor
                                              \unfoldRepeats \tenor }
            { \unfoldRepeats \bass
              \unfoldRepeats \bass
              \unfoldRepeats \bass }
          >>
        >>
      >>
    >>
    \midi {}
  }
}
