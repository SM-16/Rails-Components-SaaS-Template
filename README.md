<img src="https://www.locomotive.it.com/icon.png" style="width: 100px">
<h1>Locomotive Docs</h1>
<h2>
  Configure your stripe and Google OAuth variables here
</h2>
Go to the .env file and add the values of your API keys.
<br></br>
<ul>
  <li>
    <b>Stripe API key:</b>  Go to stripe dashboard > Click on "Developers" > Click on "API Keys" > Copy the secret API key (make sure you're not in test mode if you want to     use the key for production)
  </li>
  <li>
    <b>Stripe Signing secret:</b> Go to stripe dashboard > Click on "Developers" > Click on "Webhooks" > Create a new developer webhook with your domain + /stripe/webhook       (example: www.locomotive.it.com/stripe/webhook)
  </li>
  <li>
    <b>Google client_secret and client_id:</b> create a new google console's project and add a Client ID
  </li>
</ul>
<h2>
  ChatGPT privacy & Policy prompts (Copy text nº 1 and 2 to chatGPT)
</h2>

  <p>  
  1. Make me the Terms & Privacy for [your website] it's name is [name of the website], I live on [country], and you can contact me with [contact (email, phone    number, crisp...)].
</p>
<p>
  2. Now do it with HTML and tailwind CSS
</p>
