ゼロから作る Deep Learning ❷ in Ruby
==========================

本リポジトリは、オライリー・ジャパン発行書籍『[ゼロから作る Deep Learning ❷](https://www.oreilly.co.jp/books/9784873118369/)』のソースコードをRuby（PyCall）に移植しようというプロジェクトです。

## 進捗

- [ ] ch01
  - [x] forward_net
  - [ ] show_spiral_dataset
  - [ ] train
  - [ ] train_custom_loop
  - [ ] two_layer_net
- [ ] ch02
  - [ ] count_method_big
  - [ ] count_method_small
  - [ ] most_similar
  - [ ] ppmi
  - [ ] show_ptb
  - [ ] similarity
- [ ] ch03
  - [ ] cbow_predict
  - [ ] simple_cbow
  - [ ] simple_skip_gram
  - [ ] train
- [ ] ch04
  - [ ] cbow
  - [ ] eval
  - [ ] negative_sampling_layer
  - [ ] skip_gram
  - [ ] train
- [ ] ch05
  - [ ] simple_rnnlm
  - [ ] train
  - [ ] train_custom_loop
- [ ] ch06
  - [ ] better_rnnlm
  - [ ] clip_grads
  - [ ] eval
  - [ ] rnn_gradient_graph
  - [ ] rnnlm
  - [ ] train_better_rnnlm
  - [ ] train_rnnlm
- [ ] ch07
  - [ ] generate_better_text
  - [ ] generate_text
  - [ ] peeky_seq2seq
  - [ ] rnnlm_gen
  - [ ] seq2seq
  - [ ] show_addition_dataset
  - [ ] train_seq2seq
- [ ] ch08
  - [ ] attention_layer
  - [ ] attention_seq2seq
  - [ ] train
  - [ ] visualize_attention

## オリジナルとの差異

- 大文字1字の変数名の代わりに小文字を使用

## 実行方法

```
$ docker build -t tnantoka/deep-learning-from-scratch-2 .

$ docker run -it tnantoka/deep-learning-from-scratch-2 bundle exec ruby ch01/forward_net.rb
```

## 開発

```
$ vim ch01/forward_net.rb

$ docker run -it -v $PWD:/app tnantoka/deep-learning-from-scratch-2 bundle exec ruby ch01/forward_net.rb
```

## Heroku

TODO
