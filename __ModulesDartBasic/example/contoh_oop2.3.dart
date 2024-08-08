mixin CRUDMixin {
  get() {}
  create() {}
  update() {}
  delete() {}
}

mixin AnotherCRUDMixin {
  export() {}
  import() {}
}

class Product with CRUDMixin, AnotherCRUDMixin {
  save() {}
}

void main() {
  Product product = Product();
  product.save();
  product.get();
  product.export();
  product.import();
}
