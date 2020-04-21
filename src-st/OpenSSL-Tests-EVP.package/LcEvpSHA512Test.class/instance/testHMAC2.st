initialization
testHMAC2
	"Test Case 2
	https://tools.ietf.org/html/rfc4231#section-4.3"
	| msg st c |
	key := 'Jefe' asByteArray.
	msg := 'what do ya want for nothing?' asByteArray.

	st := ByteArray fromHexString: '164b7a7bfcf819e2e395fbe73b56e0a387bd64222e831fd610270cd7ea2505549758bf75c05a994a6d034f65f8f0e6fdcaeab1a34d4a6b4b636e070a38bce737'.

	c := (HMAC on: LcEvpSHA512)
		key: key;
		digestMessage: msg.

	self assert: st equals: c.