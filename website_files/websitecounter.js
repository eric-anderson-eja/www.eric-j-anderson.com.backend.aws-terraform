async function get_visitorcount() {
    let response = await fetch(
      "https://ayu3ot44vf.execute-api.us-east-2.amazonaws.com/Prod//dynamodbmanager",
      {
        method: "POST",
        headers: { },
        body: JSON.stringify({
          payload: {
            Key: {
              VisitorCounter: "Resume"
            }
          }
        })
      }
    );
    let myCount = await response.json()
    body = myCount['body-json']
    console.log(body)
    viscount = body['body']
    console.log(viscount)
    let final = viscount.match(/[0-9]+/i);
    console.log(final)
    document.getElementById("website_counter").innerHTML = "Visitor Count : " + final + " visits";
    return myCount;

    }
get_visitorcount();
  