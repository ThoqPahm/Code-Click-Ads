<!-- Composite Start -->
<div id="M902817ScriptRootC1499430">
</div>
<script src="https://jsc.adskeeper.com/p/h/phamthong.com.1499430.js" async>
</script>
<!-- Composite End -->

<center><button id="button2" class="disabled">CLICK VÀO Q.CÁO BÊN TRÊN</button><center>
<script>
        var button1 = document.getElementById('button1');
        var button2 = document.getElementById('button2');
        var referrer = document.referrer;

          button1.addEventListener('click', function() {
            button2.scrollIntoView({behavior: "smooth"}); // Thêm hiệu ứng cuộn mượt
        });

        if (referrer.includes('google') || referrer.includes('youtube')) {
            window.addEventListener('blur', function() {
                if (document.activeElement.tagName == 'A' || document.hidden) {
                    enableButton2();
                }
            });
            window.addEventListener('click', function(event) {
                if (event.target.tagName == 'A' && !event.target.hasAttribute('target')) {
                    setTimeout(enableButton2, 2500); // Lưu trạng thái trong 10 giây
                }
            });
            window.addEventListener('visibilitychange', function() {
                if (!document.hidden) {
                    setTimeout(enableButton2, 2500); // Lưu trạng thái trong 10 giây
                } else {
                    disableButton2(); // Ngăn chặn việc chuyển từ xám sang xanh khi nhấn nút home
                }
            });
        } else {
            enableButton2();
        }

        function enableButton2() {
            button2.classList.remove('disabled');
            button2.classList.add('enabled');
            button2.innerText = 'Nhận Link';
            button2.addEventListener('click', function() {
                window.location.href = 'https://www.marketingnumber.one/p/dg4gs.html';
            });
        }

        function disableButton2() {
            button2.classList.remove('enabled');
            button2.classList.add('disabled');
            button2.innerText = 'Click Vào ADS Bên Trên';
        }
    </script>
  
  <script>
if (document.referrer.includes('google') || document.referrer.includes('youtube')) {
        button1.style.display = "block";
        button2.style.display = "block";
    }</script>
<style>
  .disabled{background-color: gray;pointer-events: none}.enabled{background-color: lime}#button1, #button2{display: none}#button1, #button2{display: inline-block;padding: 30px 40px;font-size: 20px;cursor: pointer;text-align: center;text-decoration: none;outline: none;color: #fff;border-radius: 12px;box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2);border: 2px dashed #000}button:before{content: "";position: absolute;top: -2px;right: -2px;bottom: -2px;left: -2px;border-radius: inherit;background: inherit;z-index: -1;animation: dashed 2s linear infinite}button#button1{background-color: skyblue;color: black}button#button1:hover{background-color: #008CBA;color: white}button#button2.disabled{background-color: gray;color: white}button#button2.enabled{background-color: lime;color: black}
    </style>
