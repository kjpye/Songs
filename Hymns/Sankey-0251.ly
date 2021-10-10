\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Loving-Kindness"
  subtitle    = "Sankey No. 251"
  subsubtitle = "Sankey 880 No. 372"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Wm. Caldwell."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "S. Medley."
  meter       = \markup\smallCaps "l.m."
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key a \major
  \time 4/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s4 s1*3 s2.
  \mark \markup { \box "B" } s4 s1*3 s2.
  \mark \markup { \box "C" } s4 s1*3 s2.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
  s4 s1*3
  s2 \tempo 4=40 s4 \tempo 4=120 s4
  s1*7
  s2.
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  e'4
  a4 4 8[b] cis[a]
  b4 4 4 cis8[d]
  e4. d8 cis8[b e] cis
  a4 b a\fermata \bar "|" \break cis8[d]
  e4 4 8[d] cis4 % B
  d4 4 8[cis] b[e]
  e4. d8 cis[b e] cis
  a4 b a \bar "|" \break a4
  b4. cis8 b[gis] e4 % C
  d'4. e8 d[cis] b cis16[d]
  e4. d8 cis[b e] cis
  a4 b a
}

alto = \relative {
  \autoBeamOff
  cis'4
  e4 4 4 4
  gis4 4 4 e
  e4. 8 4. 8
  e4 4 4\fermata e4
  e4 4 a8[e] 4 % B
  e4 4 4 4
  e4. 8 4. 8
  e4 4 4 \partCombineApart r
  R1 \partCombineAutomatic % C
  b'4. cis8 b8[a] gis a
  a4. e8 4. 8
  e4 4 4
}

tenor = \relative {
  \autoBeamOff
  a4
  cis4 4 8[d] e[cis]
  b4 4 4 a8[b]
  cis4. b8 a[d cis] a
  cis4 d cis a8[b]
  cis4 4 8[b] a4
  b4 4 8[cis] d4
  cis4. b8 a[d cis] a
  cis4 d cis \partCombineApart r
  R1
  r2 r4 r8 \partCombineAutomatic a16[b]
  cis4. b8 a[d cis] a
  cis4 d cis
}

bass = \relative {
  \autoBeamOff
  a4
  a4 4 4 a,8[cis]
  e4 4 4 a8[b]
  a4. 8 a4(a,8) cis
  e4 4 a\fermata a8[b]
  cis4 4 8[b] a4 % B
  b4 4 8[a] e4
  a4. 8 4(a,8) cis
  e4 4 a, a
  e'4. 8 4 4 % C
  e4. 8 4 8 a16[b]
  a4. 8 4(a,8) cis
  e4 4 a,
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  A -- wake, my soul, in joy -- ful lays,
  And sing thy great Re -- deem -- er's praise;
  He just -- ly claims a song from me:
  His lov -- ing kind -- ness, oh, how free!
  His lov -- ing kind -- ness, lov -- ing kind -- ness,
  His lov -- ing kind -- ness, oh, how free!
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  He saw me ru -- ined by the Fall,
  Yet loved me, not with -- stand -- ing all;
  He saved me from my lost es -- tate:
  His lov -- ing kind -- ness, oh, how great!
  His lov -- ing kind -- ness, lov -- ing kind -- ness,
  His lov -- ing kind -- ness, oh, how great!
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Tho' num -- 'rous hosts of migh -- ty foes,
  Tho' earth and hell my way op -- pose,
  He safe -- ly leads my soul a -- long:
  His lov -- ing kind -- ness, oh, how strong!
  His lov -- ing kind -- ness, lov -- ing kind -- ness,
  His lov -- ing kind -- ness, oh, how strong!
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "A" "wake, " "my " "soul, " "in " joy "ful " "lays, "
  "\nAnd " "sing " "thy " "great " Re deem "er's " "praise; "
  "\nHe " just "ly " "claims " "a " "song " "from " "me: "
  "\nHis " lov "ing " kind "ness, " "oh, " "how " "free! "
  "\nHis " lov "ing " kind "ness, " lov "ing " kind "ness, "
  "\nHis " lov "ing " kind "ness, " "oh, " "how " "free! "

  \set stanza = "2."
  "\nHe " "saw " "me " ru "ined " "by " "the " "Fall, "
  "\nYet " "loved " "me, " "not " with stand "ing " "all; "
  "\nHe " "saved " "me " "from " "my " "lost " es "tate: "
  "\nHis " lov "ing " kind "ness, " "oh, " "how " "great! "
  "\nHis " lov "ing " kind "ness, " lov "ing " kind "ness, "
  "\nHis " lov "ing " kind "ness, " "oh, " "how " "great! "

  \set stanza = "3."
  "\nTho' " num "'rous " "hosts " "of " migh "ty " "foes, "
  "\nTho' " "earth " "and " "hell " "my " "way " op "pose, "
  "\nHe " safe "ly " "leads " "my " "soul " a "long: "
  "\nHis " lov "ing " kind "ness, " "oh, " "how " "strong! "
  "\nHis " lov "ing " kind "ness, " lov "ing " kind "ness, "
  "\nHis " lov "ing " kind "ness, " "oh, " "how " "strong! "
}

