\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Now let my soul, Eternal King."
  subtitle    = "Sankey No. 265"
  subsubtitle = "Sankey 880 No. 626"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "F. H. Barthelemon."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "O. Heginbothom."
  meter       = \markup\smallCaps "L.M."
  piece       = \markup\smallCaps "Morning Hymn."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

#(set-global-staff-size 17)

global = {
  \key a \major
  \time 4/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s4 s1*3 s2.
  \mark \markup { \box "B" } s4 s1*3 s2.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  a'4
  cis4 4 4 d8[cis]
  b4 4 4 e
  dis4 e dis8[cis] b[a]
  gis4 fis e \bar "|" \break 4
  gis4 a b gis8[a] % B
  b4 cis d cis
  fis,4 gis a e'8[d]
  cis4 b a
}

alto = \relative {
  \autoBeamOff
  e'4
  e4 4 fis4 4
  b,4 dis e gis
  fis4 e e e
  e4 dis e b
  e4 dis e e
  fis4 4 4 eis
  fis4 d cis e8[fis]
  e4 8[d] cis4
}

tenor = \relative {
  \autoBeamOff
  cis'4
  cis4 4 a a
  gis4 a b b
  a4 gis a cis
  b4 a fis gis
  b4 a gis b % B
  fis4 ais b gis
  fis4 b a a
  a4 gis a
}

bass = \relative {
  \autoBeamOff
  a,4
  a'4 4 fis d
  e4 fis gis e
  b4 cis a fis'
  b4 b, e e
  e4 fis gis e % B
  d4 fis b, cis
  d4 b fis' cis8[d]
  e4 4 a,
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  Now let my soul, e -- ter -- nal King,
  To Thee its grate -- ful tri -- bute bring;
  My knee with hum -- ble hom -- age bow,
  My tongue per -- form its sol -- emn vow.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  All na -- ture dings Thy bound -- less love,
  In worlds be -- low and worlds a -- bove;
  But in Thy bless -- ed Word I trace
  Di -- vi -- ner won -- ders of Thy grace.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Here Je -- sus bids my sor -- rows cease,
  And gives my la -- bouring con -- science peace;
  Here lifts my grate -- ful pas -- sions high,
  And points to man -- sions in the sky.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  For love like this, oh, let my song
  Through end -- less years Thy praise pro -- long.
  Let dis -- tant climes The name a -- dore,
  Till time and na -- ture are no more.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "\nNow " "let " "my " "soul, " e ter "nal " "King, "
  "\nTo " "Thee " "its " grate "ful " tri "bute " "bring; "
  "\nMy " "knee " "with " hum "ble " hom "age " "bow, "
  "\nMy " "tongue " per "form " "its " sol "emn " "vow. "

  \set stanza = "2."
  "\nAll " na "ture " "dings " "Thy " bound "less " "love, "
  "\nIn " "worlds " be "low " "and " "worlds " a "bove; "
  "\nBut " "in " "Thy " bless "ed " "Word " "I " "trace "
  "\nDi" vi "ner " won "ders " "of " "Thy " "grace. "

  \set stanza = "3."
  "\nHere " Je "sus " "bids " "my " sor "rows " "cease, "
  "\nAnd " "gives " "my " la "bouring " con "science " "peace; "
  "\nHere " "lifts " "my " grate "ful " pas "sions " "high, "
  "\nAnd " "points " "to " man "sions " "in " "the " "sky. "

  \set stanza = "4."
  "\nFor " "love " "like " "this, " "oh, " "let " "my " "song "
  "\nThrough " end "less " "years " "Thy " "praise " pro "long. "
  "\nLet " dis "tant " "climes " "The " "name " a "dore, "
  "\nTill " "time " "and " na "ture " "are " "no " "more. "
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
