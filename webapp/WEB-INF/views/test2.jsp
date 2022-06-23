<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script>


			$(document).ready(
				function(){
					
					$("#btnSubSave").click(
							function(){
								/*
								var datas = 
							[	
								
								{									
									 menuID : "", menuName : "",  menuSeq : "", menuLvl : "", parentID : "", hidVal : "" 										
								}
							
							]	
								
								*/
								
								var sendJsonDatas = {};
								var sendDatas = [];
								
								var str2 = {};
								var str3 = [];
								str2.nation = "미국";
								str2.company = "컴퍼니";
								str3.push(str2);
								for(var i = 0; i<1; i++){
									var eachRowData = {};
									eachRowData.docId = "민수";
									eachRowData.title = "홍철";
									eachRowData.titleEng = str3;
									eachRowData.thisisErrorTest = "";
									//eachRowData.menuLvl = "민수";
									//eachRowData.parentID = "민수";
									//eachRowData.hidVal = "민수";						
										sendDatas.push(eachRowData);
								
								
								}
								
								
								sendJsonDatas.saveList = sendDatas;
								alert(sendJsonDatas);
								console.log(JSON.stringify(sendJsonDatas));
								/*console.log(JSON.stringify({"Data": [
								      {
								          "CollName": "kmdb_new2",
								          "TotalCount": "10068",
								          "Count": "500",
								          "Result": [
								            {
								              "DOCID": "F01071",
								              "movieId": "F",
								              "movieSeq": "01071",
								              "title": " 평원의 대결",
								              "titleEng": "",
								              "titleOrg": "The Man from the Alamo",
								              "titleEtc": "평원의대결^평원의 대결^The Man from the Alamo^평원의대결^The Man from the Alamo",
								              "prodYear": "1953",
								              
								              
								              "directors": {
								                "director": [
								                  {
								                    "directorNm": "버드 보티처",
								                    "directorEnNm": "Budd Boetticher",
								                    "directorId": "00060100"
								                  }
								                ]
								              },
								             
								              
								              "actors": {
								                "actor": [
								                  {
								                    "actorNm": "줄리 아담스",
								                    "actorEnNm": "Julie Adams",
								                    "actorId": "00092307"
								                  },
								                  {
								                    "actorNm": "글렌 포드",
								                    "actorEnNm": "Glenn Ford",
								                    "actorId": "00074498"
								                  }
								                ]
								              },
								             
								              
								              "nation": "미국",
								              "company": "Universal International Pictures",
								              
								              
								              "plots": {
								                "plot": [
								                  {
								                    "plotLang": "",
								                    "plotText": ""
								                  }
								                ]
								              },
								             
								              
								              "runtime": "79",
								              "rating": "",
								              "genre": "액션,서부",
								              "kmdbUrl": "https://www.kmdb.or.kr/db/kor/detail/movie/F/01071",
								              "type": "극영화",
								              "use": "극장용",
								              "episodes": "",
								              "ratedYn": "",
								              "repRatDate": "",
								              "repRlsDate": "",
								              
								              
								              "ratings": {
								                "rating": [
								                  {
								                    "ratingMain": "Y",
								                    "ratingDate": "",
								                    "ratingNo": "",
								                    "ratingGrade": "",
								                    "releaseDate": "",
								                    "runtime": "79"
								                  }
								                ]
								              },
								             
								              
								              "keywords": "알라모,대학살,멕시코",
								              "posters": "",
								              "stlls": "",
								            
								              
								              "staffs": {
								                "staff": [
								                  {
								                    "staffNm": "버드 보티처",
								                    "staffEnNm": "Budd Boetticher",
								                    "staffRoleGroup": "감독",
								                    "staffRole": "",
								                    "staffEtc": "",
								                    "staffId": "00060100"
								                  },
								                  {
								                    "staffNm": "스티브 피셔",
								                    "staffEnNm": "Steve Fisher",
								                    "staffRoleGroup": "각본",
								                    "staffRole": "",
								                    "staffEtc": "",
								                    "staffId": "00117723"
								                  },
								                  {
								                    "staffNm": "D.D. 보컴프",
								                    "staffEnNm": "D.D. Beauchamp",
								                    "staffRoleGroup": "각본",
								                    "staffRole": "",
								                    "staffEtc": "",
								                    "staffId": "00064242"
								                  },
								                  {
								                    "staffNm": "줄리 아담스",
								                    "staffEnNm": "Julie Adams",
								                    "staffRoleGroup": "출연",
								                    "staffRole": "",
								                    "staffEtc": "",
								                    "staffId": "00092307"
								                  },
								                  {
								                    "staffNm": "글렌 포드",
								                    "staffEnNm": "Glenn Ford",
								                    "staffRoleGroup": "출연",
								                    "staffRole": "",
								                    "staffEtc": "",
								                    "staffId": "00074498"
								                  }
								                ]
								              },
								             
								              
								              "vods": {
								                "vod": [
								                  {
								                    "vodClass": "",
								                    "vodUrl": ""
								                  }
								                ]
								             
								              
								              },
								              "openThtr": "",
								              
								              
								              "stat": [
								                {
								                  "screenArea": "",
								                  "screenCnt": "",
								                  "salesAcc": "",
								                  "audiAcc": "",
								                  "statSouce": "",
								                  "statDate": ""
								                }
								              ],
								            
								              
								              "screenArea": "",
								              "screenCnt": "",
								              "salesAcc": "",
								              "audiAcc": "",
								              "statSouce": "",
								              "statDate": "",
								              "themeSong": "",
								              "soundtrack": "",
								              "fLocation": "",
								              "Awards1": "",
								              "Awards2": "",
								              "regDate": "19000101",
								              "modDate": "20211018",
								            
								              
								              "Codes": {
								                "Code": [
								                  {
								                    "CodeNm": "FIMS",
								                    "CodeNo": "19538020"
								                  }
								                ]
								            
								              
								              },
								              "CommCodes": {
								                "CommCode": [
								                  {
								                    "CodeNm": "FIMS",
								                    "CodeNo": "19538020"
								                  }
								                ]
								              },
								          
								              "ALIAS": "srcKmdb2"
								            }
								      }]
								         */ 
								
								
								$.ajax(
										
											{
												   
											   // MovieAPI    //    DirectorAPI  // ActorAPI
												url : "ActorAPI",											
												//data : //JSON.stringify(sendJsonDatas),
												data :  JSON.stringify({"Data": [
												      {
												          "CollName": "kmdb_new2",
												          "TotalCount": "10068",
												          "Count": "500",
												          "Result": [
												            {
												              "DOCID": "F01071",
												              "movieId": "F",
												              "movieSeq": "01071",
												              "title": " 평원의 대결",
												              "titleEng": "",
												              "titleOrg": "The Man from the Alamo",
												              "titleEtc": "평원의대결^평원의 대결^The Man from the Alamo^평원의대결^The Man from the Alamo",
												              "prodYear": "1953",
												              
												              
												              "directors": {
												                "director": [
												                  {
												                    "directorNm": "버드 보티처",
												                    "directorEnNm": "Budd Boetticher",
												                    "directorId": "00060100"
												                  }
												                ]
												              },
												             
												              
												              "actors": {
												                "actor": [
												                  {
												                    "actorNm": "줄리 아담스",
												                    "actorEnNm": "Julie Adams",
												                    "actorId": "00092307"
												                  },
												                  {
												                    "actorNm": "글렌 포드",
												                    "actorEnNm": "Glenn Ford",
												                    "actorId": "00074498"
												                  }
												                ]
												              },
												             
												              
												              "nation": "미국",
												              "company": "Universal International Pictures",
												              
												              
												              "plots": {
												                "plot": [
												                  {
												                    "plotLang": "",
												                    "plotText": ""
												                  }
												                ]
												              },
												             
												              
												              "runtime": "79",
												              "rating": "",
												              "genre": "액션,서부",
												              "kmdbUrl": "https://www.kmdb.or.kr/db/kor/detail/movie/F/01071",
												              "type": "극영화",
												              "use": "극장용",
												              "episodes": "",
												              "ratedYn": "",
												              "repRatDate": "",
												              "repRlsDate": "",
												              
												              
												              "ratings": {
												                "rating": [
												                  {
												                    "ratingMain": "Y",
												                    "ratingDate": "",
												                    "ratingNo": "",
												                    "ratingGrade": "",
												                    "releaseDate": "",
												                    "runtime": "79"
												                  }
												                ]
												              },
												             
												              
												              "keywords": "알라모,대학살,멕시코",
												              "posters": "",
												              "stlls": "",
												            
												              
												              "staffs": {
												                "staff": [
												                  {
												                    "staffNm": "버드 보티처",
												                    "staffEnNm": "Budd Boetticher",
												                    "staffRoleGroup": "감독",
												                    "staffRole": "",
												                    "staffEtc": "",
												                    "staffId": "00060100"
												                  },
												                  {
												                    "staffNm": "스티브 피셔",
												                    "staffEnNm": "Steve Fisher",
												                    "staffRoleGroup": "각본",
												                    "staffRole": "",
												                    "staffEtc": "",
												                    "staffId": "00117723"
												                  },
												                  {
												                    "staffNm": "D.D. 보컴프",
												                    "staffEnNm": "D.D. Beauchamp",
												                    "staffRoleGroup": "각본",
												                    "staffRole": "",
												                    "staffEtc": "",
												                    "staffId": "00064242"
												                  },
												                  {
												                    "staffNm": "줄리 아담스",
												                    "staffEnNm": "Julie Adams",
												                    "staffRoleGroup": "출연",
												                    "staffRole": "",
												                    "staffEtc": "",
												                    "staffId": "00092307"
												                  },
												                  {
												                    "staffNm": "글렌 포드",
												                    "staffEnNm": "Glenn Ford",
												                    "staffRoleGroup": "출연",
												                    "staffRole": "",
												                    "staffEtc": "",
												                    "staffId": "00074498"
												                  }
												                ]
												              },
												             
												              
												              "vods": {
												                "vod": [
												                  {
												                    "vodClass": "",
												                    "vodUrl": ""
												                  }
												                ]
												             
												              
												              },
												              "openThtr": "",
												              
												              
												              "stat": [
												                {
												                  "screenArea": "",
												                  "screenCnt": "",
												                  "salesAcc": "",
												                  "audiAcc": "",
												                  "statSouce": "",
												                  "statDate": ""
												                }
												              ],
												            
												              
												              "screenArea": "",
												              "screenCnt": "",
												              "salesAcc": "",
												              "audiAcc": "",
												              "statSouce": "",
												              "statDate": "",
												              "themeSong": "",
												              "soundtrack": "",
												              "fLocation": "",
												              "Awards1": "",
												              "Awards2": "",
												              "regDate": "19000101",
												              "modDate": "20211018",
												            
												              
												              "Codes": {
												                "Code": [
												                  {
												                    "CodeNm": "FIMS",
												                    "CodeNo": "19538020"
												                  }
												                ]
												            
												              
												              },
												              "CommCodes": {
												                "CommCode": [
												                  {
												                    "CodeNm": "FIMS",
												                    "CodeNo": "19538020"
												                  }
												                ]
												              },
												          
												              "ALIAS": "srcKmdb2"
												            },
												            {
												              "DOCID": "F40982",
												              "movieId": "F",
												              "movieSeq": "40982",
												              "title": " 디센던츠 2",
												              "titleEng": "Descendants 2",
												              "titleOrg": "Descendants 2",
												              "titleEtc": "디센던츠2^디센던츠 2^Descendants 2^Descendants 2",
												              "prodYear": "2017",
												              "directors": {
												                "director": [
												                  {
												                    "directorNm": "케니 오르테가",
												                    "directorEnNm": "Kenny Ortega",
												                    "directorId": "00094144"
												                  }
												                ]
												              },
												              "actors": {
												                "actor": [
												                  {
												                    "actorNm": "도브 카메룬",
												                    "actorEnNm": "Dove Cameron",
												                    "actorId": "00188042"
												                  },
												                  {
												                    "actorNm": "카메론 보이스",
												                    "actorEnNm": "Cameron Boyce",
												                    "actorId": "00060296"
												                  },
												                  {
												                    "actorNm": "소피아 칼슨",
												                    "actorEnNm": "Sofia Carson",
												                    "actorId": "00193183"
												                  },
												                  {
												                    "actorNm": "부부 스튜어트",
												                    "actorEnNm": "Booboo Stewart",
												                    "actorId": "00193182"
												                  },
												                  {
												                    "actorNm": "미첼 호프",
												                    "actorEnNm": "Mitchell Hope",
												                    "actorId": "00203650"
												                  }
												                ]
												              },
												              "nation": "",
												              "company": "Disney Channel",
												              "plots": {
												                "plot": [
												                  {
												                    "plotLang": "한국어",
												                    "plotText": "디즈니의 각 왕국들은 힘을 모아 한 명의 새로운 지도자를 선출하고, 하나의 왕국 ‘오라돈 연합왕국’으로 새롭게 탄생한다. 20년 후 2대 왕 벤의 즉위를 앞두고, 디즈니 왕국에서 쫓겨났던 네 명의 악당들의 자녀들에게 비로소 디즈니 왕국의 학교를 다닐 수 있는 기회가 주어진다.[잠자는 숲속의 미녀]의 마녀 말리피센트의 딸 ‘말’과 [101마리 달마시안]의 크루엘라의 아들 ‘카를로스’, [백설공주]의 사악한 왕비의 딸 ‘이비’ 그리고 [알라딘]의 자파의 아들 ‘제이’. 이들이 디즈니 왕국 학교를 다니게 되면서 벌어지는 사건 사고들이 [디센던츠2]에서도 계속된다.오라돈 왕국의 공주가 될 예정이었던 ‘말’은 엄격하고 숨막히는 생활에 지쳐가고 중압감을 이기지 못해 악당들의 섬으로 되돌아 가게 된다. ‘이비’, ‘카를로스’, ‘제이’는 그녀를 데려오기 위해 섬으로 뒤쫓아 가고, 벤을 악당으로 분장시켜서 말을 찾아내려고 한다. 그리고 그들은 섬의 지도자인 [인어공주] 우슬라의 딸 ‘우마’, [후크] 후크선장의 아들 해리, [미녀와 야수] 개스톤의 아들 ‘길’을 만나게 되는데…"
												                  }
												                ]
												              },
												              "runtime": "111",
												              "rating": "",
												              "genre": "액션,어드벤처,가족,판타지,멜로드라마",
												              "kmdbUrl": "https://www.kmdb.or.kr/db/kor/detail/movie/F/40982",
												              "type": "극영화",
												              "use": "TV용",
												              "episodes": "",
												              "ratedYn": "",
												              "repRatDate": "",
												              "repRlsDate": "",
												              "ratings": {
												                "rating": [
												                  {
												                    "ratingMain": "Y",
												                    "ratingDate": "",
												                    "ratingNo": "",
												                    "ratingGrade": "",
												                    "releaseDate": "",
												                    "runtime": "111"
												                  }
												                ]
												              },
												              "keywords": "",
												              "posters": "",
												              "stlls": "",
												              "staffs": {
												                "staff": [
												                  {
												                    "staffNm": "케니 오르테가",
												                    "staffEnNm": "Kenny Ortega",
												                    "staffRoleGroup": "감독",
												                    "staffRole": "",
												                    "staffEtc": "",
												                    "staffId": "00094144"
												                  },
												                  {
												                    "staffNm": "사라 패리엇",
												                    "staffEnNm": "Sara Parriott",
												                    "staffRoleGroup": "각본",
												                    "staffRole": "",
												                    "staffEtc": "",
												                    "staffId": "00114844"
												                  },
												                  {
												                    "staffNm": "조산 맥기본",
												                    "staffEnNm": "Josann McGibbon",
												                    "staffRoleGroup": "각본",
												                    "staffRole": "",
												                    "staffEtc": "",
												                    "staffId": "00091400"
												                  },
												                  {
												                    "staffNm": "도브 카메룬",
												                    "staffEnNm": "Dove Cameron",
												                    "staffRoleGroup": "출연",
												                    "staffRole": "",
												                    "staffEtc": "",
												                    "staffId": "00188042"
												                  },
												                  {
												                    "staffNm": "카메론 보이스",
												                    "staffEnNm": "Cameron Boyce",
												                    "staffRoleGroup": "출연",
												                    "staffRole": "",
												                    "staffEtc": "",
												                    "staffId": "00060296"
												                  },
												                  {
												                    "staffNm": "소피아 칼슨",
												                    "staffEnNm": "Sofia Carson",
												                    "staffRoleGroup": "출연",
												                    "staffRole": "",
												                    "staffEtc": "",
												                    "staffId": "00193183"
												                  },
												                  {
												                    "staffNm": "부부 스튜어트",
												                    "staffEnNm": "Booboo Stewart",
												                    "staffRoleGroup": "출연",
												                    "staffRole": "",
												                    "staffEtc": "",
												                    "staffId": "00193182"
												                  },
												                  {
												                    "staffNm": "미첼 호프",
												                    "staffEnNm": "Mitchell Hope",
												                    "staffRoleGroup": "출연",
												                    "staffRole": "",
												                    "staffEtc": "",
												                    "staffId": "00203650"
												                  }
												                ]
												              },
												              "vods": {
												                "vod": [
												                  {
												                    "vodClass": "",
												                    "vodUrl": ""
												                  }
												                ]
												              },
												              "openThtr": "",
												              "stat": [
												                {
												                  "screenArea": "",
												                  "screenCnt": "",
												                  "salesAcc": "",
												                  "audiAcc": "",
												                  "statSouce": "",
												                  "statDate": ""
												                }
												              ],
												              "screenArea": "",
												              "screenCnt": "",
												              "salesAcc": "",
												              "audiAcc": "",
												              "statSouce": "",
												              "statDate": "",
												              "themeSong": "",
												              "soundtrack": "",
												              "fLocation": "",
												              "Awards1": "",
												              "Awards2": "",
												              "regDate": "20180330",
												              "modDate": "20180330",
												              "Codes": {
												                "Code": [
												                  {
												                    "CodeNm": "",
												                    "CodeNo": ""
												                  }
												                ]
												              },
												              "CommCodes": {
												                "CommCode": [
												                  {
												                    "CodeNm": "",
												                    "CodeNo": ""
												                  }
												                ]
												              },
												              "ALIAS": "srcKmdb2"
												            }
												            
												            
												            //시작 --> 콤마 확인.
												            /*
												            {
												                "DOCID": "F40931",
												                "movieId": "F",
												                "movieSeq": "40931",
												                "title": " 캅스 앤 로버스",
												                "titleEng": "Cops and Robbers",
												                "titleOrg": "Cops and Robbers",
												                "titleEtc": "캅스앤로버스^캅스 앤 로버스^Cops and Robbers^경찰과도둑,캅스엔로버스,캅스앤롸버스^Cops and Robbers",
												                "prodYear": "2017",
												                "directors": {
												                  "director": [
												                    {
												                      "directorNm": "스콧 윈드하우저",
												                      "directorEnNm": "Scott Windhauser",
												                      "directorId": "00203602"
												                    }
												                  ]
												                },
												                "actors": {
												                  "actor": [
												                    {
												                      "actorNm": "마이클 제이 화이트",
												                      "actorEnNm": "Michael Jai White",
												                      "actorId": "00102544"
												                    },
												                    {
												                      "actorNm": "퀸튼 잭슨",
												                      "actorEnNm": "Quinton 'Rampage' Jackson",
												                      "actorId": "00148205"
												                    },
												                    {
												                      "actorNm": "톰 베린저",
												                      "actorEnNm": "Tom Berenger",
												                      "actorId": "00049256"
												                    },
												                    {
												                      "actorNm": "빅토리아 프랫",
												                      "actorEnNm": "Victoria Pratt",
												                      "actorId": "00203603"
												                    },
												                    {
												                      "actorNm": "패트릭 킬패트릭",
												                      "actorEnNm": "Patrick Kilpatrick",
												                      "actorId": "00107373"
												                    }
												                  ]
												                },
												                "nation": "미국",
												                "company": "Badhouse Studios Mexico",
												                "plots": {
												                  "plot": [
												                    {
												                      "plotLang": "한국어",
												                      "plotText": "인질 협상가인 동생과 인질극을 벌이는 형과의 이야기를 그린 액션 영화"
												                    }
												                  ]
												                },
												                "runtime": "89",
												                "rating": "15세관람가",
												                "genre": "액션",
												                "kmdbUrl": "https://www.kmdb.or.kr/db/kor/detail/movie/F/40931",
												                "type": "극영화",
												                "use": "극장용",
												                "episodes": "",
												                "ratedYn": "Y",
												                "repRatDate": "20180314",
												                "repRlsDate": "",
												                "ratings": {
												                  "rating": [
												                    {
												                      "ratingMain": "Y",
												                      "ratingDate": "20180314",
												                      "ratingNo": "2018-MF00469",
												                      "ratingGrade": "15세관람가",
												                      "releaseDate": "",
												                      "runtime": "89"
												                    }
												                  ]
												                },
												                "keywords": "인질협상가,동생,인질극,테러범,형,강도",
												                "posters": "",
												                "stlls": "",
												                "staffs": {
												                  "staff": [
												                    {
												                      "staffNm": "스콧 윈드하우저",
												                      "staffEnNm": "Scott Windhauser",
												                      "staffRoleGroup": "감독",
												                      "staffRole": "",
												                      "staffEtc": "",
												                      "staffId": "00203602"
												                    },
												                    {
												                      "staffNm": "스콧 윈드하우저",
												                      "staffEnNm": "Scott Windhauser",
												                      "staffRoleGroup": "각본",
												                      "staffRole": "",
												                      "staffEtc": "",
												                      "staffId": "00203602"
												                    },
												                    {
												                      "staffNm": "마이클 제이 화이트",
												                      "staffEnNm": "Michael Jai White",
												                      "staffRoleGroup": "출연",
												                      "staffRole": "마이클",
												                      "staffEtc": "",
												                      "staffId": "00102544"
												                    },
												                    {
												                      "staffNm": "퀸튼 잭슨",
												                      "staffEnNm": "Quinton 'Rampage' Jackson",
												                      "staffRoleGroup": "출연",
												                      "staffRole": "지세",
												                      "staffEtc": "",
												                      "staffId": "00148205"
												                    },
												                    {
												                      "staffNm": "톰 베린저",
												                      "staffEnNm": "Tom Berenger",
												                      "staffRoleGroup": "출연",
												                      "staffRole": "캡틴 랜돌프",
												                      "staffEtc": "",
												                      "staffId": "00049256"
												                    },
												                    {
												                      "staffNm": "빅토리아 프랫",
												                      "staffEnNm": "Victoria Pratt",
												                      "staffRoleGroup": "출연",
												                      "staffRole": "셰릴",
												                      "staffEtc": "",
												                      "staffId": "00203603"
												                    },
												                    {
												                      "staffNm": "패트릭 킬패트릭",
												                      "staffEnNm": "Patrick Kilpatrick",
												                      "staffRoleGroup": "출연",
												                      "staffRole": "밀러 수사관",
												                      "staffEtc": "",
												                      "staffId": "00107373"
												                    }
												                  ]
												                },
												                "vods": {
												                  "vod": [
												                    {
												                      "vodClass": "",
												                      "vodUrl": ""
												                    }
												                  ]
												                },
												                "openThtr": "",
												                "stat": [
												                  {
												                    "screenArea": "",
												                    "screenCnt": "",
												                    "salesAcc": "",
												                    "audiAcc": "",
												                    "statSouce": "",
												                    "statDate": ""
												                  }
												                ],
												                "screenArea": "",
												                "screenCnt": "",
												                "salesAcc": "",
												                "audiAcc": "",
												                "statSouce": "",
												                "statDate": "",
												                "themeSong": "",
												                "soundtrack": "",
												                "fLocation": "",
												                "Awards1": "",
												                "Awards2": "",
												                "regDate": "20180327",
												                "modDate": "20180327",
												                "Codes": {
												                  "Code": [
												                    {
												                      "CodeNm": "",
												                      "CodeNo": ""
												                    }
												                  ]
												                },
												                "CommCodes": {
												                  "CommCode": [
												                    {
												                      "CodeNm": "",
												                      "CodeNo": ""
												                    }
												                  ]
												                },
												                "ALIAS": "srcKmdb2"
												              },
												              {
												                "DOCID": "F40918",
												                "movieId": "F",
												                "movieSeq": "40918",
												                "title": " 툼레이더",
												                "titleEng": "Tomb Raider",
												                "titleOrg": "Tomb Raider",
												                "titleEtc": "툼레이더^Tomb Raider^툼래이더^Tomb Raider",
												                "prodYear": "2018",
												                "directors": {
												                  "director": [
												                    {
												                      "directorNm": "로아 우다우그",
												                      "directorEnNm": "Roar Uthaug",
												                      "directorId": "00203505"
												                    }
												                  ]
												                },
												                "actors": {
												                  "actor": [
												                    {
												                      "actorNm": "알리시아 비칸데르",
												                      "actorEnNm": "Alicia Vikander",
												                      "actorId": "00173003"
												                    },
												                    {
												                      "actorNm": "크리스틴 스코트 토마스",
												                      "actorEnNm": "Kristin Scott Thomas",
												                      "actorId": "00049703"
												                    },
												                    {
												                      "actorNm": "월트 고긴스",
												                      "actorEnNm": "Walt Goggins",
												                      "actorId": "00122925"
												                    },
												                    {
												                      "actorNm": "도미닉 웨스트",
												                      "actorEnNm": "Dominic West",
												                      "actorId": "00067560"
												                    },
												                    {
												                      "actorNm": "다니엘 우",
												                      "actorEnNm": "Daniel Wu",
												                      "actorId": "00064908"
												                    },
												                    {
												                      "actorNm": "닉 프로스트",
												                      "actorEnNm": "Nick Frost",
												                      "actorId": "00105527"
												                    }
												                  ]
												                },
												                "nation": "미국",
												                "company": "GK Films,Warner Bros.",
												                "plots": {
												                  "plot": [
												                    {
												                      "plotLang": "한국어",
												                      "plotText": "역사상 가장 위험한 어드벤처의 시작 전사로 깨어난 '라라'의 모험에 동참하라!라라 크로프트(알리시아 비칸데르)는 늘 주변 사람들에게 자유분방하고 활동적인 밝은 모습을 보여주지만 사실 7년 전 실종된 탐험가였던 아버지에 대한 아픔을 가지고 있다. 우연히 아버지가 남긴 미스터리한 단서를 발견한 라라는 아버지가 어딘가에 반드시 살아 있을 것이라는 굳은 믿음으로 전설의 섬에 있는 '죽음의 신'의 무덤을 찾아 나선다. 위험한 모험의 문이 열리고, 무덤 속에 숨겨진 퍼즐을 풀어나갈수록 라라 자신도 몰랐던 전사의 본능이 깨어난다!"
												                    }
												                  ]
												                },
												                "runtime": "118",
												                "rating": "12세관람가",
												                "genre": "액션,어드벤처",
												                "kmdbUrl": "https://www.kmdb.or.kr/db/kor/detail/movie/F/40918",
												                "type": "극영화",
												                "use": "극장용",
												                "episodes": "",
												                "ratedYn": "Y",
												                "repRatDate": "20180312",
												                "repRlsDate": "20180308",
												                "ratings": {
												                  "rating": [
												                    {
												                      "ratingMain": "Y",
												                      "ratingDate": "20180312",
												                      "ratingNo": "2018-MF00443",
												                      "ratingGrade": "12세관람가",
												                      "releaseDate": "20180308",
												                      "runtime": "118"
												                    }
												                  ]
												                },
												                "keywords": "리메이크,여전사,걸크러쉬,히어로,전설",
												                "posters": "",
												                "stlls": "",
												                "staffs": {
												                  "staff": [
												                    {
												                      "staffNm": "로아 우다우그",
												                      "staffEnNm": "Roar Uthaug",
												                      "staffRoleGroup": "감독",
												                      "staffRole": "",
												                      "staffEtc": "",
												                      "staffId": "00203505"
												                    },
												                    {
												                      "staffNm": "제네바 로버트슨-드워렛",
												                      "staffEnNm": "",
												                      "staffRoleGroup": "각본",
												                      "staffRole": "",
												                      "staffEtc": "",
												                      "staffId": ""
												                    },
												                    {
												                      "staffNm": "알라스테어 시든스",
												                      "staffEnNm": "",
												                      "staffRoleGroup": "각본",
												                      "staffRole": "",
												                      "staffEtc": "",
												                      "staffId": ""
												                    },
												                    {
												                      "staffNm": "알리시아 비칸데르",
												                      "staffEnNm": "Alicia Vikander",
												                      "staffRoleGroup": "출연",
												                      "staffRole": "라라 크로포트",
												                      "staffEtc": "",
												                      "staffId": "00173003"
												                    },
												                    {
												                      "staffNm": "크리스틴 스코트 토마스",
												                      "staffEnNm": "Kristin Scott Thomas",
												                      "staffRoleGroup": "출연",
												                      "staffRole": "애나 밀러",
												                      "staffEtc": "",
												                      "staffId": "00049703"
												                    },
												                    {
												                      "staffNm": "월트 고긴스",
												                      "staffEnNm": "Walt Goggins",
												                      "staffRoleGroup": "출연",
												                      "staffRole": "마티아스 보겔",
												                      "staffEtc": "",
												                      "staffId": "00122925"
												                    },
												                    {
												                      "staffNm": "도미닉 웨스트",
												                      "staffEnNm": "Dominic West",
												                      "staffRoleGroup": "출연",
												                      "staffRole": "리차드 크로포트 경",
												                      "staffEtc": "",
												                      "staffId": "00067560"
												                    },
												                    {
												                      "staffNm": "다니엘 우",
												                      "staffEnNm": "Daniel Wu",
												                      "staffRoleGroup": "출연",
												                      "staffRole": "루 렌",
												                      "staffEtc": "",
												                      "staffId": "00064908"
												                    },
												                    {
												                      "staffNm": "닉 프로스트",
												                      "staffEnNm": "Nick Frost",
												                      "staffRoleGroup": "출연",
												                      "staffRole": "맥스",
												                      "staffEtc": "",
												                      "staffId": "00105527"
												                    },
												                    {
												                      "staffNm": "개리 바버",
												                      "staffEnNm": "Gary Barber",
												                      "staffRoleGroup": "제작자",
												                      "staffRole": "",
												                      "staffEtc": "",
												                      "staffId": "00072843"
												                    },
												                    {
												                      "staffNm": "그라함 킹",
												                      "staffEnNm": "Graham King",
												                      "staffRoleGroup": "제작자",
												                      "staffRole": "",
												                      "staffEtc": "",
												                      "staffId": "00074770"
												                    },
												                    {
												                      "staffNm": "조지 리치몬드",
												                      "staffEnNm": "George Richmond",
												                      "staffRoleGroup": "촬영",
												                      "staffRole": "",
												                      "staffEtc": "",
												                      "staffId": "00178814"
												                    }
												                  ]
												                },
												                "vods": {
												                  "vod": [
												                    {
												                      "vodClass": "",
												                      "vodUrl": ""
												                    }
												                  ]
												                },
												                "openThtr": "",
												                "stat": [
												                  {
												                    "screenArea": "",
												                    "screenCnt": "",
												                    "salesAcc": "",
												                    "audiAcc": "",
												                    "statSouce": "",
												                    "statDate": ""
												                  }
												                ],
												                "screenArea": "",
												                "screenCnt": "",
												                "salesAcc": "",
												                "audiAcc": "",
												                "statSouce": "",
												                "statDate": "",
												                "themeSong": "",
												                "soundtrack": "",
												                "fLocation": "",
												                "Awards1": "",
												                "Awards2": "",
												                "regDate": "20180326",
												                "modDate": "20180404",
												                "Codes": {
												                  "Code": [
												                    {
												                      "CodeNm": "",
												                      "CodeNo": ""
												                    }
												                  ]
												                },
												                "CommCodes": {
												                  "CommCode": [
												                    {
												                      "CodeNm": "",
												                      "CodeNo": ""
												                    }
												                  ]
												                },
												                "ALIAS": "srcKmdb2"
												              },
												              {
												                "DOCID": "F40917",
												                "movieId": "F",
												                "movieSeq": "40917",
												                "title": " 스페셜포스 : 화이트 마운틴",
												                "titleEng": "The mountain 1 (Dag)",
												                "titleOrg": "DAG",
												                "titleEtc": "스페셜포스:화이트마운틴^스페셜포스 : 화이트 마운틴^DAG^스페셜포스:화이트마운틴,스패셜포스 화이트마운틴.스페셜포스 화이트마운틴,더마운틴원^The mountain 1 (Dag)",
												                "prodYear": "2012",
												                "directors": {
												                  "director": [
												                    {
												                      "directorNm": "알퍼 카글락",
												                      "directorEnNm": "Alper Caglar",
												                      "directorId": "00203593"
												                    }
												                  ]
												                },
												                "actors": {
												                  "actor": [
												                    {
												                      "actorNm": "우퍽 바이라크타르",
												                      "actorEnNm": "",
												                      "actorId": ""
												                    },
												                    {
												                      "actorNm": "커글러 에르투그럴",
												                      "actorEnNm": "",
												                      "actorId": ""
												                    }
												                  ]
												                },
												                "nation": "터키",
												                "company": "Mars Entertainment Group",
												                "plots": {
												                  "plot": [
												                    {
												                      "plotLang": "한국어",
												                      "plotText": "'스페셜 포스’가 설원에서 목숨을 건 전쟁으로 돌아왔다.작전 수행 중, 산속에 고립이 된 ‘오구즈’와 베키르’, 적군의 습격을 받아 동료를 잃고 단 둘만 살아남게 된다. 그들에게 남은 건 두자루의 총과 총알 5발, 수 많은 적들 속에서 그들은 살아남을 수 있을 것인가!"
												                    }
												                  ]
												                },
												                "runtime": "84",
												                "rating": "15세관람가",
												                "genre": "액션,드라마,전쟁",
												                "kmdbUrl": "https://www.kmdb.or.kr/db/kor/detail/movie/F/40917",
												                "type": "극영화",
												                "use": "극장용",
												                "episodes": "",
												                "ratedYn": "Y",
												                "repRatDate": "20180312",
												                "repRlsDate": "20180400",
												                "ratings": {
												                  "rating": [
												                    {
												                      "ratingMain": "Y",
												                      "ratingDate": "20180312",
												                      "ratingNo": "2018-MF00440",
												                      "ratingGrade": "15세관람가",
												                      "releaseDate": "20180400",
												                      "runtime": "84"
												                    }
												                  ]
												                },
												                "keywords": "스페셜포스,시리즈,프롤로그,프리퀄,특수부대,고립",
												                "posters": "http://file.koreafilm.or.kr/thm/02/00/04/53/tn_DPF014016.jpg",
												                "stlls": "http://file.koreafilm.or.kr/thm/01/copy/00/48/51/tn_DSFT074826.jpg|http://file.koreafilm.or.kr/thm/01/copy/00/48/51/tn_DSFT074827.jpg|http://file.koreafilm.or.kr/thm/01/copy/00/48/51/tn_DSFT074828.jpg|http://file.koreafilm.or.kr/thm/01/copy/00/48/51/tn_DSFT074829.jpg|http://file.koreafilm.or.kr/thm/01/copy/00/48/51/tn_DSFT074830.jpg|http://file.koreafilm.or.kr/thm/01/copy/00/48/51/tn_DSFT074831.jpg|http://file.koreafilm.or.kr/thm/01/copy/00/48/51/tn_DSFT074832.jpg|http://file.koreafilm.or.kr/thm/01/copy/00/48/51/tn_DSFT074833.jpg",
												                "staffs": {
												                  "staff": [
												                    {
												                      "staffNm": "알퍼 카글락",
												                      "staffEnNm": "Alper Caglar",
												                      "staffRoleGroup": "감독",
												                      "staffRole": "",
												                      "staffEtc": "",
												                      "staffId": "00203593"
												                    },
												                    {
												                      "staffNm": "알퍼 카글락",
												                      "staffEnNm": "Alper Caglar",
												                      "staffRoleGroup": "각본",
												                      "staffRole": "",
												                      "staffEtc": "",
												                      "staffId": "00203593"
												                    },
												                    {
												                      "staffNm": "우퍽 바이라크타르",
												                      "staffEnNm": "",
												                      "staffRoleGroup": "출연",
												                      "staffRole": "베키르",
												                      "staffEtc": "",
												                      "staffId": ""
												                    },
												                    {
												                      "staffNm": "커글러 에르투그럴",
												                      "staffEnNm": "",
												                      "staffRoleGroup": "출연",
												                      "staffRole": "오구즈",
												                      "staffEtc": "",
												                      "staffId": ""
												                    },
												                    {
												                      "staffNm": "메흐메트 바스바란",
												                      "staffEnNm": "",
												                      "staffRoleGroup": "촬영",
												                      "staffRole": "",
												                      "staffEtc": "",
												                      "staffId": ""
												                    }
												                  ]
												                },
												                "vods": {
												                  "vod": [
												                    {
												                      "vodClass": "",
												                      "vodUrl": ""
												                    }
												                  ]
												                },
												                "openThtr": "",
												                "stat": [
												                  {
												                    "screenArea": "",
												                    "screenCnt": "",
												                    "salesAcc": "",
												                    "audiAcc": "",
												                    "statSouce": "",
												                    "statDate": ""
												                  }
												                ],
												                "screenArea": "",
												                "screenCnt": "",
												                "salesAcc": "",
												                "audiAcc": "",
												                "statSouce": "",
												                "statDate": "",
												                "themeSong": "",
												                "soundtrack": "",
												                "fLocation": "",
												                "Awards1": "",
												                "Awards2": "",
												                "regDate": "20180326",
												                "modDate": "20201019",
												                "Codes": {
												                  "Code": [
												                    {
												                      "CodeNm": "",
												                      "CodeNo": ""
												                    }
												                  ]
												                },
												                "CommCodes": {
												                  "CommCode": [
												                    {
												                      "CodeNm": "",
												                      "CodeNo": ""
												                    }
												                  ]
												                },
												                "ALIAS": "srcKmdb2"
												              },
												              {
												                "DOCID": "F40915",
												                "movieId": "F",
												                "movieSeq": "40915",
												                "title": " 극장판 마법소녀 마도카 마기카(신편): 반역의 이야기",
												                "titleEng": "PUELLA MAGI MADOKA MAGICA THE MOVIE -REBELLION-",
												                "titleOrg": "劇場版 魔法少女まどか☆マギカ 新編 叛逆の物語",
												                "titleEtc": "극장판마법소녀마도카마기카(신편):반역의이야기^극장판 마법소녀 마도카 마기카(신편): 반역의 이야기^劇場版 魔法少女まどか☆マギカ 新編 叛逆の物語^마법소녀 마도카 마기카^PUELLA MAGI MADOKA MAGICA THE MOVIE -REBELLION-",
												                "prodYear": "2013",
												                "directors": {
												                  "director": [
												                    {
												                      "directorNm": "신보 아키유키",
												                      "directorEnNm": "Akiyuki Shinbo",
												                      "directorId": "00154561"
												                    }
												                  ]
												                },
												                "actors": {
												                  "actor": [
												                    {
												                      "actorNm": "유우키 아오이",
												                      "actorEnNm": "",
												                      "actorId": ""
												                    },
												                    {
												                      "actorNm": "사이토 치와",
												                      "actorEnNm": "Chiwa Saito",
												                      "actorId": "00062087"
												                    },
												                    {
												                      "actorNm": "미즈하시 카오리",
												                      "actorEnNm": "Kaori Mizuhashi",
												                      "actorId": "00145508"
												                    },
												                    {
												                      "actorNm": "키타무라 에리",
												                      "actorEnNm": "Kitamura Eri",
												                      "actorId": "00173822"
												                    },
												                    {
												                      "actorNm": "노나카 아이",
												                      "actorEnNm": "Nonaka Ai",
												                      "actorId": "00173823"
												                    },
												                    {
												                      "actorNm": "카토 에미리",
												                      "actorEnNm": "",
												                      "actorId": ""
												                    }
												                  ]
												                },
												                "nation": "일본",
												                "company": "Shaft Productions Ltd.",
												                "plots": {
												                  "plot": [
												                    {
												                      "plotLang": "한국어",
												                      "plotText": "마법소녀는 절망에서 구원 받을 수 있을까? 순환의 이치에 이끌린 소녀들의 새로운 이야기가 시작된다한때는 행복한 나날을 보내던 한 소녀, 카나메 마도카는 그 작은 목숨을 걸고 모든 마법 소녀들을 잔인한 운명의 사슬에서 구해낸다. 유일하게 마도카의 존재와 과거에 대한 기억을 간직한 채 남겨진 마법 소녀 아케미 호무라는 그녀가 남긴 세계에서 홀로 전투를 계속한다. 그리운 그 미소를 위해 우리는 꿈을 꾼다"
												                    }
												                  ]
												                },
												                "runtime": "117",
												                "rating": "12세관람가",
												                "genre": "액션,판타지",
												                "kmdbUrl": "https://www.kmdb.or.kr/db/kor/detail/movie/F/40915",
												                "type": "애니메이션",
												                "use": "극장용",
												                "episodes": "",
												                "ratedYn": "Y",
												                "repRatDate": "20180307",
												                "repRlsDate": "20180315",
												                "ratings": {
												                  "rating": [
												                    {
												                      "ratingMain": "Y",
												                      "ratingDate": "20180307",
												                      "ratingNo": "2018-MF00433",
												                      "ratingGrade": "12세관람가",
												                      "releaseDate": "20180315",
												                      "runtime": "117"
												                    }
												                  ]
												                },
												                "keywords": "마법소녀,세계,극장판,마법학교,마녀,TV애니메이션원작",
												                "posters": "",
												                "stlls": "",
												                "staffs": {
												                  "staff": [
												                    {
												                      "staffNm": "신보 아키유키",
												                      "staffEnNm": "Akiyuki Shinbo",
												                      "staffRoleGroup": "감독",
												                      "staffRole": "",
												                      "staffEtc": "",
												                      "staffId": "00154561"
												                    },
												                    {
												                      "staffNm": "우로부치 겐",
												                      "staffEnNm": "",
												                      "staffRoleGroup": "각본",
												                      "staffRole": "",
												                      "staffEtc": "",
												                      "staffId": ""
												                    },
												                    {
												                      "staffNm": "유우키 아오이",
												                      "staffEnNm": "",
												                      "staffRoleGroup": "출연",
												                      "staffRole": "카나메 마도카",
												                      "staffEtc": "목소리",
												                      "staffId": ""
												                    },
												                    {
												                      "staffNm": "사이토 치와",
												                      "staffEnNm": "Chiwa Saito",
												                      "staffRoleGroup": "출연",
												                      "staffRole": "아케미 호무라",
												                      "staffEtc": "목소리",
												                      "staffId": "00062087"
												                    },
												                    {
												                      "staffNm": "미즈하시 카오리",
												                      "staffEnNm": "Kaori Mizuhashi",
												                      "staffRoleGroup": "출연",
												                      "staffRole": "토모에 마미",
												                      "staffEtc": "목소리",
												                      "staffId": "00145508"
												                    },
												                    {
												                      "staffNm": "키타무라 에리",
												                      "staffEnNm": "Kitamura Eri",
												                      "staffRoleGroup": "출연",
												                      "staffRole": "미키 사야카",
												                      "staffEtc": "목소리",
												                      "staffId": "00173822"
												                    },
												                    {
												                      "staffNm": "노나카 아이",
												                      "staffEnNm": "Nonaka Ai",
												                      "staffRoleGroup": "출연",
												                      "staffRole": "사쿠라 쿄코",
												                      "staffEtc": "목소리",
												                      "staffId": "00173823"
												                    },
												                    {
												                      "staffNm": "카토 에미리",
												                      "staffEnNm": "",
												                      "staffRoleGroup": "출연",
												                      "staffRole": "큐베",
												                      "staffEtc": "목소리",
												                      "staffId": ""
												                    }
												                  ]
												                },
												                "vods": {
												                  "vod": [
												                    {
												                      "vodClass": "",
												                      "vodUrl": ""
												                    }
												                  ]
												                },
												                "openThtr": "",
												                "stat": [
												                  {
												                    "screenArea": "",
												                    "screenCnt": "",
												                    "salesAcc": "",
												                    "audiAcc": "",
												                    "statSouce": "",
												                    "statDate": ""
												                  }
												                ],
												                "screenArea": "",
												                "screenCnt": "",
												                "salesAcc": "",
												                "audiAcc": "",
												                "statSouce": "",
												                "statDate": "",
												                "themeSong": "",
												                "soundtrack": "",
												                "fLocation": "",
												                "Awards1": "",
												                "Awards2": "",
												                "regDate": "20180326",
												                "modDate": "20211216",
												                "Codes": {
												                  "Code": [
												                    {
												                      "CodeNm": "FIMS",
												                      "CodeNo": "20181792"
												                    }
												                  ]
												                },
												                "CommCodes": {
												                  "CommCode": [
												                    {
												                      "CodeNm": "FIMS",
												                      "CodeNo": "20181792"
												                    }
												                  ]
												                },
												                "ALIAS": "srcKmdb2"
												              },
												              {
												                "DOCID": "F40940",
												                "movieId": "F",
												                "movieSeq": "40940",
												                "title": " 건 샤이",
												                "titleEng": "Gun Shy, Salty",
												                "titleOrg": "Gun Shy",
												                "titleEtc": "건샤이^건 샤이^Gun Shy^샤이건^Gun Shy, Salty",
												                "prodYear": "2017",
												                "directors": {
												                  "director": [
												                    {
												                      "directorNm": "사이먼 웨스트",
												                      "directorEnNm": "Simon West",
												                      "directorId": "00116642"
												                    }
												                  ]
												                },
												                "actors": {
												                  "actor": [
												                    {
												                      "actorNm": "안토니오 반데라스",
												                      "actorEnNm": "Jose Antonio Banderas",
												                      "actorId": "00048574"
												                    },
												                    {
												                      "actorNm": "올가 쿠리렌코",
												                      "actorEnNm": "Olga Kurylenko",
												                      "actorId": "00106387"
												                    },
												                    {
												                      "actorNm": "벤 큐라",
												                      "actorEnNm": "",
												                      "actorId": ""
												                    },
												                    {
												                      "actorNm": "마크 밸리",
												                      "actorEnNm": "Mark Valley",
												                      "actorId": "00100260"
												                    },
												                    {
												                      "actorNm": "제시 존슨",
												                      "actorEnNm": "Jesse Johnson",
												                      "actorId": "00178454"
												                    }
												                  ]
												                },
												                "nation": "영국",
												                "company": "Salty Film",
												                "plots": {
												                  "plot": [
												                    {
												                      "plotLang": "한국어",
												                      "plotText": "해적단에게 인질로 잡힌 아내를 구하러 나선 왕년 록스타의 이야기를 그린 영화"
												                    }
												                  ]
												                },
												                "runtime": "92",
												                "rating": "18세관람가(청소년관람불가)",
												                "genre": "액션,코메디,어드벤처",
												                "kmdbUrl": "https://www.kmdb.or.kr/db/kor/detail/movie/F/40940",
												                "type": "극영화",
												                "use": "극장용",
												                "episodes": "",
												                "ratedYn": "Y",
												                "repRatDate": "20180319",
												                "repRlsDate": "20180503",
												                "ratings": {
												                  "rating": [
												                    {
												                      "ratingMain": "Y",
												                      "ratingDate": "20180319",
												                      "ratingNo": "2018-MF00490",
												                      "ratingGrade": "18세관람가(청소년관람불가)",
												                      "releaseDate": "20180503",
												                      "runtime": "92"
												                    }
												                  ]
												                },
												                "keywords": "왕년의,록스타,아내,인질,해적단",
												                "posters": "http://file.koreafilm.or.kr/thm/02/00/04/56/tn_DPF014120.jpg",
												                "stlls": "http://file.koreafilm.or.kr/thm/01/copy/00/48/60/tn_DSFT075240.jpg|http://file.koreafilm.or.kr/thm/01/copy/00/48/60/tn_DSFT075227.jpg|http://file.koreafilm.or.kr/thm/01/copy/00/48/60/tn_DSFT075228.jpg|http://file.koreafilm.or.kr/thm/01/copy/00/48/60/tn_DSFT075229.jpg|http://file.koreafilm.or.kr/thm/01/copy/00/48/60/tn_DSFT075230.jpg|http://file.koreafilm.or.kr/thm/01/copy/00/48/60/tn_DSFT075231.jpg|http://file.koreafilm.or.kr/thm/01/copy/00/48/60/tn_DSFT075232.jpg|http://file.koreafilm.or.kr/thm/01/copy/00/48/60/tn_DSFT075233.jpg",
												                "staffs": {
												                  "staff": [
												                    {
												                      "staffNm": "사이먼 웨스트",
												                      "staffEnNm": "Simon West",
												                      "staffRoleGroup": "감독",
												                      "staffRole": "",
												                      "staffEtc": "",
												                      "staffId": "00116642"
												                    },
												                    {
												                      "staffNm": "마크 헤스켈 스미스",
												                      "staffEnNm": "Mark Haskell Smith",
												                      "staffRoleGroup": "각본",
												                      "staffRole": "",
												                      "staffEtc": "",
												                      "staffId": "00100019"
												                    },
												                    {
												                      "staffNm": "안토니오 반데라스",
												                      "staffEnNm": "Jose Antonio Banderas",
												                      "staffRoleGroup": "출연",
												                      "staffRole": "터크 헨리",
												                      "staffEtc": "",
												                      "staffId": "00048574"
												                    },
												                    {
												                      "staffNm": "올가 쿠리렌코",
												                      "staffEnNm": "Olga Kurylenko",
												                      "staffRoleGroup": "출연",
												                      "staffRole": "쉘라",
												                      "staffEtc": "",
												                      "staffId": "00106387"
												                    },
												                    {
												                      "staffNm": "벤 큐라",
												                      "staffEnNm": "",
												                      "staffRoleGroup": "출연",
												                      "staffRole": "후안 카를로스",
												                      "staffEtc": "",
												                      "staffId": ""
												                    },
												                    {
												                      "staffNm": "마크 밸리",
												                      "staffEnNm": "Mark Valley",
												                      "staffRoleGroup": "출연",
												                      "staffRole": "벤 하딩",
												                      "staffEtc": "",
												                      "staffId": "00100260"
												                    },
												                    {
												                      "staffNm": "제시 존슨",
												                      "staffEnNm": "Jesse Johnson",
												                      "staffRoleGroup": "출연",
												                      "staffRole": "다니엘",
												                      "staffEtc": "",
												                      "staffId": "00178454"
												                    }
												                  ]
												                },
												                "vods": {
												                  "vod": [
												                    {
												                      "vodClass": "",
												                      "vodUrl": ""
												                    }
												                  ]
												                },
												                "openThtr": "",
												                "stat": [
												                  {
												                    "screenArea": "",
												                    "screenCnt": "",
												                    "salesAcc": "",
												                    "audiAcc": "",
												                    "statSouce": "",
												                    "statDate": ""
												                  }
												                ],
												                "screenArea": "",
												                "screenCnt": "",
												                "salesAcc": "",
												                "audiAcc": "",
												                "statSouce": "",
												                "statDate": "",
												                "themeSong": "",
												                "soundtrack": "",
												                "fLocation": "",
												                "Awards1": "",
												                "Awards2": "",
												                "regDate": "20180327",
												                "modDate": "20180430",
												                "Codes": {
												                  "Code": [
												                    {
												                      "CodeNm": "",
												                      "CodeNo": ""
												                    }
												                  ]
												                },
												                "CommCodes": {
												                  "CommCode": [
												                    {
												                      "CodeNm": "",
												                      "CodeNo": ""
												                    }
												                  ]
												                },
												                "ALIAS": "srcKmdb2"
												              },
												              {
												                "DOCID": "F40934",
												                "movieId": "F",
												                "movieSeq": "40934",
												                "title": " 레디 플레이어 원",
												                "titleEng": "Ready player one",
												                "titleOrg": "Ready player one",
												                "titleEtc": "레디플레이어원^레디 플레이어 원^Ready player one^레뒤플레이어원,래디플레이어원,레디플레이어원^Ready player one^Ready player one",
												                "prodYear": "2018",
												                "directors": {
												                  "director": [
												                    {
												                      "directorNm": "스티븐 스필버그",
												                      "directorEnNm": "Steven Spielberg",
												                      "directorId": "00048320"
												                    }
												                  ]
												                },
												                "actors": {
												                  "actor": [
												                    {
												                      "actorNm": "마크 라이런스",
												                      "actorEnNm": "Mark Rylance",
												                      "actorId": "00100201"
												                    },
												                    {
												                      "actorNm": "사이먼 페그",
												                      "actorEnNm": "Simon Pegg",
												                      "actorId": "00116614"
												                    },
												                    {
												                      "actorNm": "올리비아 쿡",
												                      "actorEnNm": "Olivia Cooke",
												                      "actorId": "00185942"
												                    },
												                    {
												                      "actorNm": "타이 쉐리던",
												                      "actorEnNm": "Tye Sheridan",
												                      "actorId": "00175987"
												                    },
												                    {
												                      "actorNm": "벤 멘델슨",
												                      "actorEnNm": "Ben Mendelsohn",
												                      "actorId": "00057727"
												                    },
												                    {
												                      "actorNm": "T.J. 밀러",
												                      "actorEnNm": "T.J. Miller",
												                      "actorId": "00118553"
												                    },
												                    {
												                      "actorNm": "리나 웨이스",
												                      "actorEnNm": "",
												                      "actorId": ""
												                    },
												                    {
												                      "actorNm": "모리사키 윈",
												                      "actorEnNm": "",
												                      "actorId": ""
												                    },
												                    {
												                      "actorNm": "줄리아 닉슨 솔",
												                      "actorEnNm": "Julia Nickson-Soul",
												                      "actorId": "00092220"
												                    },
												                    {
												                      "actorNm": "레티티아 라이트",
												                      "actorEnNm": "",
												                      "actorId": ""
												                    }
												                  ]
												                },
												                "nation": "미국",
												                "company": "Warner Bros.,Farah Films Management,De Line Pict",
												                "plots": {
												                  "plot": [
												                    {
												                      "plotLang": "한국어",
												                      "plotText": "2045년, 암울한 현실과 달리 가상현실 오아시스(OASIS)에서는 누구든 원하는 캐릭터로 어디든지 갈 수 있고, 뭐든지 할 수 있고 상상하는 모든 게 가능하다. 웨이드 와츠(타이 쉐리던) 역시 유일한 낙은 대부분의 사람들이 하루를 보내는 오아시스에 접속하는 것이다. 어느 날 오아시스의 창시자인 괴짜 천재 제임스 할리데이(마크 라이런스)는 자신이 가상현실 속에 숨겨둔 3개의 미션에서 우승하는 사람에게 오아시스의 소유권과 막대한 유산을 상속한다는 유언을 남기고, 그가 사랑했던 80년대 대중문화 속에 힌트가 있음을 알린다. 제임스 할리데이를 선망했던 소년 ‘웨이드 와츠’가 첫 번째 수수께끼를 푸는 데 성공하자 이를 저지하기 위해 현실에서 살인도 마다하지 않는 ‘IOI’라는 거대 기업이 뛰어든다. 모두의 꿈과 희망이 되는 오아시스를 지키기 위해서는 반드시 우승해야 한다! 그리고 우승을 위해서는 가상현실이 아닌 현실세계의 우정과 사랑의 힘이 필요하기만 한데…"
												                    },
												                    {
												                      "plotLang": "영어",
												                      "plotText": "In the year 2045, the real world is a harsh place. The only time Wade Watts (Tye Sheridan) truly feels alive is when he escapes to the OASIS, an immersive virtual universe where most of humanity spends their days. In the OASIS, you can go anywhere, do anything, be anyone-the only limits are your own imagination. The OASIS was created by the brilliant and eccentric James Halliday (Mark Rylance), who left his immense fortune and total control of the Oasis to the winner of a three-part contest he designed to find a worthy heir. When Wade conquers the first challenge of the reality-bending treasure hunt, he and his friends-aka the High Five-are hurled into a fantastical universe of discovery and danger to save the OASIS."
												                    }
												                  ]
												                },
												                "runtime": "140",
												                "rating": "12세관람가",
												                "genre": "액션,SF,어드벤처",
												                "kmdbUrl": "https://www.kmdb.or.kr/db/kor/detail/movie/F/40934",
												                "type": "극영화",
												                "use": "극장용",
												                "episodes": "",
												                "ratedYn": "Y",
												                "repRatDate": "20180312",
												                "repRlsDate": "20180328",
												                "ratings": {
												                  "rating": [
												                    {
												                      "ratingMain": "N||Y",
												                      "ratingDate": "20180319||20180312",
												                      "ratingNo": "2018-MF00485||2018-MF00460",
												                      "ratingGrade": "12세관람가||12세관람가",
												                      "releaseDate": "20180328||20180328",
												                      "runtime": "140||140"
												                    }
												                  ]
												                },
												                "keywords": "VR영화,증강현실,가상현실,오아시스,스필버그,게임캐릭터,인디아나 존스,로그인,디스토피아,현실도피,거액의유산,미션,보물찾기,이스터에그,가상미래,미래시대,베스트셀러원작,소설쓰기",
												                "posters": "http://file.koreafilm.or.kr/thm/02/00/04/52/tn_DPF013967.jpg|http://file.koreafilm.or.kr/thm/02/00/04/52/tn_DPF013969.jpg|http://file.koreafilm.or.kr/thm/02/00/04/79/tn_DPF015294.jpg|http://file.koreafilm.or.kr/thm/02/00/04/79/tn_DPF015295.jpg|http://file.koreafilm.or.kr/thm/02/00/04/79/tn_DPF015296.jpg|http://file.koreafilm.or.kr/thm/02/00/04/79/tn_DPF015297.jpg|http://file.koreafilm.or.kr/thm/02/00/04/80/tn_DPF015298.jpg|http://file.koreafilm.or.kr/thm/02/00/04/80/tn_DPF015299.jpg|http://file.koreafilm.or.kr/thm/02/00/04/80/tn_DPF015300.jpg|http://file.koreafilm.or.kr/thm/02/00/04/80/tn_DPF015301.jpg|http://file.koreafilm.or.kr/thm/02/00/04/80/tn_DPF015302.jpg|http://file.koreafilm.or.kr/thm/02/00/04/80/tn_DPF015303.jpg|http://file.koreafilm.or.kr/thm/02/00/04/80/tn_DPF015304.jpg|http://file.koreafilm.or.kr/thm/02/00/04/80/tn_DPF015305.jpg|http://file.koreafilm.or.kr/thm/02/00/04/80/tn_DPF015306.jpg|http://file.koreafilm.or.kr/thm/02/00/04/80/tn_DPF015307.jpg|http://file.koreafilm.or.kr/thm/02/00/04/80/tn_DPF015308.jpg|http://file.koreafilm.or.kr/thm/02/00/04/80/tn_DPF015309.jpg|http://file.koreafilm.or.kr/thm/02/00/04/80/tn_DPF015310.jpg|http://file.koreafilm.or.kr/thm/02/00/04/80/tn_DPF015311.jpg|http://file.koreafilm.or.kr/thm/02/00/04/80/tn_DPF015312.jpg|http://file.koreafilm.or.kr/thm/02/00/04/80/tn_DPF015313.jpg|http://file.koreafilm.or.kr/thm/02/00/04/80/tn_DPF015314.jpg|http://file.koreafilm.or.kr/thm/02/00/04/80/tn_DPF015315.jpg|http://file.koreafilm.or.kr/thm/02/00/04/52/tn_DPF013968.jpg",
												                "stlls": "http://file.koreafilm.or.kr/thm/01/copy/00/50/02/tn_DSFT079560.jpg|http://file.koreafilm.or.kr/thm/01/copy/00/50/02/tn_DSFT079561.jpg|http://file.koreafilm.or.kr/thm/01/copy/00/50/02/tn_DSFT079562.jpg|http://file.koreafilm.or.kr/thm/01/copy/00/50/02/tn_DSFT079563.jpg|http://file.koreafilm.or.kr/thm/01/copy/00/50/02/tn_DSFT079564.jpg|http://file.koreafilm.or.kr/thm/01/copy/00/50/02/tn_DSFT079565.jpg|http://file.koreafilm.or.kr/thm/01/copy/00/50/02/tn_DSFT079566.jpg|http://file.koreafilm.or.kr/thm/01/copy/00/50/02/tn_DSFT079567.jpg|http://file.koreafilm.or.kr/thm/01/copy/00/50/02/tn_DSFT079568.jpg|http://file.koreafilm.or.kr/thm/01/copy/00/50/02/tn_DSFT079569.jpg",
												                "staffs": {
												                  "staff": [
												                    {
												                      "staffNm": "스티븐 스필버그",
												                      "staffEnNm": "Steven Spielberg",
												                      "staffRoleGroup": "감독",
												                      "staffRole": "",
												                      "staffEtc": "",
												                      "staffId": "00048320"
												                    },
												                    {
												                      "staffNm": "어니 클라인",
												                      "staffEnNm": "",
												                      "staffRoleGroup": "원작",
												                      "staffRole": "",
												                      "staffEtc": "",
												                      "staffId": ""
												                    },
												                    {
												                      "staffNm": "어니 클라인",
												                      "staffEnNm": "",
												                      "staffRoleGroup": "각본",
												                      "staffRole": "",
												                      "staffEtc": "",
												                      "staffId": ""
												                    },
												                    {
												                      "staffNm": "자크 펜",
												                      "staffEnNm": "Zak Penn",
												                      "staffRoleGroup": "각본",
												                      "staffRole": "",
												                      "staffEtc": "",
												                      "staffId": "00124985"
												                    },
												                    {
												                      "staffNm": "마크 라이런스",
												                      "staffEnNm": "Mark Rylance",
												                      "staffRoleGroup": "출연",
												                      "staffRole": "제임스 도노반 할리데이 / 아노락",
												                      "staffEtc": "",
												                      "staffId": "00100201"
												                    },
												                    {
												                      "staffNm": "사이먼 페그",
												                      "staffEnNm": "Simon Pegg",
												                      "staffRoleGroup": "출연",
												                      "staffRole": "오르젠 모로우 / Og",
												                      "staffEtc": "",
												                      "staffId": "00116614"
												                    },
												                    {
												                      "staffNm": "올리비아 쿡",
												                      "staffEnNm": "Olivia Cooke",
												                      "staffRoleGroup": "출연",
												                      "staffRole": "사만다 에벨린 쿡 / 아르테미스",
												                      "staffEtc": "",
												                      "staffId": "00185942"
												                    },
												                    {
												                      "staffNm": "타이 쉐리던",
												                      "staffEnNm": "Tye Sheridan",
												                      "staffRoleGroup": "출연",
												                      "staffRole": "웨이드 오웬 와츠 / 파시발",
												                      "staffEtc": "",
												                      "staffId": "00175987"
												                    },
												                    {
												                      "staffNm": "벤 멘델슨",
												                      "staffEnNm": "Ben Mendelsohn",
												                      "staffRoleGroup": "출연",
												                      "staffRole": "놀란 소렌토",
												                      "staffEtc": "",
												                      "staffId": "00057727"
												                    },
												                    {
												                      "staffNm": "T.J. 밀러",
												                      "staffEnNm": "T.J. Miller",
												                      "staffRoleGroup": "출연",
												                      "staffRole": "i-Rok",
												                      "staffEtc": "",
												                      "staffId": "00118553"
												                    },
												                    {
												                      "staffNm": "리나 웨이스",
												                      "staffEnNm": "",
												                      "staffRoleGroup": "출연",
												                      "staffRole": "에이치 / 헬렌",
												                      "staffEtc": "",
												                      "staffId": ""
												                    },
												                    {
												                      "staffNm": "모리사키 윈",
												                      "staffEnNm": "",
												                      "staffRoleGroup": "출연",
												                      "staffRole": "다이토",
												                      "staffEtc": "",
												                      "staffId": ""
												                    },
												                    {
												                      "staffNm": "줄리아 닉슨 솔",
												                      "staffEnNm": "Julia Nickson-Soul",
												                      "staffRoleGroup": "출연",
												                      "staffRole": "JN / 커뮤터",
												                      "staffEtc": "",
												                      "staffId": "00092220"
												                    },
												                    {
												                      "staffNm": "레티티아 라이트",
												                      "staffEnNm": "",
												                      "staffRoleGroup": "출연",
												                      "staffRole": "렙",
												                      "staffEtc": "",
												                      "staffId": ""
												                    },
												                    {
												                      "staffNm": "도날드 드 라인",
												                      "staffEnNm": "Donald De Line",
												                      "staffRoleGroup": "제작자",
												                      "staffRole": "",
												                      "staffEtc": "",
												                      "staffId": "00067825"
												                    },
												                    {
												                      "staffNm": "댄 파라",
												                      "staffEnNm": "Dan Farah",
												                      "staffRoleGroup": "제작자",
												                      "staffRole": "",
												                      "staffEtc": "",
												                      "staffId": "00152928"
												                    },
												                    {
												                      "staffNm": "스티븐 스필버그",
												                      "staffEnNm": "Steven Spielberg",
												                      "staffRoleGroup": "제작자",
												                      "staffRole": "",
												                      "staffEtc": "",
												                      "staffId": "00048320"
												                    },
												                    {
												                      "staffNm": "크리스티 마코스코 크리거",
												                      "staffEnNm": "",
												                      "staffRoleGroup": "제작자",
												                      "staffRole": "",
												                      "staffEtc": "",
												                      "staffId": ""
												                    },
												                    {
												                      "staffNm": "브루스 버그만",
												                      "staffEnNm": "Bruce Berman",
												                      "staffRoleGroup": "기획",
												                      "staffRole": "",
												                      "staffEtc": "",
												                      "staffId": "00059814"
												                    },
												                    {
												                      "staffNm": "다니엘 루피",
												                      "staffEnNm": "Daniel Lupi",
												                      "staffRoleGroup": "기획",
												                      "staffRole": "",
												                      "staffEtc": "",
												                      "staffId": "00064794"
												                    },
												                    {
												                      "staffNm": "크리스 드 파리아",
												                      "staffEnNm": "Chris De Faria",
												                      "staffRoleGroup": "기획",
												                      "staffRole": "",
												                      "staffEtc": "",
												                      "staffId": "00062186"
												                    },
												                    {
												                      "staffNm": "야누스 카민스키",
												                      "staffEnNm": "Janusz Kaminski",
												                      "staffRoleGroup": "촬영",
												                      "staffRole": "",
												                      "staffEtc": "",
												                      "staffId": "00086728"
												                    },
												                    {
												                      "staffNm": "알란 실버스트리",
												                      "staffEnNm": "Alan Silvestri",
												                      "staffRoleGroup": "음악",
												                      "staffRole": "",
												                      "staffEtc": "",
												                      "staffId": "00053080"
												                    },
												                    {
												                      "staffNm": "애덤 스톡하우젠",
												                      "staffEnNm": "ADAM STOCKHAUSEN",
												                      "staffRoleGroup": "미술",
												                      "staffRole": "",
												                      "staffEtc": "",
												                      "staffId": "00152498"
												                    }
												                  ]
												                },
												                "vods": {
												                  "vod": [
												                    {
												                      "vodClass": "",
												                      "vodUrl": ""
												                    }
												                  ]
												                },
												                "openThtr": "",
												                "stat": [
												                  {
												                    "screenArea": "",
												                    "screenCnt": "",
												                    "salesAcc": "",
												                    "audiAcc": "",
												                    "statSouce": "",
												                    "statDate": ""
												                  }
												                ],
												                "screenArea": "",
												                "screenCnt": "",
												                "salesAcc": "",
												                "audiAcc": "",
												                "statSouce": "",
												                "statDate": "",
												                "themeSong": "",
												                "soundtrack": "",
												                "fLocation": "",
												                "Awards1": "",
												                "Awards2": "",
												                "regDate": "20180327",
												                "modDate": "20190320",
												                "Codes": {
												                  "Code": [
												                    {
												                      "CodeNm": "",
												                      "CodeNo": ""
												                    }
												                  ]
												                },
												                "CommCodes": {
												                  "CommCode": [
												                    {
												                      "CodeNm": "",
												                      "CodeNo": ""
												                    }
												                  ]
												                },
												                "ALIAS": "srcKmdb2"
												              },
												              {
												                "DOCID": "F40935",
												                "movieId": "F",
												                "movieSeq": "40935",
												                "title": " 삼손",
												                "titleEng": "Samson",
												                "titleOrg": "Samson",
												                "titleEtc": "삼손^Samson^삼손,샘손^Samson",
												                "prodYear": "2018",
												                "directors": {
												                  "director": [
												                    {
												                      "directorNm": "브루스 맥도널드",
												                      "directorEnNm": "",
												                      "directorId": ""
												                    }
												                  ]
												                },
												                "actors": {
												                  "actor": [
												                    {
												                      "actorNm": "타일러 제임스",
												                      "actorEnNm": "Taylor James",
												                      "actorId": "00203605"
												                    },
												                    {
												                      "actorNm": "잭슨 라스본",
												                      "actorEnNm": "Jackson Rathbone",
												                      "actorId": "00145782"
												                    },
												                    {
												                      "actorNm": "빌리 제인",
												                      "actorEnNm": "Billy Zane",
												                      "actorId": "00049081"
												                    },
												                    {
												                      "actorNm": "룻거 하우어",
												                      "actorEnNm": "Rutger Hauer",
												                      "actorId": "00049103"
												                    },
												                    {
												                      "actorNm": "케이틀린 리히",
												                      "actorEnNm": "",
												                      "actorId": ""
												                    }
												                  ]
												                },
												                "nation": "미국",
												                "company": "Pure Flix Productions",
												                "plots": {
												                  "plot": [
												                    {
												                      "plotLang": "한국어",
												                      "plotText": "블레셋인들의 지배 속 핍박 받던 이스라엘 민족. 신의 선택을 받아 맨손으로 사자를 잡는 괴력을 타고 난 '삼손'은 왕의 시녀를 사랑한 죄로 결국 사랑과 가족을 모두 잃고 만다. 분노한 '삼손'은 신의 이름으로 악을 처단, 영웅으로 떠오르는데...'삼손'을 두려워한 왕은 그의 힘의 원천인 머리카락을 빼앗기 위해 여인 '데릴라'를 이용, '삼손'을 유혹하기 시작한다. 성경 속 인류 최초의 영웅 '삼손'은 신의 마지막 구원을 받을 수 있을 것인가!"
												                    }
												                  ]
												                },
												                "runtime": "109",
												                "rating": "12세관람가",
												                "genre": "액션,드라마,종교",
												                "kmdbUrl": "https://www.kmdb.or.kr/db/kor/detail/movie/F/40935",
												                "type": "극영화",
												                "use": "극장용",
												                "episodes": "",
												                "ratedYn": "Y",
												                "repRatDate": "20180314",
												                "repRlsDate": "20180419",
												                "ratings": {
												                  "rating": [
												                    {
												                      "ratingMain": "Y",
												                      "ratingDate": "20180314",
												                      "ratingNo": "2018-MF00476",
												                      "ratingGrade": "12세관람가",
												                      "releaseDate": "20180419",
												                      "runtime": "109"
												                    }
												                  ]
												                },
												                "keywords": "삼손,데릴라,성경,이스라엘,블레셋",
												                "posters": "",
												                "stlls": "",
												                "staffs": {
												                  "staff": [
												                    {
												                      "staffNm": "브루스 맥도널드",
												                      "staffEnNm": "",
												                      "staffRoleGroup": "감독",
												                      "staffRole": "",
												                      "staffEtc": "",
												                      "staffId": ""
												                    },
												                    {
												                      "staffNm": "타일러 제임스",
												                      "staffEnNm": "Taylor James",
												                      "staffRoleGroup": "출연",
												                      "staffRole": "삼손",
												                      "staffEtc": "",
												                      "staffId": "00203605"
												                    },
												                    {
												                      "staffNm": "잭슨 라스본",
												                      "staffEnNm": "Jackson Rathbone",
												                      "staffRoleGroup": "출연",
												                      "staffRole": "랄라",
												                      "staffEtc": "",
												                      "staffId": "00145782"
												                    },
												                    {
												                      "staffNm": "빌리 제인",
												                      "staffEnNm": "Billy Zane",
												                      "staffRoleGroup": "출연",
												                      "staffRole": "발렉 왕",
												                      "staffEtc": "",
												                      "staffId": "00049081"
												                    },
												                    {
												                      "staffNm": "룻거 하우어",
												                      "staffEnNm": "Rutger Hauer",
												                      "staffRoleGroup": "출연",
												                      "staffRole": "마노아",
												                      "staffEtc": "",
												                      "staffId": "00049103"
												                    },
												                    {
												                      "staffNm": "케이틀린 리히",
												                      "staffEnNm": "",
												                      "staffRoleGroup": "출연",
												                      "staffRole": "데릴라",
												                      "staffEtc": "",
												                      "staffId": ""
												                    }
												                  ]
												                },
												                "vods": {
												                  "vod": [
												                    {
												                      "vodClass": "",
												                      "vodUrl": ""
												                    }
												                  ]
												                },
												                "openThtr": "",
												                "stat": [
												                  {
												                    "screenArea": "",
												                    "screenCnt": "",
												                    "salesAcc": "",
												                    "audiAcc": "",
												                    "statSouce": "",
												                    "statDate": ""
												                  }
												                ],
												                "screenArea": "",
												                "screenCnt": "",
												                "salesAcc": "",
												                "audiAcc": "",
												                "statSouce": "",
												                "statDate": "",
												                "themeSong": "",
												                "soundtrack": "",
												                "fLocation": "",
												                "Awards1": "",
												                "Awards2": "",
												                "regDate": "20180327",
												                "modDate": "20180430",
												                "Codes": {
												                  "Code": [
												                    {
												                      "CodeNm": "",
												                      "CodeNo": ""
												                    }
												                  ]
												                },
												                "CommCodes": {
												                  "CommCode": [
												                    {
												                      "CodeNm": "",
												                      "CodeNo": ""
												                    }
												                  ]
												                },
												                "ALIAS": "srcKmdb2"
												              },
												              {
												                "DOCID": "F40959",
												                "movieId": "F",
												                "movieSeq": "40959",
												                "title": " 선셋 파크",
												                "titleEng": "Sunset Park",
												                "titleOrg": "Sunset Park",
												                "titleEtc": "선셋파크^선셋 파크^Sunset Park^썬셋파크,선셋공원,썬셋공원^Sunset Park",
												                "prodYear": "2017",
												                "directors": {
												                  "director": [
												                    {
												                      "directorNm": "제이슨 사레이",
												                      "directorEnNm": "Jason Sarrey",
												                      "directorId": "00203615"
												                    }
												                  ]
												                },
												                "actors": {
												                  "actor": [
												                    {
												                      "actorNm": "마이클 트레비노",
												                      "actorEnNm": "Michael Trevino",
												                      "actorId": "00170856"
												                    },
												                    {
												                      "actorNm": "로버트 미아노",
												                      "actorEnNm": "Robert Miano",
												                      "actorId": "00112766"
												                    },
												                    {
												                      "actorNm": "제이미 최",
												                      "actorEnNm": "",
												                      "actorId": ""
												                    },
												                    {
												                      "actorNm": "마이클 T. 웨이스",
												                      "actorEnNm": "Michael T. Weiss",
												                      "actorId": "00102956"
												                    }
												                  ]
												                },
												                "nation": "미국",
												                "company": "Ring The Bell",
												                "plots": {
												                  "plot": [
												                    {
												                      "plotLang": "한국어",
												                      "plotText": "도박 빚을 남기고 집을 나간 아버지 ‘드웨인’ 때문에 할아버지 손에서 자란 ‘지노’는 학교에서도 놀림을 당하다 친구들과 싸우고 정학을 당하기도 한다. 한때 복싱 챔피언이었던 할아버지는 지노의 싸움꾼적 기질을 긍정적인 방향으로 돌리기 위해 그를 체육관에 보내 정식으로 복싱을 배우게 한다. 이후 성인이 되어 전도유망한 아마추어 복싱 선수가 된 지노는 자신들이 지노의 매니저를 맡는 대신 빚을 탕감해 주겠다는 폭력 조직의 제안을 거절한다. 그러던 중, 복싱과 아르바이트 병행하며 빠듯하게 생활하고 있던 지노는 어둠의 세계에서 벌어지는 내기 시합에 도전해 보자는 친구의 제안을 받게 되는데…타고난 싸움꾼의 거침 없는 주먹! 그의 파이터 본능이 깨어난다!"
												                    }
												                  ]
												                },
												                "runtime": "89",
												                "rating": "18세관람가(청소년관람불가)",
												                "genre": "액션,범죄,드라마",
												                "kmdbUrl": "https://www.kmdb.or.kr/db/kor/detail/movie/F/40959",
												                "type": "극영화",
												                "use": "극장용",
												                "episodes": "",
												                "ratedYn": "Y",
												                "repRatDate": "20180319",
												                "repRlsDate": "20180329",
												                "ratings": {
												                  "rating": [
												                    {
												                      "ratingMain": "Y",
												                      "ratingDate": "20180319",
												                      "ratingNo": "2018-MF00514",
												                      "ratingGrade": "18세관람가(청소년관람불가)",
												                      "releaseDate": "20180329",
												                      "runtime": "89"
												                    }
												                  ]
												                },
												                "keywords": "불량소년,전직복서,할아버지,복싱선수,파이터,내기,도박빚,불법도박,파이트머니",
												                "posters": "",
												                "stlls": "",
												                "staffs": {
												                  "staff": [
												                    {
												                      "staffNm": "제이슨 사레이",
												                      "staffEnNm": "Jason Sarrey",
												                      "staffRoleGroup": "감독",
												                      "staffRole": "",
												                      "staffEtc": "",
												                      "staffId": "00203615"
												                    },
												                    {
												                      "staffNm": "제이슨 사레이",
												                      "staffEnNm": "Jason Sarrey",
												                      "staffRoleGroup": "각본",
												                      "staffRole": "",
												                      "staffEtc": "",
												                      "staffId": "00203615"
												                    },
												                    {
												                      "staffNm": "마이클 트레비노",
												                      "staffEnNm": "Michael Trevino",
												                      "staffRoleGroup": "출연",
												                      "staffRole": "지노",
												                      "staffEtc": "",
												                      "staffId": "00170856"
												                    },
												                    {
												                      "staffNm": "로버트 미아노",
												                      "staffEnNm": "Robert Miano",
												                      "staffRoleGroup": "출연",
												                      "staffRole": "할아버지",
												                      "staffEtc": "",
												                      "staffId": "00112766"
												                    },
												                    {
												                      "staffNm": "제이미 최",
												                      "staffEnNm": "",
												                      "staffRoleGroup": "출연",
												                      "staffRole": "제시카",
												                      "staffEtc": "",
												                      "staffId": ""
												                    },
												                    {
												                      "staffNm": "마이클 T. 웨이스",
												                      "staffEnNm": "Michael T. Weiss",
												                      "staffRoleGroup": "출연",
												                      "staffRole": "드웨인",
												                      "staffEtc": "",
												                      "staffId": "00102956"
												                    },
												                    {
												                      "staffNm": "빈스 퀴폰",
												                      "staffEnNm": "",
												                      "staffRoleGroup": "프로듀서",
												                      "staffRole": "",
												                      "staffEtc": "",
												                      "staffId": ""
												                    },
												                    {
												                      "staffNm": "제이슨 사레이",
												                      "staffEnNm": "Jason Sarrey",
												                      "staffRoleGroup": "프로듀서",
												                      "staffRole": "",
												                      "staffEtc": "",
												                      "staffId": "00203615"
												                    },
												                    {
												                      "staffNm": "아릭 야콥슨",
												                      "staffEnNm": "",
												                      "staffRoleGroup": "촬영",
												                      "staffRole": "",
												                      "staffEtc": "",
												                      "staffId": ""
												                    }
												                  ]
												                },
												                "vods": {
												                  "vod": [
												                    {
												                      "vodClass": "",
												                      "vodUrl": ""
												                    }
												                  ]
												                },
												                "openThtr": "",
												                "stat": [
												                  {
												                    "screenArea": "",
												                    "screenCnt": "",
												                    "salesAcc": "",
												                    "audiAcc": "",
												                    "statSouce": "",
												                    "statDate": ""
												                  }
												                ],
												                "screenArea": "",
												                "screenCnt": "",
												                "salesAcc": "",
												                "audiAcc": "",
												                "statSouce": "",
												                "statDate": "",
												                "themeSong": "",
												                "soundtrack": "",
												                "fLocation": "",
												                "Awards1": "",
												                "Awards2": "",
												                "regDate": "20180327",
												                "modDate": "20180327",
												                "Codes": {
												                  "Code": [
												                    {
												                      "CodeNm": "",
												                      "CodeNo": ""
												                    }
												                  ]
												                },
												                "CommCodes": {
												                  "CommCode": [
												                    {
												                      "CodeNm": "",
												                      "CodeNo": ""
												                    }
												                  ]
												                },
												                "ALIAS": "srcKmdb2"
												              },
												              {
												                "DOCID": "F40950",
												                "movieId": "F",
												                "movieSeq": "40950",
												                "title": " 헤리티지 오브 러브",
												                "titleEng": "THE HERITAGE OF LOVE",
												                "titleOrg": "Герой",
												                "titleEtc": "헤리티지오브러브^헤리티지 오브 러브^Герой^사랑의유산, 더헤리티지오브러브^THE HERITAGE OF LOVE",
												                "prodYear": "2015",
												                "directors": {
												                  "director": [
												                    {
												                      "directorNm": "유리 바실리에프",
												                      "directorEnNm": "",
												                      "directorId": ""
												                    }
												                  ]
												                },
												                "actors": {
												                  "actor": [
												                    {
												                      "actorNm": "디마 빌란",
												                      "actorEnNm": "",
												                      "actorId": ""
												                    },
												                    {
												                      "actorNm": "스베트라나 이바노바",
												                      "actorEnNm": "Svetlana Ivanova",
												                      "actorId": "00171309"
												                    },
												                    {
												                      "actorNm": "알렉산드르 아다바시얀",
												                      "actorEnNm": "",
												                      "actorId": ""
												                    },
												                    {
												                      "actorNm": "알렉산드르 발루예프",
												                      "actorEnNm": "",
												                      "actorId": ""
												                    },
												                    {
												                      "actorNm": "마라트 바샤로프",
												                      "actorEnNm": "",
												                      "actorId": ""
												                    }
												                  ]
												                },
												                "nation": "러시아",
												                "company": "Artbox",
												                "plots": {
												                  "plot": [
												                    {
												                      "plotLang": "한국어",
												                      "plotText": "제정 러시아 말, 두 연인의 사랑을 그린 로맨스 영화"
												                    },
												                    {
												                      "plotLang": "한국어",
												                      "plotText": "“우리 다시 만날 수 있을까요?” 자동차 매매를 위해 파리로 떠난 정비사 '안드레이'낭만의 도시 파리에서 우연히 젊은 여인을 만나게 되고,낯설지 않은 미소를 띤 그녀에게 눈을 떼지 못한다.그날 오후, 공원묘지를 찾게 된 '안드레이'는 '베라'라는 이름의 비석을 발견하고,비석 속 새겨진 얼굴이 우연히 만났던 젊은 여인임에 놀라움을 금치 못하는데...마치 누군가를 깊이 사랑했던 듯 알 수 없는 이 감정!그녀는 누구일까? 세기를 뛰어넘은 운명적 로맨스가 시작된다!"
												                    }
												                  ]
												                },
												                "runtime": "79",
												                "rating": "12세관람가",
												                "genre": "멜로드라마,액션,시대극/사극",
												                "kmdbUrl": "https://www.kmdb.or.kr/db/kor/detail/movie/F/40950",
												                "type": "극영화",
												                "use": "극장용",
												                "episodes": "",
												                "ratedYn": "Y",
												                "repRatDate": "20180319",
												                "repRlsDate": "20180719",
												                "ratings": {
												                  "rating": [
												                    {
												                      "ratingMain": "Y",
												                      "ratingDate": "20180319",
												                      "ratingNo": "2018-MF00505",
												                      "ratingGrade": "12세관람가",
												                      "releaseDate": "20180719",
												                      "runtime": "79"
												                    }
												                  ]
												                },
												                "keywords": "제정러시아,연인,군인,러시아혁명",
												                "posters": "http://file.koreafilm.or.kr/thm/02/00/04/59/tn_DPF014308.jpg|http://file.koreafilm.or.kr/thm/02/00/04/59/tn_DPF014310.jpg|http://file.koreafilm.or.kr/thm/02/00/04/59/tn_DPF014309.jpg",
												                "stlls": "http://file.koreafilm.or.kr/thm/01/copy/00/48/88/tn_DSFT075766.jpg|http://file.koreafilm.or.kr/thm/01/copy/00/48/88/tn_DSFT075767.jpg|http://file.koreafilm.or.kr/thm/01/copy/00/48/88/tn_DSFT075768.jpg|http://file.koreafilm.or.kr/thm/01/copy/00/48/88/tn_DSFT075769.jpg|http://file.koreafilm.or.kr/thm/01/copy/00/48/88/tn_DSFT075770.jpg|http://file.koreafilm.or.kr/thm/01/copy/00/48/88/tn_DSFT075771.jpg|http://file.koreafilm.or.kr/thm/01/copy/00/48/88/tn_DSFT075772.jpg|http://file.koreafilm.or.kr/thm/01/copy/00/48/88/tn_DSFT075773.jpg|http://file.koreafilm.or.kr/thm/01/copy/00/48/88/tn_DSFT075774.jpg|http://file.koreafilm.or.kr/thm/01/copy/00/48/88/tn_DSFT075775.jpg",
												                "staffs": {
												                  "staff": [
												                    {
												                      "staffNm": "유리 바실리에프",
												                      "staffEnNm": "",
												                      "staffRoleGroup": "감독",
												                      "staffRole": "",
												                      "staffEtc": "",
												                      "staffId": ""
												                    },
												                    {
												                      "staffNm": "나탈리아 도로쉬케비히",
												                      "staffEnNm": "",
												                      "staffRoleGroup": "각본",
												                      "staffRole": "",
												                      "staffEtc": "",
												                      "staffId": ""
												                    },
												                    {
												                      "staffNm": "올가 포고디나-쿠즈미나",
												                      "staffEnNm": "",
												                      "staffRoleGroup": "각본",
												                      "staffRole": "",
												                      "staffEtc": "",
												                      "staffId": ""
												                    },
												                    {
												                      "staffNm": "디마 빌란",
												                      "staffEnNm": "",
												                      "staffRoleGroup": "출연",
												                      "staffRole": "안드레이 쿨리코프 / 안드레이 돌마토프",
												                      "staffEtc": "",
												                      "staffId": ""
												                    },
												                    {
												                      "staffNm": "스베트라나 이바노바",
												                      "staffEnNm": "Svetlana Ivanova",
												                      "staffRoleGroup": "출연",
												                      "staffRole": "베라",
												                      "staffEtc": "",
												                      "staffId": "00171309"
												                    },
												                    {
												                      "staffNm": "알렉산드르 아다바시얀",
												                      "staffEnNm": "",
												                      "staffRoleGroup": "출연",
												                      "staffRole": "",
												                      "staffEtc": "",
												                      "staffId": ""
												                    },
												                    {
												                      "staffNm": "알렉산드르 발루예프",
												                      "staffEnNm": "",
												                      "staffRoleGroup": "출연",
												                      "staffRole": "",
												                      "staffEtc": "",
												                      "staffId": ""
												                    },
												                    {
												                      "staffNm": "마라트 바샤로프",
												                      "staffEnNm": "",
												                      "staffRoleGroup": "출연",
												                      "staffRole": "",
												                      "staffEtc": "",
												                      "staffId": ""
												                    },
												                    {
												                      "staffNm": "라무나스 그레이시우스",
												                      "staffEnNm": "",
												                      "staffRoleGroup": "촬영",
												                      "staffRole": "",
												                      "staffEtc": "",
												                      "staffId": ""
												                    },
												                    {
												                      "staffNm": "에두아르드 아르테메프",
												                      "staffEnNm": "",
												                      "staffRoleGroup": "음악",
												                      "staffRole": "",
												                      "staffEtc": "",
												                      "staffId": ""
												                    }
												                  ]
												                },
												                "vods": {
												                  "vod": [
												                    {
												                      "vodClass": "예고편(메인예고편)",
												                      "vodUrl": "https://www.kmdb.or.kr/db/kor/detail/movie/F/40950/own/videoData"
												                    }
												                  ]
												                },
												                "openThtr": "",
												                "stat": [
												                  {
												                    "screenArea": "",
												                    "screenCnt": "",
												                    "salesAcc": "",
												                    "audiAcc": "",
												                    "statSouce": "",
												                    "statDate": ""
												                  }
												                ],
												                "screenArea": "",
												                "screenCnt": "",
												                "salesAcc": "",
												                "audiAcc": "",
												                "statSouce": "",
												                "statDate": "",
												                "themeSong": "",
												                "soundtrack": "",
												                "fLocation": "",
												                "Awards1": "",
												                "Awards2": "",
												                "regDate": "20180327",
												                "modDate": "20211122",
												                "Codes": {
												                  "Code": [
												                    {
												                      "CodeNm": "FIMS",
												                      "CodeNo": "20185949"
												                    }
												                  ]
												                },
												                "CommCodes": {
												                  "CommCode": [
												                    {
												                      "CodeNm": "FIMS",
												                      "CodeNo": "20185949"
												                    }
												                  ]
												                },
												                "ALIAS": "srcKmdb2"
												              },
												              {
												                "DOCID": "F41035",
												                "movieId": "F",
												                "movieSeq": "41035",
												                "title": " 블루라인",
												                "titleEng": "Blue Line",
												                "titleOrg": "Blue Line",
												                "titleEtc": "블루라인^Blue Line^Blue Line",
												                "prodYear": "2016",
												                "directors": {
												                  "director": [
												                    {
												                      "directorNm": "제이콥 쿠니",
												                      "directorEnNm": "Jacob Cooney",
												                      "directorId": "00203675"
												                    }
												                  ]
												                },
												                "actors": {
												                  "actor": [
												                    {
												                      "actorNm": "톰 시즈모어",
												                      "actorEnNm": "Tom Sizemore",
												                      "actorId": "00077208"
												                    },
												                    {
												                      "actorNm": "조단 러드",
												                      "actorEnNm": "Jordan Ladd",
												                      "actorId": "00091280"
												                    },
												                    {
												                      "actorNm": "니키 무어",
												                      "actorEnNm": "",
												                      "actorId": ""
												                    },
												                    {
												                      "actorNm": "톰 데누치",
												                      "actorEnNm": "",
												                      "actorId": ""
												                    },
												                    {
												                      "actorNm": "케빈 내쉬",
												                      "actorEnNm": "Kevin Nash",
												                      "actorId": "00203676"
												                    }
												                  ]
												                },
												                "nation": "미국",
												                "company": "Lions Gate Entertainment",
												                "plots": {
												                  "plot": [
												                    {
												                      "plotLang": "한국어",
												                      "plotText": "미국 한 작은 마을에서 연달아 강도 사건이 일어난다. 범인은 마스크와 음성변조기를 장착한 2인조. 뉴욕에서 전근한 브로자 형사는 수사 중 범인의 정체가 여자임을 알아채지만, 그것이 자신과 연애하고 있는 스트리퍼 니콜임은 알지 못한다. 니콜은 친구 린제이와 함께 치밀한 계획을 세워 린제이의 남편 세스 월터스가 수송하는 180만 달러를 훔치지만 둘은 깊은 불화로 싸우게 되는데…"
												                    }
												                  ]
												                },
												                "runtime": "72",
												                "rating": "15세관람가",
												                "genre": "액션,스릴러",
												                "kmdbUrl": "https://www.kmdb.or.kr/db/kor/detail/movie/F/41035",
												                "type": "극영화",
												                "use": "극장용",
												                "episodes": "",
												                "ratedYn": "Y",
												                "repRatDate": "20180212",
												                "repRlsDate": "",
												                "ratings": {
												                  "rating": [
												                    {
												                      "ratingMain": "Y",
												                      "ratingDate": "20180212",
												                      "ratingNo": "2018-MF00292",
												                      "ratingGrade": "15세관람가",
												                      "releaseDate": "",
												                      "runtime": "72"
												                    }
												                  ]
												                },
												                "keywords": "현금수송차,강도단,2인조강도,담당형사,여자친구",
												                "posters": "",
												                "stlls": "",
												                "staffs": {
												                  "staff": [
												                    {
												                      "staffNm": "제이콥 쿠니",
												                      "staffEnNm": "Jacob Cooney",
												                      "staffRoleGroup": "감독",
												                      "staffRole": "",
												                      "staffEtc": "",
												                      "staffId": "00203675"
												                    },
												                    {
												                      "staffNm": "제이콥 쿠니",
												                      "staffEnNm": "Jacob Cooney",
												                      "staffRoleGroup": "각본",
												                      "staffRole": "",
												                      "staffEtc": "",
												                      "staffId": "00203675"
												                    },
												                    {
												                      "staffNm": "조지 손더스",
												                      "staffEnNm": "George Saunders",
												                      "staffRoleGroup": "각본",
												                      "staffRole": "",
												                      "staffEtc": "",
												                      "staffId": "00073559"
												                    },
												                    {
												                      "staffNm": "톰 시즈모어",
												                      "staffEnNm": "Tom Sizemore",
												                      "staffRoleGroup": "출연",
												                      "staffRole": "브로자 형사",
												                      "staffEtc": "",
												                      "staffId": "00077208"
												                    },
												                    {
												                      "staffNm": "조단 러드",
												                      "staffEnNm": "Jordan Ladd",
												                      "staffRoleGroup": "출연",
												                      "staffRole": "린제이 월터스",
												                      "staffEtc": "",
												                      "staffId": "00091280"
												                    },
												                    {
												                      "staffNm": "니키 무어",
												                      "staffEnNm": "",
												                      "staffRoleGroup": "출연",
												                      "staffRole": "니콜",
												                      "staffEtc": "",
												                      "staffId": ""
												                    },
												                    {
												                      "staffNm": "톰 데누치",
												                      "staffEnNm": "",
												                      "staffRoleGroup": "출연",
												                      "staffRole": "세스 월터스",
												                      "staffEtc": "",
												                      "staffId": ""
												                    },
												                    {
												                      "staffNm": "케빈 내쉬",
												                      "staffEnNm": "Kevin Nash",
												                      "staffRoleGroup": "출연",
												                      "staffRole": "시스코",
												                      "staffEtc": "",
												                      "staffId": "00203676"
												                    },
												                    {
												                      "staffNm": "데이빗 기어",
												                      "staffEnNm": "",
												                      "staffRoleGroup": "제작자",
												                      "staffRole": "",
												                      "staffEtc": "",
												                      "staffId": ""
												                    },
												                    {
												                      "staffNm": "딤 루이스",
												                      "staffEnNm": "",
												                      "staffRoleGroup": "프로듀서",
												                      "staffRole": "",
												                      "staffEtc": "",
												                      "staffId": ""
												                    }
												                  ]
												                },
												                "vods": {
												                  "vod": [
												                    {
												                      "vodClass": "",
												                      "vodUrl": ""
												                    }
												                  ]
												                },
												                "openThtr": "",
												                "stat": [
												                  {
												                    "screenArea": "",
												                    "screenCnt": "",
												                    "salesAcc": "",
												                    "audiAcc": "",
												                    "statSouce": "",
												                    "statDate": ""
												                  }
												                ],
												                "screenArea": "",
												                "screenCnt": "",
												                "salesAcc": "",
												                "audiAcc": "",
												                "statSouce": "",
												                "statDate": "",
												                "themeSong": "",
												                "soundtrack": "",
												                "fLocation": "",
												                "Awards1": "",
												                "Awards2": "",
												                "regDate": "20180403",
												                "modDate": "20180403",
												                "Codes": {
												                  "Code": [
												                    {
												                      "CodeNm": "",
												                      "CodeNo": ""
												                    }
												                  ]
												                },
												                "CommCodes": {
												                  "CommCode": [
												                    {
												                      "CodeNm": "",
												                      "CodeNo": ""
												                    }
												                  ]
												                },
												                "ALIAS": "srcKmdb2"
												              },
												              {
												                "DOCID": "F40900",
												                "movieId": "F",
												                "movieSeq": "40900",
												                "title": " 무법자",
												                "titleEng": "Prey for Death (A good day to die)",
												                "titleOrg": "Prey for Death (A good day to die)",
												                "titleEtc": "무법자^Prey for Death (A good day to die)^Prey for Death (A good day to die)",
												                "prodYear": "2015",
												                "directors": {
												                  "director": [
												                    {
												                      "directorNm": "르네 페르즈",
												                      "directorEnNm": "Rene Perez",
												                      "directorId": "00203585"
												                    }
												                  ]
												                },
												                "actors": {
												                  "actor": [
												                    {
												                      "actorNm": "코너 츄리니어",
												                      "actorEnNm": "Connor Trinneer",
												                      "actorId": "00203586"
												                    },
												                    {
												                      "actorNm": "로버트 코로럭",
												                      "actorEnNm": "",
												                      "actorId": ""
												                    },
												                    {
												                      "actorNm": "나디아 랑프랑코니",
												                      "actorEnNm": "",
												                      "actorId": ""
												                    },
												                    {
												                      "actorNm": "존 웰쉬",
												                      "actorEnNm": "",
												                      "actorId": ""
												                    }
												                  ]
												                },
												                "nation": "미국",
												                "company": "iDiC Entertainment",
												                "plots": {
												                  "plot": [
												                    {
												                      "plotLang": "한국어",
												                      "plotText": "인간 사냥꾼 응징에 나선 서부시대의 무법자를 그린 영화"
												                    }
												                  ]
												                },
												                "runtime": "80",
												                "rating": "15세관람가",
												                "genre": "서부,액션",
												                "kmdbUrl": "https://www.kmdb.or.kr/db/kor/detail/movie/F/40900",
												                "type": "극영화",
												                "use": "극장용",
												                "episodes": "",
												                "ratedYn": "",
												                "repRatDate": "20180305",
												                "repRlsDate": "20180417",
												                "ratings": {
												                  "rating": [
												                    {
												                      "ratingMain": "Y",
												                      "ratingDate": "20180305",
												                      "ratingNo": "2018-MF00391",
												                      "ratingGrade": "15세관람가",
												                      "releaseDate": "20180417",
												                      "runtime": "80"
												                    }
												                  ]
												                },
												                "keywords": "인간사냥꾼,무법자,서부영화,서부극",
												                "posters": "",
												                "stlls": "",
												                "staffs": {
												                  "staff": [
												                    {
												                      "staffNm": "르네 페르즈",
												                      "staffEnNm": "Rene Perez",
												                      "staffRoleGroup": "감독",
												                      "staffRole": "",
												                      "staffEtc": "",
												                      "staffId": "00203585"
												                    },
												                    {
												                      "staffNm": "코너 츄리니어",
												                      "staffEnNm": "Connor Trinneer",
												                      "staffRoleGroup": "출연",
												                      "staffRole": "",
												                      "staffEtc": "",
												                      "staffId": "00203586"
												                    },
												                    {
												                      "staffNm": "로버트 코로럭",
												                      "staffEnNm": "",
												                      "staffRoleGroup": "출연",
												                      "staffRole": "",
												                      "staffEtc": "",
												                      "staffId": ""
												                    },
												                    {
												                      "staffNm": "나디아 랑프랑코니",
												                      "staffEnNm": "",
												                      "staffRoleGroup": "출연",
												                      "staffRole": "",
												                      "staffEtc": "",
												                      "staffId": ""
												                    },
												                    {
												                      "staffNm": "존 웰쉬",
												                      "staffEnNm": "",
												                      "staffRoleGroup": "출연",
												                      "staffRole": "",
												                      "staffEtc": "",
												                      "staffId": ""
												                    }
												                  ]
												                },
												                "vods": {
												                  "vod": [
												                    {
												                      "vodClass": "",
												                      "vodUrl": ""
												                    }
												                  ]
												                },
												                "openThtr": "",
												                "stat": [
												                  {
												                    "screenArea": "",
												                    "screenCnt": "",
												                    "salesAcc": "",
												                    "audiAcc": "",
												                    "statSouce": "",
												                    "statDate": ""
												                  }
												                ],
												                "screenArea": "",
												                "screenCnt": "",
												                "salesAcc": "",
												                "audiAcc": "",
												                "statSouce": "",
												                "statDate": "",
												                "themeSong": "",
												                "soundtrack": "",
												                "fLocation": "",
												                "Awards1": "",
												                "Awards2": "",
												                "regDate": "20180326",
												                "modDate": "20211122",
												                "Codes": {
												                  "Code": [
												                    {
												                      "CodeNm": "FIMS",
												                      "CodeNo": "20181795"
												                    }
												                  ]
												                },
												                "CommCodes": {
												                  "CommCode": [
												                    {
												                      "CodeNm": "FIMS",
												                      "CodeNo": "20181795"
												                    }
												                  ]
												                },
												                "ALIAS": "srcKmdb2"
												              },
												              {
												                "DOCID": "F41038",
												                "movieId": "F",
												                "movieSeq": "41038",
												                "title": " 배틀필드 전쟁의 사상자들",
												                "titleEng": "THOUSAND YARD STARE",
												                "titleOrg": "THOUSAND YARD STARE",
												                "titleEtc": "배틀필드전쟁의사상자들^배틀필드 전쟁의 사상자들^THOUSAND YARD STARE^배틀필드 : 전쟁의 사상자들^THOUSAND YARD STARE",
												                "prodYear": "2018",
												                "directors": {
												                  "director": [
												                    {
												                      "directorNm": "아론 컬미",
												                      "directorEnNm": "",
												                      "directorId": ""
												                    }
												                  ]
												                },
												                "actors": {
												                  "actor": [
												                    {
												                      "actorNm": "아담 먼로",
												                      "actorEnNm": "",
												                      "actorId": ""
												                    },
												                    {
												                      "actorNm": "진 페도토프",
												                      "actorEnNm": "",
												                      "actorId": ""
												                    },
												                    {
												                      "actorNm": "커스틴 웬드랜드트",
												                      "actorEnNm": "",
												                      "actorId": ""
												                    },
												                    {
												                      "actorNm": "마이클 닷지",
												                      "actorEnNm": "",
												                      "actorId": ""
												                    }
												                  ]
												                },
												                "nation": "캐나다",
												                "company": "Rambunxious Entertainment",
												                "plots": {
												                  "plot": [
												                    {
												                      "plotLang": "한국어",
												                      "plotText": "롬멜의 전차부대 vs 미군의 첫 교전 카세린 협곡 전투를 목격하라!전쟁 후유증을 앓는 롤란드는 참전기록을 쓰기 시작한다. 1943년, 아프리카 카세린에서 독일과 미군이 첫 번째로 맞붙는다. 독일의 롬멜이 이끄는 전차부대의 공격에 미군은 큰 타격을 입고 전열을 정비하지만 독일군은 파죽지세의 총공격을 감행한다. 롤란드의 부대를 비롯해 미군은 거의 전멸에 가까운 피해를 입는데...역사를 바꾼 전투를 만난다!"
												                    }
												                  ]
												                },
												                "runtime": "91",
												                "rating": "15세관람가",
												                "genre": "전쟁,액션,드라마",
												                "kmdbUrl": "https://www.kmdb.or.kr/db/kor/detail/movie/F/41038",
												                "type": "극영화",
												                "use": "극장용",
												                "episodes": "",
												                "ratedYn": "Y",
												                "repRatDate": "20180214",
												                "repRlsDate": "20180228",
												                "ratings": {
												                  "rating": [
												                    {
												                      "ratingMain": "Y",
												                      "ratingDate": "20180214",
												                      "ratingNo": "2018-MF00296",
												                      "ratingGrade": "15세관람가",
												                      "releaseDate": "20180228",
												                      "runtime": "91"
												                    }
												                  ]
												                },
												                "keywords": "제2차세계대전,튀니지전투,카세린협곡,롬멜장군,기갑부대,미군",
												                "posters": "",
												                "stlls": "",
												                "staffs": {
												                  "staff": [
												                    {
												                      "staffNm": "아론 컬미",
												                      "staffEnNm": "",
												                      "staffRoleGroup": "감독",
												                      "staffRole": "",
												                      "staffEtc": "",
												                      "staffId": ""
												                    },
												                    {
												                      "staffNm": "라이언 햇",
												                      "staffEnNm": "",
												                      "staffRoleGroup": "각본",
												                      "staffRole": "",
												                      "staffEtc": "",
												                      "staffId": ""
												                    },
												                    {
												                      "staffNm": "케빈 존슨",
												                      "staffEnNm": "",
												                      "staffRoleGroup": "각본",
												                      "staffRole": "",
												                      "staffEtc": "",
												                      "staffId": ""
												                    },
												                    {
												                      "staffNm": "아담 먼로",
												                      "staffEnNm": "",
												                      "staffRoleGroup": "출연",
												                      "staffRole": "롤란드",
												                      "staffEtc": "",
												                      "staffId": ""
												                    },
												                    {
												                      "staffNm": "진 페도토프",
												                      "staffEnNm": "",
												                      "staffRoleGroup": "출연",
												                      "staffRole": "크라우스",
												                      "staffEtc": "",
												                      "staffId": ""
												                    },
												                    {
												                      "staffNm": "커스틴 웬드랜드트",
												                      "staffEnNm": "",
												                      "staffRoleGroup": "출연",
												                      "staffRole": "바바라",
												                      "staffEtc": "",
												                      "staffId": ""
												                    },
												                    {
												                      "staffNm": "마이클 닷지",
												                      "staffEnNm": "",
												                      "staffRoleGroup": "출연",
												                      "staffRole": "라이제",
												                      "staffEtc": "",
												                      "staffId": ""
												                    }
												                  ]
												                },
												                "vods": {
												                  "vod": [
												                    {
												                      "vodClass": "",
												                      "vodUrl": ""
												                    }
												                  ]
												                },
												                "openThtr": "",
												                "stat": [
												                  {
												                    "screenArea": "",
												                    "screenCnt": "",
												                    "salesAcc": "",
												                    "audiAcc": "",
												                    "statSouce": "",
												                    "statDate": ""
												                  }
												                ],
												                "screenArea": "",
												                "screenCnt": "",
												                "salesAcc": "",
												                "audiAcc": "",
												                "statSouce": "",
												                "statDate": "",
												                "themeSong": "",
												                "soundtrack": "",
												                "fLocation": "",
												                "Awards1": "",
												                "Awards2": "",
												                "regDate": "20180403",
												                "modDate": "20190109",
												                "Codes": {
												                  "Code": [
												                    {
												                      "CodeNm": "",
												                      "CodeNo": ""
												                    }
												                  ]
												                },
												                "CommCodes": {
												                  "CommCode": [
												                    {
												                      "CodeNm": "",
												                      "CodeNo": ""
												                    }
												                  ]
												                },
												                "ALIAS": "srcKmdb2"
												              }
												            
												            
												            
												            
												            
												            */
												            
												            
												            
												            
												            
												            
												            
												            
												            
												            
												            
												            
												            ]}
												      
												            ]})
											    ,
												type : "post",
												async : true,
												dataType : "json",
												contentType : "application/json",
												success : function(datas){
													console.log(datas);
												
													alert("성공!");			
												},
												error : function(err){
													console.log(err);
													alert("실패");
												}				
											}	 // ajax {}
										  
								
										) // ajax
							}
					);  //click
					
									
					//  btnSubSave Click event 끝
					
				}		
			);



</script>


</head>
<body>
2ee21
<input type="button" value="확인" id="btnSubSave" /> 
</body>
</html>
