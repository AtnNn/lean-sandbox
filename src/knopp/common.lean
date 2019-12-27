namespace knopp

inductive none_of : list Prop → Prop
| nil : none_of list.nil
| cons {h : Prop} {hs : list Prop} : ¬h → none_of hs → none_of (list.cons h hs)

inductive one_and_only_one : list Prop → Prop
| nil : false → one_and_only_one list.nil
| cons {h : Prop} {hs : list Prop} : (h → none_of hs) → (¬h → one_and_only_one hs) → one_and_only_one (list.cons h hs)

end knopp
