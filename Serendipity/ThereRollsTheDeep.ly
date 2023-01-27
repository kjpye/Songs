\version "2.22.0"

\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "There Rolls the Deep"
  subtitle    = \markup {"from Tennyson's" \italic"In Memorium" CXXIII.}
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "C. H. H. Parry."
%  arranger    = "arranger"
%  opus        = "opus"

%  poet        = "poet"
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key g \major
  \time 3/4
}

TempoTrack = {
  \tempo "Lento Espressivo" 4=60
  \set Score.tempoHideNote = ##t
  s2.
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
  \mark \markup { \box "13a" } s2.*5
  \mark \markup { \box "13b" } s2.*5
  \mark \markup { \box "14a" } s2.*4
  \mark \markup { \box "14b" } s2.*5
  \mark \markup { \box "14c" } s2.*4
  \mark \markup { \box "15a" } s2.*4
  \mark \markup { \box "15b" } s2.*4
  \mark \markup { \box "15c" } s2.*4
  \mark \markup { \box "16a" } s2.*4
  \mark \markup { \box "16b" } s2.*4
}

dynamicsSop = {
  s4. s\p\cresc | s2. | s2 s4\f | s2 s4\p | s4.\< s\> |
  s2.\omit\p s2 s4\< | s2.\f | s2\> s4\pp | s2\> s4\pp |
  s4 s\p\< s\> | s2\! s8 s\p | s2.\< | s2\> s4\! | % 14a
  s2.\< | s4.\! s8\cresc s4\< | s2 s4\! | s2.\< | s2\! s4\< |
  s2.\f | s2\mf s8 s\> | s2-\markup\italic rit. s8 s\! | s2. |
  s4.-\markup\italic "a tempo" s\p\< | s\! s\cresc | s2 s4\< | s2\> s4\p | % 15a
  s2 s8 s\> | s2\! s8 s\p | s2 s8 s\< | s\! s16 s\pp s2\> |
  s4. s\p-\markup\italic "Poco animando." | s\< s\! | s s\cresc | s2. |
  s2. | s4\< s4. s8\< | s4\> s\! s8 s\p | s4.-\markup\italic rit. s8\<s4\> | % 16a
  s4\< s4.\! s8\p | s2. | s8\< s2\! s8\pp | s2.
}

soprano = \relative {
  \global
  r4 r8 g'8 a8. b16 | c4. a8 b8. e16 | 2 d4 | g2 b,4 | 4. fis8 a8. g16 |
  fis4. r8 ais4-> ~ | 8 r b8. cis16 d8 b | fis'2 cis4 |e2 d4 | d2 fis,4 |
  r4 fis8 g a fis | d2 r8 d | e4(fis) g | b a d,8 8 | % 14a
  e8. 16 fis4 g | b4. a8 b a | d2 e,4 | fis4(gis) a | c2 4 |
  e8-> c a4-- r8 c | b8(e g4.) fis8 | e8. b16 g4 r8 g | e2. |
  r4 r8 g a b | c4. a8 b e | 2 d4 | g2 b,4 | % 15a
  b4. fis8 a g | fis2 r8 ais | b cis d4. b8 | fis' r16 cis e2~ |
  e4 r8 g, g g | g(fis a) c b8. fis16 | a4. gis8 b b | b(a c) e d g, |
  b2.~ | 8 c e d b g | c4(b) r8 a | g2 c4 | % 16a
  fis,8 g b4 r8 a | g2.~ | 8 8 b(a) r fis | g2.\fermata |
  \bar "|."
}

wordsSop = \lyricmode {
  There rolls the deep where grew the tree.
  O earth, what chang -- es hast thou seen!
  There, __ where the long street roars, hath been
  The still -- ness of the cen -- tral sea.
  The hills are sha -- dows, and they flow
  From form to form, and no -- thing stands;
  They melt __ like mist,
  the sol -- id lands,
  Like clouds __ they shape them -- selves and go.
  But in my spi -- rit will I dwell,
  And dream my dream, and hold it true;
  For though my lips my breathe a -- dieu, __
  I can -- not think __ the thing fare -- well,
  I can -- not think __ the thing fare -- well,
  I can -- not think the thing __ fare -- well,
  I can -- not think fare -- well, __
  fare -- well, fare -- well.
}

