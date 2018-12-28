# frozen_string_literal: true

require 'bundler'
Bundler.require

require 'pycall/import'
include PyCall::Import

# pyimport 'numpy', as: :np # undefined local variable or method `np'
def np
  pyimport 'numpy', as: :np
  np
end

class Affine
  attr_accessor :params

  def initialize(w, b)
    self.params = [w, b]
  end

  def forward(x)
    w, b = self.params
    out = np.dot(x, w) + b
    out
  end
end

class Sigmoid
  attr_accessor :params

  def initialize
    self.params = []
  end

  def forward(x)
    # 1 / (1 + np.exp(-x)) # undefined method `-@'
    1 / (1 + np.exp(-1 * x))
  end
end

class TwoLayerNet
  attr_accessor :layers, :params

  def initialize(input_size, hidden_size, output_size)
    i, h, o = input_size, hidden_size, output_size

    w1 = np.random.randn(i, h)
    b1 = np.random.randn(h)
    w2 = np.random.randn(h, o)
    b2 = np.random.randn(o)

    self.layers = [
      Affine.new(w1, b1),
      Sigmoid.new,
      Affine.new(w2, b2)
    ]

    self.params = []
    layers.each do |layer|
      self.params += layer.params
    end
  end

  def predict(x)
    layers.each do |layer|
      x = layer.forward(x)
    end
    x
  end

  def forward(x, t)
  end

  def backward(dout = 1)
  end
end

x = np.random.randn(10, 2)
model = TwoLayerNet.new(2, 4, 3)
s = model.predict(x)
puts s