wordsMidiAlto = \lyricmode {
  \set stanza = "1."
  "A" "wake, " "my " "soul, " "in " joy "ful " "lays, "
  "\nAnd " "sing " "thy " "great " Re deem "er's " "praise; "
  "\nHe " just "ly " "claims " "a " "song " "from " "me: "
  "\nHis " lov "ing " kind "ness, " "oh, " "how " "free! "
  "\nlov" "ing " kind "ness, "
  "\nHis " lov "ing " kind "ness, " "oh, " "how " "free! "

  \set stanza = "2."
  "\nHe " "saw " "me " ru "ined " "by " "the " "Fall, "
  "\nYet " "loved " "me, " "not " with stand "ing " "all; "
  "\nHe " "saved " "me " "from " "my " "lost " es "tate: "
  "\nHis " lov "ing " kind "ness, " "oh, " "how " "great! "
  "\nlov" "ing " kind "ness, "
  "\nHis " lov "ing " kind "ness, " "oh, " "how " "great! "

  \set stanza = "3."
  "\nTho' " num "'rous " "hosts " "of " migh "ty " "foes, "
  "\nTho' " "earth " "and " "hell " "my " "way " op "pose, "
  "\nHe " safe "ly " "leads " "my " "soul " a "long: "
  "\nHis " lov "ing " kind "ness, " "oh, " "how " "strong! "
  "\nlov" "ing " kind "ness, "
  "\nHis " lov "ing " kind "ness, " "oh, " "how " "strong! "
}

wordsMidiTenor = \lyricmode {
  \set stanza = "1."
  "A" "wake, " "my " "soul, " "in " joy "ful " "lays, "
  "\nAnd " "sing " "thy " "great " Re deem "er's " "praise; "
  "\nHe " just "ly " "claims " "a " "song " "from " "me: "
  "\nHis " lov "ing " kind "ness, " "oh, " "how " "free! "
  "\nHis " lov "ing " kind "ness, " "oh, " "how " "free! "

  \set stanza = "2."
  "\nHe " "saw " "me " ru "ined " "by " "the " "Fall, "
  "\nYet " "loved " "me, " "not " with stand "ing " "all; "
  "\nHe " "saved " "me " "from " "my " "lost " es "tate: "
  "\nHis " lov "ing " kind "ness, " "oh, " "how " "great! "
  "\nHis " lov "ing " kind "ness, " "oh, " "how " "great! "

  \set stanza = "3."
  "\nTho' " num "'rous " "hosts " "of " migh "ty " "foes, "
  "\nTho' " "earth " "and " "hell " "my " "way " op "pose, "
  "\nHe " safe "ly " "leads " "my " "soul " a "long: "
  "\nHis " lov "ing " kind "ness, " "oh, " "how " "strong! "
  "\nHis " lov "ing " kind "ness, " "oh, " "how " "strong! "
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
  \bookOutputSuffix "midi-alto"
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

\book {
  \bookOutputSuffix "midi-tenor"
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
            \addlyrics \wordsMidiTenor
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