wordsSopMidi = \lyricmode {
  "There " "rolls " "the " "deep " "where " "grew " "the " "tree. "
  "\nO " "earth, " "what " chang "es " "hast " "thou " "seen! "
  "\nThere, "  "where " "the " "long " "street " "roars, " "hath " "been "
  "\nThe " still "ness " "of " "the " cen "tral " "sea. "
  "\nThe " "hills " "are " sha "dows, " "and " "they " "flow "
  "\nFrom " "form " "to " "form, " "and " no "thing " "stands; "
  "\nThey " "melt "  "like " "mist, "
  "\nthe " sol "id " "lands, "
  "\nLike " "clouds "  "they " "shape " them "selves " "and " "go. "
  "\nBut " "in " "my " spi "rit " "will " "I " "dwell, "
  "\nAnd " "dream " "my " "dream, " "and " "hold " "it " "true; "
  "\nFor " "though " "my " "lips " "my " "breathe " a "dieu, " 
  "\nI " can "not " "think "  "the " "thing " fare "well, "
  "\nI " can "not " "think "  "the " "thing " fare "well, "
  "\nI " can "not " "think " "the " "thing "  fare "well, "
  "\nI " can "not " "think " fare "well, " 
  "\nfare" "well, " fare "well. "
}

dynamicsAlto = {
  s4. s\p\cresc | s2. | s2 s4\f | s2 s4\p | s4.\< s\> |
  s2.\omit\p s2 s4\< | s2.\f | s2\> s4\pp | s2\> s4\! |
  s4 s\p\< s\> | s2\! s8 s\p | s2.\< | s2\> s4\! | % 14a
  s2.\< | s4.\! s8\cresc s4\< | s2 s4\! | s2.\< | s2\! s4\< |
  s2.\f | s4.\mf s8\< s\> s\> | s2-\markup\italic rit. s8 s\! | s2. |
  s4.-\markup\italic "a tempo" s\p\< | s\! s\cresc | s2 s4\< | s2\> s4\p | % 15a
  s2 s8 s\> | s2\! s8 s\p | s2 s8 s\< | s\! s16 s\pp s2\> |
  s4. s\p | s\< s\! | s s\cresc | s2. |
  s8 s\< s2\! | s2 s4\< | s4\> s\! s8 s\p | s4.-\markup\italic rit. s8\<s4\> | % 16a
  s4\< s4.\! s8\p | s2\< s4\! | s2. | s2.\pp |
}

alto = \relative {
  \global
  r4 r8 g'8 8. 16 | 4. fis8 g8. 16 | 2 fis4 | g2 d4 | dis4. fis8 8 e |
  cis4. r8 fis4~ | 8 r8 8. ais16 b8 8 | fis2 cis'4 | 4(b) fis | 2 d4 |
  r4 d8 8 cis cis | b4(a) r8 d | 2 4 | 4 4 8 8 | % 14a
  d8. 16 4 4 | 4. 8 8 e | f2 e4 | e2 4 | f4(fis) g |
  a8-> 8 e4-- r8 e | 4. b'8 c fis, | g8. e16 4 dis | e2. |
  r4 r8 g g g | g(a e) fis g b | c4(b) a | g2 d4 | % 15a
  dis4. f8 8 e | cis2 r8 fis | fis ais b4. fis8 | 8 r16 fis g2~ |
  g4 r8 e e e | e(d fis) 8 8 8 | 4. e8 8 8 | 4. cis8 d g |
  g8 fis a g fis e | d2 g4 | g(fis) r8 fis | g2 4 | % 16a
  d8 e fis4 r8 fis | g2 g,4 | 4. r8 c4 | 4(d2\fermata) |
  \bar "|."
}

wordsAlto = \lyricmode {
  There rolls the deep where grew the tree.
  O earth, what chang -- es hast thou seen!
  There, __ where the long street roars, hath been
  The still -- ness of the cen -- tral sea.
  The hills are sha -- dows, and they flow
  From form to form, and no -- thing stands;
  They melt __ like mist,
  the sol -- id lands,
  Like clouds, like clouds __ they shape them -- selves and go.
  But in my spi -- rit will I dwell,
  And dream my dream, and hold it true;
  For though my lips my breathe a -- dieu, __
  I can -- not think __ the thing fare -- well,
  I can -- not think the thing __ fare -- well,
  I can -- not think __ the thing, the thing fare -- well,
  I can -- not think fare -- well, __
  fare -- well, fare -- well.
}

