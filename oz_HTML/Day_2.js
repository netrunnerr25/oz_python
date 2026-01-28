// 정보를 입력받고 출력하는 함수
function getUserInfo() {
    // 1. 변수와 상수 [변수와 상수]
    const title = "사용자 프로필"; // 상수 (변경 불가)
    let userName; // 변수 (변경 가능)

    // 2. 문자열 입력받기 [prompt]
    userName = prompt("당신의 이름은 무엇인가요?");
    let userAge = prompt("나이를 입력해주세요.");

    // 3. 자료형 확인 및 콘솔 출력 [console.log, undefined 외]
    console.log("입력된 이름:", userName);
    console.log("입력된 나이 자료형:", typeof userAge); // prompt는 항상 문자열을 반환함

    // 4. 템플릿 리터럴 활용 [${ }]
    // 입력받은 데이터를 문장으로 만듭니다.
    const message = `안녕하세요, ${userName}님! 귀하의 나이는 ${userAge}세입니다.`;

    // 5. DOM을 활용해 화면에 출력 [DOM]
    const displayArea = document.getElementById("result-display");
    
    if (userName && userAge) {
        displayArea.innerText = message;
    } else {
        displayArea.innerText = "정보 입력을 취소하셨거나 입력값이 없습니다.";
    }
}