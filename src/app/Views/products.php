<div class="container">
    <div class="row">
        <div class="col-12 col-sm-8 offset-sm-2 col-md-6 offset-md-3 mt-5 pt-3 pb-3 bg-white from-wrapper">
            <div class="container">
                <h3>Products</h3>
                <hr>
                <a href="#" class="btn btn-info btn-sm btn-add">Add Product</a>
                <br><br>
               <table class="table">
                    <thead class="thead-dark">
                        <tr>
                            <th scope="col">SKU</th>
                            <th scope="col">PRODUCT NAME</th>
                            <th scope="col"></th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php foreach ($all_products as $product) { ?>
                            <tr>
                                <td><?= $product['sku']; ?></td>
                                <td><?= $product['name']; ?></td>
                                <td>
                                    <form action="/user/products/<?= $product['sku']; ?>" method="post">
                                        <input type="hidden" value="DELETE" name="_method"> 
                                        <button class="btn btn-outline-danger" type="submit" onclick="return confirm('Are you sure you want to delete the product: <?= $product['name']; ?>?')">Delete</button>
                                    </form>
                                </td>
                            </tr>
                        <?php } ?>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>

<!-- Modal Add Product-->
<form action="/user/products" method="post">
        <div class="modal fade" id="addModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Add New Product</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    
                    <div class="form-group">
                        <label for="selected_product">Product Name:</label>
                        <input type="hidden" name="product_sku" id="product_sku" value="">
                        <input type="hidden" name="product_name" id="product_name" value="">
                        <div class="dropdown">
                            <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownProductButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                Select Product
                            </button>
                            <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                <?php foreach($new_products as $product) { ?>
                                <a class="dropdown-item new-product-click" href="#" data-sku="<?= $product['sku'] ?>" data-product-name="<?= $product['name'] ?>"><?= $product['name'] ?></a>
                                <?php } ?>
                            </div>
                        </div>
                    </div>
                
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    <button type="submit" class="btn btn-primary">Add</button>
                </div>
                </div>
            </div>
        </div>
    </form>
    <!-- End Modal Add Product-->