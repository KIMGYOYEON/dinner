require 'sinatra'

get '/' do 
	send_file 'home.html'
end

get '/me' do	
	send_file 'introduce.html'
end

get '/dinner' do
	# 점심 추천 로직
	# 1. 배열 생성 후 DB 구축
	# 2. Random으로 하나 뽑아 출력



	menu = ["전복 비빔밥", "스테이크", "롯데호텔", "스시메이진"]
	@choose = menu.sample
	# url = ""
	# if choose == "스테이크"
	# 	url ='http://thumb.photo.naver.net/exphoto01/2010/3/20/158/dsc_0298_shmhy_shmhy.jpg'
	# elsif choose == "전복 비빔밥"
	# 	url = 'https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles5.naver.net%2F20140304_27%2Ftm1010_1393910588937yT2pm_JPEG%2F5J6P0641_1.JPG&type=b400'
	# elsif choose == "롯데호텔"
	# 	url = 'http://blogfiles9.naver.net/20120530_141/mijeju_1338343129343iFdsC_JPEG/%B7%D4%B5%A5%C1%A6%C1%D6%BA%CE%C6%E4.jpg'
	# else
	# 	url = 'http://blogfiles5.naver.net/MjAxNzEwMjNfNzYg/MDAxNTA4NzQ0MTU1MjY5.Rk0XXD2zJ7dGr_wqL-pww-chQjp4yfW17xUIyZg9_pIg.wxIBuCWHyCF2VHRhyz1WhMgymwwma9pz-MHZLBHets0g.JPEG.njm0708/IMG_6581.JPG'	
	# end

	# 소스가 더러우니까 Hash로 만들자
	# url[key]
	# 동적으로, erb에서 사용하는 변수는 @ 를 붙여줘야 한다.

	@url = {

		"전복 비빔밥" => 'https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles5.naver.net%2F20140304_27%2Ftm1010_1393910588937yT2pm_JPEG%2F5J6P0641_1.JPG&type=b400',
		"스테이크"    => 'http://thumb.photo.naver.net/exphoto01/2010/3/20/158/dsc_0298_shmhy_shmhy.jpg',
		"롯데호텔"    => 'http://blogfiles9.naver.net/20120530_141/mijeju_1338343129343iFdsC_JPEG/%B7%D4%B5%A5%C1%A6%C1%D6%BA%CE%C6%E4.jpg',
		"스시메이진"  => 'http://blogfiles5.naver.net/MjAxNzEwMjNfNzYg/MDAxNTA4NzQ0MTU1MjY5.Rk0XXD2zJ7dGr_wqL-pww-chQjp4yfW17xUIyZg9_pIg.wxIBuCWHyCF2VHRhyz1WhMgymwwma9pz-MHZLBHets0g.JPEG.njm0708/IMG_6581.JPG'	
	}


	# "<p>#{choose}</p>
	# <img src = #{url[choose]}>
	# "

	erb :dinner 
# ruby 는 자동으로 마지막 문장을 자동으로 return 해준다. 따로 명시하지 않아도 된다.



end