wordsAltoMidi = \lyricmode {
  "There " "rolls " "the " "deep " "where " "grew " "the " "tree. "
  "\nO " "earth, " "what " chang "es " "hast " "thou " "seen! "
  "\nThere, "  "where " "the " "long " "street " "roars, " "hath " "been "
  "\nThe " still "ness " "of " "the " cen "tral " "sea. "
  "\nThe " "hills " "are " sha "dows, " "and " "they " "flow "
  "\nFrom " "form " "to " "form, " "and " no "thing " "stands; "
  "\nThey " "melt "  "like " "mist, "
  "\nthe " sol "id " "lands, "
  "\nLike " "clouds, " "like " "clouds "  "they " "shape " them "selves " "and " "go. "
  "\nBut " "in " "my " spi "rit " "will " "I " "dwell, "
  "\nAnd " "dream " "my " "dream, " "and " "hold " "it " "true; "
  "\nFor " "though " "my " "lips " "my " "breathe " a "dieu, " 
  "\nI " can "not " "think "  "the " "thing " fare "well, "
  "\nI " can "not " "think " "the " "thing "  fare "well, "
  "\nI " can "not " "think "  "the " "thing, " "the " "thing " fare "well, "
  "\nI " can "not " "think " fare "well, " 
  "\nfare" "well, " fare "well. "
}

dynamicsTenor = {
  s4. s\p\cresc | s2. | s2 s4\f | s2 s4\p | s4.\< s\> |
  s2.\omit\p s2 s4\< | s2.\f | s2\> s4\pp | s2\> s4\! |
  s4 s\p\< s\> | s2\! s8 s\p | s2.\< | s2\> s4\! | % 14a
  s2.\< | s4.\! s8\cresc s4\< | s2 s4\! | s2.\< | s2\! s4\< |
  s2.\f | s4\mf\< s4.\! s8\> | s2-\markup\italic rit. s8 s\! | s2. |
  s4.-\markup\italic "a tempo" s\p\< | s\! s\< | s2.\> | s2\! s4\p | % 15a
  s4.\< s4\! s8\> | s2\! s8 s\p | s2 s8 s\< | s\! s16 s\pp s2\> |
  s4. s\p | s s\< | s\! s\cresc | s2. |
  s2. | s4\< s\! s8\< s\! | s2 s8 s\p | s4-\markup\italic rit. s\< s\> | % 16a
  s4\< s4.\! s8\p | s2\< s4\! | s4\< s\! s | s2.\pp |
}

tenor = \relative {
  \global
  r4 r8 b e8. d16 | c4. e8 d8. 16 | c2 d4 | 2 b4 | 4. 8 c b |
  ais4. r8 cis4~ | 8 r fis8. e16 d8 8 | cis2 fis4 | g(fis) b, | d2 a4 |
  r4 a8 b a g | g4(fis) r8 d' | b4(a) g | gis a d8 8 | % 14a
  b8. 16 a4 g | 4. fis8 8 a | 2 gis4 | a(b) c | d(dis) e |
  a,8-> 8 e4-- r8 a | b4(e) c | b8. g16 b4 a | g2. |
  r4 r8 b e d | c4. e8 d g | 2 fis8(e) | d2 b4 | % 15a
  b4. c8 8-> b | ais2 r8 cis | fis e d4. 8 | cis8 r16 16 2~ |
  cis4 r8 cis b a | 4. 8 b8. 16 | c4. b8 8 d | d(c e) fis g d |
  e2 g,4 | 8(a c) b d dis | e4(d) r8 c | b2 ees4 | % 16a
  a,8 b d4 r8 c | b4(c) cis | d(ees) a, | 4(b2\fermata) |
  \bar "|."
}

wordsTenor = \lyricmode {
  There rolls the deep where grew the tree.
  O earth, what chang -- es hast thou seen!
  There, __ where the long street roars, hath been
  The still -- ness of the cen -- tral sea. __
  The hills __ are sha -- dows, and they flow
  From form to form, and no -- thing stands;
  They melt __ like mist,
  the sol -- id lands,
  Like clouds __ they shape them -- selves and go.
  But in my spi -- rit will I dwell,
  And dream my dream, and hold it true;
  For though my lips my breathe a -- dieu, __
  I can -- not think the thing fare -- well,
  I can -- not think __ the thing __ fare -- well,
  I can -- not think the thing fare -- well,
  I can -- not think fare -- well, __
  fare -- well, fare -- well.
}

