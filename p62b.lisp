;;;; (*) Collect the nodes at a given level in a list
;;;;
;;;; A node of a binary tree is at level N if the path from the root
;;;; to the node has length N-1. The root node is at level 1. Write a
;;;; function atlevel to collect all nodes at a given level in a list.
;;;;
;;;; (atlevel tree L) returns the list of nodes of the binary tree
;;;; tree at level L
;;;;
;;;; Using atlevel it is easy to construct a function levelorder which
;;;; creates the level-order sequence of the nodes. However, there are
;;;; more efficient ways to do that.
(in-package :99)

(defun atlevel (tree level)
  (cond ((null tree) *the-empty-tree*)
	((= level 1) (list tree))
	(t (append (atlevel (tree-left tree) (1- level))
		   (atlevel (tree-right tree) (1- level))))))
