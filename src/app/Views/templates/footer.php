<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<script>
    $(document).ready(function(){
 
        // Listen add product button
        $('.btn-add').on('click',function(){
            $('#addModal').modal('show');
            dropDownProductsListener();
        });

        // Listener inside "add" modal
        function dropDownProductsListener(){
            $('.new-product-click').on('click',function(){
                $this = $(this);
                $product_sku = $this.attr("data-sku");
                $product_name = $this.attr("data-product-name");
                $('#dropdownProductButton').html($product_name);
                $('#product_sku').val($product_sku);
                $('#product_name').val($product_name);
            });
        }
         
    });
</script>
</body>
</html>