wordsTenorMidi = \lyricmode {
  "There " "rolls " "the " "deep " "where " "grew " "the " "tree. "
  "\nO " "earth, " "what " chang "es " "hast " "thou " "seen! "
  "\nThere, "  "where " "the " "long " "street " "roars, " "hath " "been "
  "\nThe " still "ness " "of " "the " cen "tral " "sea. " 
  "\nThe " "hills "  "are " sha "dows, " "and " "they " "flow "
  "\nFrom " "form " "to " "form, " "and " no "thing " "stands; "
  "\nThey " "melt "  "like " "mist, "
  "\nthe " sol "id " "lands, "
  "\nLike " "clouds "  "they " "shape " them "selves " "and " "go. "
  "\nBut " "in " "my " spi "rit " "will " "I " "dwell, "
  "\nAnd " "dream " "my " "dream, " "and " "hold " "it " "true; "
  "\nFor " "though " "my " "lips " "my " "breathe " a "dieu, " 
  "\nI " can "not " "think " "the " "thing " fare "well, "
  "\nI " can "not " "think "  "the " "thing "  fare "well, "
  "\nI " can "not " "think " "the " "thing " fare "well, "
  "\nI " can "not " "think " fare "well, " 
  "\nfare" "well, " fare "well. "
}

dynamicsBass = {
  s4. s\p\cresc | s2. | s2 s4\f | s2 s4\p | s4.\< s\> |
  s2.\omit\p s2 s4\< | s2.\f | s4 s2\> | s2.\pp |
  s2 s4\p | s2 s8 s\p | s2.\< | s2\> s4\! | % 14a
  s2.\< | s4.\! s8\cresc s4\< | s2 s4\! | s2.\< | s2\! s4\< |
  s2.\f | s4\mf s4. s8\> | s2-\markup\italic rit. s8 s\! | s2. |
  s4.-\markup\italic "a tempo" s\p\< | s\! s\cresc | s2 s4\< | s2\> s4\p | % 15a
  s2 s8 s\> | s2\! s8 s\p | s2 s8 s\< | s\! s16 s\pp s2\> |
  s4. s8\p s4\cresc | s4. s\< | s\! s\cresc | s2. |
  s2. | s | s2 s8 s\p | s4\<-\markup\italic rit. s8\! s\> s4\! | % 16a
  s2. | s2\< s4\! | s4\< s\! s\> | s2.\pp |
}

bass = \relative {
  \global
  r4 r8 e c8. b16 | a4. c8 b b' | a2 c4 | b2 g4 | fis4. dis8 e e |
  fis4. r8 e4-> ~ | 8 r d8. cis16 b8 b' | ais2.~ | 8 8 b4 b, | a2 4 |
  r4 r a8 8 | b cis d4 r8 d | g4(fis) e | eis dis d8 8 | % 14a
  g8. 16 fis4 e | d4. 8 c8 8 | b2 e4 | c(b) a | aes4(aes') g |
  fis8-> 8 4-- r8 fis | g4. 8 a a | b4. b,8 8. 16 | e2. |
  r4 r8 e c b | a4. c8 b b' | a2 c4 | b2 g4 | % 15a
  fis4. dis8 e8. 16 | fis2 r8 e | d cis b4 b' | ais8 r16 ais a2~ |
  a4 r8 a, b cis | d4. 8 dis8 8 | e4. 8 fis gis | a4. ais8 b b |
  cis2 cis,4 | d2 4 | 2 r8 dis | e(dis fis) e c a | % 16a
  d2 r8 d | g,4(a) ais | b(c) ees | g,2.\fermata |
  \bar "|."
}

wordsBass = \lyricmode {
  There rolls the deep where grew the tree.
  O earth, what chang -- es hast thou seen!
  There, __ where the long street roars, __ hath been
  The still -- ness of the cen -- tral sea.
  The hills __ are sha -- dows, and they flow
  From form to form, and no -- thing stands;
  They melt __ like mist,
  the sol -- id lands,
  Like clouds, like clouds they shape them -- selves and go.
  But in my spi -- rit will I dwell,
  And dream my dream, and hold it true;
  For though my lips my breathe a -- dieu, __
  I can -- not think the thing fare -- well,
  I can -- not think __ the thing __ fare -- well,
  I can -- not think, I can -- not think the thing fare -- well,
  fare -- well, fare -- well.
}

wordsBassMidi = \lyricmode {
  "There " "rolls " "the " "deep " "where " "grew " "the " "tree. "
  "\nO " "earth, " "what " chang "es " "hast " "thou " "seen! "
  "\nThere, "  "where " "the " "long " "street " "roars, "  "hath " "been "
  "\nThe " still "ness " "of " "the " cen "tral " "sea. "
  "\nThe " "hills "  "are " sha "dows, " "and " "they " "flow "
  "\nFrom " "form " "to " "form, " "and " no "thing " "stands; "
  "\nThey " "melt "  "like " "mist, "
  "\nthe " sol "id " "lands, "
  "\nLike " "clouds, " "like " "clouds " "they " "shape " them "selves " "and " "go. "
  "\nBut " "in " "my " spi "rit " "will " "I " "dwell, "
  "\nAnd " "dream " "my " "dream, " "and " "hold " "it " "true; "
  "\nFor " "though " "my " "lips " "my " "breathe " a "dieu, " 
  "\nI " can "not " "think " "the " "thing " fare "well, "
  "\nI " can "not " "think "  "the " "thing "  fare "well, "
  "\nI " can "not " "think, " "I " can "not " "think " "the " "thing " fare "well, "
  "\nfare" "well, " fare "well. "
}

pianoRHone = \relative {
  \global
  c4
  \bar "|."
}

pianoRHtwo = \relative {
  \global
  c4
  \bar "|."
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s4. s\p\cresc | s2. | s2 s4\f | s2 s4\p | s4.\< s\> |
  s2.\omit\p | s2 s8\< s\! | s2.\f | s2 s4\p | s2\> s4\! |
  s2. | s2 s8 s\p | s2. | s | % 14a
  s2. | s4. s\cresc | s2. | s | s |
  s2.\f | s | s-\markup\italic rit. | s2. |
  s4.-\markup\italic "a tempo" s\p | s2 s8 s\< | s2.\! | s2 s4\p | % 15a
  s2. | s2 s8 s\p | s2 s8 s\< | s8.\! s16\pp s4\> s\! |
  s4. s4\p s8\< | s4. s\! | s s\cresc | s2. |
  s2. | s | s2 s8 s\p | s2.-\markup\italic "rit." | % 16a
  s2. | s | s4. s\pp | s2. |
}

pianoLHone = \relative {
  \global
  c4
  \bar "|."
}

pianoLHtwo = \relative {
  \global
  c4
  \bar "|."
}

\book {
  \bookOutputSuffix "single"
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsSop
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \alto
            \addlyrics \wordsAlto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \tenor
            \addlyrics \wordsTenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \bass
            \addlyrics \wordsBass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
          }
          <<
            \new Voice \partCombine \soprano \alto
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
          }
          <<
            \clef "bass"
            \new Voice \partCombine \tenor \bass
          >>
        >>
      >>
    >>
    \layout {
      #(layout-set-staff-size 16)
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
      }
    }
  }
}

