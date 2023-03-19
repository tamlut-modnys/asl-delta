/-  *delta
/+  *test
/=  agent  /app/delta
|%
++  bowl
  |=  run=@ud
  ^-  bowl:gall
  :*  [~zod ~zod %hark-store]
      [~ ~]
      [run `@uvJ`(shax run) (add (mul run ~s1) *time) [~zod %garden ud+run]]
  ==
+$  state-0
  $:  [%0 values=(list @)]
  ==
--
|%
++  test-push
  =|  run=@ud
  =^  move  agent  (~(on-poke agent (bowl run)) %delta-action !>([%push ~zod 1]))
  =.  run  +(run)
  =^  move  agent  (~(on-poke agent (bowl run)) %delta-action !>([%push ~zod 2]))
  =+  !<(=state-0 on-save:agent)
  %+  expect-eq
    !>  `(list @)`~[2 1]
    !>  values.state-0
++  test-pop
  =|  run=@ud
  =^  move  agent  (~(on-poke agent (bowl run)) %delta-action !>([%push ~zod 1]))
  =.  run  +(run)
  =^  move  agent  (~(on-poke agent (bowl run)) %delta-action !>([%push ~zod 2]))
  =.  run  +(run)
  =^  move  agent  (~(on-poke agent (bowl run)) %delta-action !>([%pop ~zod]))
  =+  !<(=state-0 on-save:agent)
  %+  expect-eq
    !>  `(list @)`~[1]
    !>  values.state-0
--