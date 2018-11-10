# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Company.delete_all
User.delete_all

users = [
  {
    email: "manager@korea.ac.kr", password:"123456", name:"관리자", permitted: true, admin:true
  },
  {
    email: "dreamary@korea.ac.kr", password:"123456", name:"심건우", permitted: true
  },
    {
    email: "whenigroom@korea.ac.kr", password:"123456", name:"박인엽", permitted: true
  },
    {
    email: "studiolink@korea.ac.kr", password:"123456", name:"이용제", permitted: true
  },
    {
    email: "paletta@korea.ac.kr", password:"123456", name:"강상윤", permitted: true
  },
    {
    email: "picasso@korea.ac.kr", password:"123456", name:"이세령", permitted: true
  },
    {
    email: "woot@korea.ac.kr", password:"123456", name:"박준혜", permitted: true
  },
    {
    email: "iopet@korea.ac.kr", password:"123456", name:"강동섭", permitted: true
  },
    {
    email: "whalecompany@korea.ac.kr", password:"123456", name:"강성우", permitted: true
  }
]

users.each do |user|
  User.create user
end

companies = [
  {
    season: 4, name: "(주)드리머리", name_en: "Dreamary", service_name: "드리머리", service_name_en: "Dreamary", CEO_num: 2, CEO1: "심건우", CEO1_en: "Keonwoo Shim", CEO2: "이태훈", CEO2_en: "Taehoon Lee", user: nil, cellphone_num: "01048372234"
  },
    {
    season: 4, name: "(주)웬아이그룸", name_en: "When I Groom Inc.", service_name: "웬아이그룸", service_name_en: "When I Groom", CEO_num: 2, CEO1: "박인엽", CEO1_en: "In Yup Park", CEO2: "안주현", CEO2_en: "Ju Hyeon Ahn", user: nil, cellphone_num: "01041242234"
  },
    {
    season: 4, name: "스튜디오 링크", name_en: "Studio Link", service_name: "스튜디오 링크", service_name_en: "Studio Link", CEO_num: 2, CEO1: "이용제", CEO1_en: "Yongje Lee", CEO2: "김근중", CEO2_en: "Keunjoong Kim", user: nil, cellphone_num: "01095766384"
  },
    {
    season: 4, name: "팔레타", name_en: "Paletta", service_name: "무나", service_name_en: "MOONA", CEO_num: 1, CEO1: "강상윤", CEO1_en: "SangYoon Kang", user: nil, cellphone_num: "01046252383"
  },
    {
    season: 4, name: "피카소", name_en: "Picasso", service_name: "래더", service_name_en: "Ladder", CEO_num: 1, CEO1: "이세령", CEO1_en: "Seryung Lee", user: nil, cellphone_num: "01039485768"
  },
    {
    season: 4.5, name: "우트", name_en: "Woot", service_name: "우트", service_name_en: "Woot", CEO_num: 1, CEO1: "박준혜", CEO1_en: "Junehye Park", user: nil, cellphone_num: "01012446453"
  },
    {
    season: 4.5, name: "아이오펫", name_en: "IoPet", service_name: "아이오펫", service_name_en: "IoPet", CEO_num: 1, CEO1: "권기빈", CEO1_en: "gi bin kwon", user: nil, cellphone_num: "01099786055"
  },
    {
    season: 4.5, name: "웨일컴퍼니", name_en: "Whale Company", service_name: "포켓리프레셔", service_name_en: "Pocket Refrecher", CEO_num: 2, CEO1: "안승재", CEO1_en: "Seungjae Ahn", CEO2: "강성우", CEO2_en: "Sungwoo Kang", user: nil, cellphone_num: "0108857402"
  }
]
i = 1
foundUsers = User.all
companies.each do |company|
  company["user"] = foundUsers[i]
  Company.create company
  i += 1
end