\book {
  \bookOutputSuffix "single-noacc"
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsSop
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \alto
            \addlyrics \wordsAlto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \tenor
            \addlyrics \wordsTenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \bass
            \addlyrics \wordsBass
          >>
        >>
      >>
    >>
    \layout {
      #(layout-set-staff-size 17)
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
      }
    }
  }
}

\book {
  \bookOutputSuffix "singlepage-noacc"
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
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsSop
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \alto
            \addlyrics \wordsAlto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \tenor
            \addlyrics \wordsTenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \bass
            \addlyrics \wordsBass
          >>
        >>
      >>
    >>
    \layout {
      #(layout-set-staff-size 16)
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
      }
    }
  }
}

\book {
  \bookOutputSuffix "singlepage-bass"
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
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \magnifyStaff #4/7
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics {\tiny \wordsSop}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \magnifyStaff #4/7
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \alto
            \addlyrics {\tiny \wordsAlto}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \magnifyStaff #4/7
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenor}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \bass
            \addlyrics \wordsBass
          >>
        >>
      >>
    >>
    \layout {
      #(layout-set-staff-size 20)
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
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
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsSop
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \alto
            \addlyrics \wordsAlto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \tenor
            \addlyrics \wordsTenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \bass
            \addlyrics \wordsBass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
          }
          <<
            \new Voice \partCombine \soprano \alto
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
          }
          <<
            \clef "bass"
            \new Voice \partCombine \tenor \bass
          >>
        >>
      >>
    >>
    \layout {
      #(layout-set-staff-size 16)
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
      }
    }
  }
}

\book {
  \bookOutputSuffix "midi-sop"
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \soprano
            \addlyrics \wordsSopMidi
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \alto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \tenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \bass
          >>
        >>
      >>
    >>
    \midi {}
  }
}

\book {
  \bookOutputSuffix "midi-alto"
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \soprano
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \alto
            \addlyrics \wordsAltoMidi
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \tenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \bass
          >>
        >>
      >>
    >>
    \midi {}
  }
}

\book {
  \bookOutputSuffix "midi-tenor"
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \soprano
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \alto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \tenor
            \addlyrics \wordsTenorMidi
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \bass
          >>
        >>
      >>
    >>
    \midi {}
  }
}

\book {
  \bookOutputSuffix "midi-bass"
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \soprano
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \alto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \tenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \bass
            \addlyrics \wordsBassMidi
          >>
        >>
      >>
    >>
    \midi {}
  }
}
