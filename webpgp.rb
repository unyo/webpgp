require "sinatra"
require "datamapper"

# Requirements
# -ruby 
# -bundler
# > sudo apt-get install ruby bundler
# > bundle install
# > ruby webpgp.rb

get "/" do
    erb :index
end

post "/save" do
    # save the encrypted private key (and message fields)
end

get "/:user_id" do
    # restore the encrypted private key (and message fields)
end


__END__

@@index
<script src="js/openpgp.min.js"></script>
<form id="encrypt">
    <div class="row">
        <div class="form-group col-md-6">
            <label>Public Key</label>
            <textarea placeholder="Enter PGP private key here..." id="public-key" class="form-control"></textarea>
        </div>
        <div class="form-group col-md-6">
            <label>Message</label>
            <textarea id="message" class="form-control">(address goes here)</textarea>
        </div>
    </div>
    <div class="form-group">
        <input type="submit" class="btn btn-success btn-lg btn-block" id="encrypt" value="Encrypt" />
        <input type="submit" class="btn btn-success btn-lg btn-block" id="encrypt" value="Decrypt" />
        
    </div>
    <div class="row">
        <div class="form-group col-md-4 text-center">
             <label>Private Key</label>
            <textarea placeholder="Enter PGP private key here..." id="public-key" class="form-control"></textarea>
        </div>
        <div class="form-group col-md-8">
            <label>Result</label>
            <textarea id="result" class="form-control"></textarea>
        </div>
</form>
<script>
    $('#encrypt').submit(function(e) {
        e.preventDefault();
        public_key = $('#public-key').val();
        message = $('#message').val();
        pubkey = openpgp.key.readArmored(public_key).keys[0];
        result = openpgp.encryptMessage([pubkey], message);
        $('#result').val(result);
    });
</script>
