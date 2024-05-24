#(ly:set-option 'compile-scheme-code)
#(debug-enable 'backtrace)

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

ov  = \oneVoice
vo  = \voiceOne
vt  = \voiceTwo
vth = \voiceThree
vf  = \voiceFour

nl = { \section \break }

rh = {\change Staff = pianorh \vt}
lh = {\change Staff = pianolh \vo}
ss = \showStaffSwitch
hs = \hideStaffSwitch

auto   = \partCombineAutomatic
chord  = \partCombineChords
apart  = \partCombineApart

% With thanks to Valentin Petzel on the lilypond-users mailing list
% for making this work, and suggesting some improvements:

repeat-verses =
#(define-music-function ( count     music  )
                        ( index? ly:music? )
   (make-music 'SequentialMusic 'elements
     (map-in-order
      (lambda (verse)
       (let ((versenum (string->symbol (format #f "v~a" verse))))
         (keepWithTag versenum (ly:music-deep-copy music))))
      (iota count 1))))

%\include "guile-debugger.ly"

%#(set-break! repeat-verses)


red = {
  \override NoteHead.color   = #red
  \override Stem.color       = #red
  \override Beam.color       = #red
  \override Accidental.color = #red
  \override Slur.color       = #red
  \override Tie.color        = #red
  \override Dots.color       = #red
}

black = {
  \override NoteHead.color   = #black
  \override Stem.color       = #black
  \override Beam.color       = #black
  \override Accidental.color = #black
  \override Slur.color       = #black
  \override Tie.color        = #black
  \override Dots.color       = #black
}

%%% snippet “Adding indicators to staves which split after a break”:

#(define-markup-command (arrow-at-angle layout props angle-deg length fill)
   (number? number? boolean?)
   (let* (
           (PI-OVER-180 (/ (atan 1 1) 45))
           (degrees->radians (lambda (degrees) (* degrees PI-OVER-180)))
           (angle-rad (degrees->radians angle-deg))
           (target-x (* length (cos angle-rad)))
           (target-y (* length (sin angle-rad))))
     (interpret-markup layout props
       (markup
        #:translate (cons (/ target-x 2) (/ target-y 2))
        #:rotate angle-deg
        #:translate (cons (/ length -2) 0)
        #:concat (#:draw-line (cons length 0)
                   #:arrow-head X RIGHT fill)))))


splitStaffBarLineMarkup = \markup \with-dimensions #'(0 . 0) #'(0 . 0) {
  \combine
  \arrow-at-angle #45 #(sqrt 8) ##t
  \arrow-at-angle #-45 #(sqrt 8) ##t
}

splitStaffBarLine = {
  \once \override Staff.BarLine.stencil =
  #(lambda (grob)
     (ly:stencil-combine-at-edge
      (ly:bar-line::print grob)
      X RIGHT
      (grob-interpret-markup grob splitStaffBarLineMarkup)
      0))
  \break
}

convDownStaffBarLine = {
  \once \override Staff.BarLine.stencil =
  #(lambda (grob)
     (ly:stencil-combine-at-edge
      (ly:bar-line::print grob)
      X RIGHT
      (grob-interpret-markup grob #{
        \markup\with-dimensions #'(0 . 0) #'(0 . 0) {
          \translate #'(0 . -.13)\arrow-at-angle #-45 #(sqrt 8) ##t
        }#})
      0))
  \break
}

convUpStaffBarLine = {
  \once \override Staff.BarLine.stencil =
  #(lambda (grob)
     (ly:stencil-combine-at-edge
      (ly:bar-line::print grob)
      X RIGHT
      (grob-interpret-markup grob #{
        \markup\with-dimensions #'(0 . 0) #'(0 . 0) {
          \translate #'(0 . .14)\arrow-at-angle #45 #(sqrt 8) ##t
        }#})
      0))
  \break
}

%make-midi =
%#(define-void-function
%  (suffix  voice   words     )
%  (string? string? ly:lyrics?)
%  (toplevel-book-handler #{
%    \book {
%      \paper {
%        output-suffix = #suffix
%     }
%     \score {
%   \new ChoirStaff
%   <<
%         \new Staff = soprano \with {
%           midiInstrument = "choir aahs"
%         }
%         <<
%           \new Voice \TempoTrack
%           \new Dynamics \dynamicsSopSingle
%           \new Voice \sopSingle
%           #( (if? (eq? "sop" voice) ( #{ \addlyrics #words } )))
%         >>
%%         \new Staff = alto \with {
%           midiInstrument = "choir aahs"
%         }
%         <<
%           \new Dynamics \dynamicsAltoSingle
%           \new Voice \altoSingle
%           #( (if? (eq? "alto" voice) ( #{ \addlyrics #words } )))
%         >>
%         \new Staff = tenor \with {
%           midiInstrument = "choir aahs"
%         }
%         <<
%           \new Dynamics \dynamicsTenorSingle
%           \new Voice \tenorSingle
%           #( (if? (eq? "tenor" voice) ( #{ \addlyrics #words } )))
%         >>
%         \new Staff = bass \with {
%           midiInstrument = "choir aahs"
%         }
%         <<
%           \new Dynamics \dynamicsBassSingle
%           \new Voice \bassSingle
%           #( (if? (eq? "bass" voice) ( #{ \addlyrics #words } )))
%         >>
%       >>
%       \new Staff = piano \with {
%         midiInstrument = "acoustic grand piano"
%       }
%       <<
%         \new Voice \pianoRHsingle
%         \new Dynamics \dynamicsPianoSingle
%         \new Voice \pianoLHsingle
%%       >>
%       \midi { }
%    }
%  }
% )
%)

%make-midi =
%#(define-void-function
%  (suffix  voice   words     )
%  (string? string? ly:lyrics?)
%  (toplevel-book-handler #{
%    \book {
%      \paper {
%        output-suffix = #suffix
%      }
%      \score {
%       \new ChoirStaff {
%         \new Staff = soprano \with {
%           midiInstrument = "choir aahs"
%         }
%         <<
%           \new Voice \TempoTrack
%           \new Dynamics \dynamicsSopSingle
%           \new Voice \sopSingle
%           #( (if? (eq? "sop" voice) ( #{ \addlyrics #words } )))
%         >>
%         \new Staff = alto \with {
%           midiInstrument = "choir aahs"
%         }
%         <<
%           \new Dynamics \dynamicsAltoSingle
%           \new Voice \altoSingle
%           #( (if? (eq? "alto" voice) ( #{ \addlyrics #words } )))
%         >>
%         \new Staff = tenor \with {
%           midiInstrument = "choir aahs"
%         }
%         <<
%           \new Dynamics \dynamicsTenorSingle
%           \new Voice \tenorSingle
%           #( (if? (eq? "tenor" voice) ( #{ \addlyrics #words } )))
%         >>
%         \new Staff = bass \with {
%           midiInstrument = "choir aahs"
%         }
%         <<
%           \new Dynamics \dynamicsBassSingle
%           \new Voice \bassSingle
%           #( (if? (eq? "bass" voice) ( #{ \addlyrics #words } )))
%         >>
%       }
%       \new Staff = piano \with {
%         midiInstrument = "acoustic grand piano"
%       }
%       <<
%         \new Voice \pianoRHsingle
%         \new Dynamics \dynamicsPianoSingle
%         \new Voice \pianoLHsingle
%       >>
%       \midi { }
%    }
%  }
% )
%)

make-score =
#(define-void-function
   (instrumentName bookSuffix musicContent)
   (string? string? ly:music?)
   (toplevel-score-handler #{
     \score {
       \new Staff \with {
         instrumentName = #instrumentName
       } { #musicContent }
       \layout { }
     }
   #})
   (toplevel-book-handler #{
     \book {
       \bookOutputSuffix #bookSuffix
       \score {
         \new Staff \with {
           midiInstrument = "piccolo"
         } { #musicContent }
         \midi {
           \tempo 4 = 80
         }
       }
     }
    #}))
