// replace these values with those generated in your TokBox Account
var apiKey = "47201054";
var sessionId = "1_MX40NzIwMTA1NH5-MTYyMTUyMDAyMjI0Nn5JQytmZlkwTDVLMTNEYldNQmNWN2V3R3N-fg";
var token = "T1==cGFydG5lcl9pZD00NzIwMTA1NCZzaWc9N2ZlMGY1OTkyNDI5MTQyYWU5N2FjZWE1MGFmMDRjNzM4YjE2NzJlNjpzZXNzaW9uX2lkPTFfTVg0ME56SXdNVEExTkg1LU1UWXlNVFV5TURBeU1qSTBObjVKUXl0bVpsa3dURFZMTVRORVlsZE5RbU5XTjJWM1IzTi1mZyZjcmVhdGVfdGltZT0xNjIxNTIwMTM4Jm5vbmNlPTAuODgzNTY1MDM4ODY2MzIyMyZyb2xlPXB1Ymxpc2hlciZleHBpcmVfdGltZT0xNjIyMTI0OTM0JmluaXRpYWxfbGF5b3V0X2NsYXNzX2xpc3Q9";

// Handling all of our errors here by alerting them
function handleError(error) {
  if (error) {
    alert(error.message);
  }
}

// (optional) add server code here
initializeSession();

function initializeSession() {
  var session = OT.initSession(apiKey, sessionId);

  // Subscribe to a newly created stream
  session.on('streamCreated', function(event) {
    session.subscribe(event.stream, 'subscriber', {
      insertMode: 'append',
      width: '100%',
      height: '100%'
    }, handleError);
  });

  // Create a publisher
  var publisher = OT.initPublisher('publisher', {
    insertMode: 'append',
    width: '100%',
    height: '100%'
  }, handleError);

  // Connect to the session
  session.connect(token, function(error) {
    // If the connection is successful, initialize a publisher and publish to the session
    if (error) {
      handleError(error);
    } else {
      session.publish(publisher, handleError);
    }
  });
}