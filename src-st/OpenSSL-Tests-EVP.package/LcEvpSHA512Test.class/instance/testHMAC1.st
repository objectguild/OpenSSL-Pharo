initialization
testHMAC1
	"Test Case 1
	https://tools.ietf.org/html/rfc4231#section-4.2"
	| msg st c |
	key := ByteArray fromHexString: '0b0b0b0b0b0b0b0b0b0b0b0b0b0b0b0b0b0b0b0b'.
	msg := 'Hi There' asByteArray.

	st := ByteArray fromHexString: '87aa7cdea5ef619d4ff0b4241a1d6cb02379f4e2ce4ec2787ad0b30545e17cdedaa833b7d6b8a702038b274eaea3f4e4be9d914eeb61f1702e696c203a126854'.

	c := (HMAC on: LcEvpSHA512)
		key: key;
		digestMessage: msg.

	self assert: st equals: c.