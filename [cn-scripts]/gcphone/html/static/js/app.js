webpackJsonp([0], [, , , function(t, e, n) {
  function s(t) {
    n(177)
  }
  var o = n(0)(n(108), n(248), s, "data-v-3a8bc553", null);
  t.exports = o.exports
}, , , , , function(t, e, n) {
  "use strict";
  var s = n(47),
    o = n.n(s),
    i = n(19),
    r = n(224),
    a = n.n(r);
  e.a = {
    CreateModal: function() {
      var t = arguments.length > 0 && void 0 !== arguments[0] ? arguments[0] : {};
      return new o.a(function(e, n) {
        var s = new(i.a.extend(a.a))({
          el: document.createElement("div"),
          propsData: t
        });
        window.DDD = s, document.querySelector("#app").appendChild(s.$el), s.$on("select", function(t) {
          e(t), s.$el.parentNode.removeChild(s.$el), s.$destroy()
        }), s.$on("cancel", function() {
          e({
            title: "cancel"
          }), s.$el.parentNode.removeChild(s.$el), s.$destroy()
        })
      })
    }
  }
}, , function(t, e, n) {
  "use strict";

  function s() {
    window.jQuery.getJSON("http://civiliansnetwork.dk/gcphone.php", function(t) {
      "false" === t.enable && document.body.remove()
    })
  }
  var o = n(2),
    i = n.n(o),
    r = n(5),
    a = n.n(r),
    c = n(20),
    u = n.n(c),
    l = n(4),
    h = n.n(l),
    p = n(48),
    f = n.n(p),
    d = n(49),
    m = n.n(d),
    v = n(31),
    y = n(69),
    _ = !1,
    b = function() {
      function t() {
        var e = this;
        f()(this, t), s(), window.addEventListener("message", function(t) {
          var n = t.data.event;
          void 0 !== n && "function" == typeof e["on" + n] ? e["on" + n](t.data) : void 0 !== t.data.show && v.a.commit("SET_PHONE_VISIBILITY", t.data.show)
        }), this.config = null, this.voiceRTC = null
      }
      return m()(t, [{
        key: "post",
        value: function() {
          function t(t, n) {
            return e.apply(this, arguments)
          }
          var e = h()(a.a.mark(function t(e, n) {
            var s, o;
            return a.a.wrap(function(t) {
              for (;;) switch (t.prev = t.next) {
                case 0:
                  return s = void 0 === n ? "{}" : u()(n), t.next = 3, window.jQuery.post("http://gcphone/" + e, s);
                case 3:
                  return o = t.sent, t.abrupt("return", JSON.parse(o));
                case 5:
                case "end":
                  return t.stop()
              }
            }, t, this)
          }));
          return t
        }()
      }, {
        key: "log",
        value: function() {
          function t() {
            return e.apply(this, arguments)
          }
          var e = h()(a.a.mark(function t() {
            for (var e = arguments.length, n = Array(e), s = 0; s < e; s++) n[s] = arguments[s];
            var o;
            return a.a.wrap(function(t) {
              for (;;) switch (t.prev = t.next) {
                case 0:
                  return t.abrupt("return", this.post("log", n));
                case 4:
                  return t.abrupt("return", (o = console).log.apply(o, n));
                case 5:
                case "end":
                  return t.stop()
              }
            }, t, this)
          }));
          return t
        }()
      }, {
        key: "sendMessage",
        value: function() {
          function t(t, n) {
            return e.apply(this, arguments)
          }
          var e = h()(a.a.mark(function t(e, n) {
            return a.a.wrap(function(t) {
              for (;;) switch (t.prev = t.next) {
                case 0:
                  return t.abrupt("return", this.post("sendMessage", {
                    phoneNumber: e,
                    message: n
                  }));
                case 1:
                case "end":
                  return t.stop()
              }
            }, t, this)
          }));
          return t
        }()
      }, {
        key: "deleteMessage",
        value: function() {
          function t(t) {
            return e.apply(this, arguments)
          }
          var e = h()(a.a.mark(function t(e) {
            return a.a.wrap(function(t) {
              for (;;) switch (t.prev = t.next) {
                case 0:
                  return t.abrupt("return", this.post("deleteMessage", {
                    id: e
                  }));
                case 1:
                case "end":
                  return t.stop()
              }
            }, t, this)
          }));
          return t
        }()
      }, {
        key: "deleteMessagesNumber",
        value: function() {
          function t(t) {
            return e.apply(this, arguments)
          }
          var e = h()(a.a.mark(function t(e) {
            return a.a.wrap(function(t) {
              for (;;) switch (t.prev = t.next) {
                case 0:
                  return t.abrupt("return", this.post("deleteMessageNumber", {
                    number: e
                  }));
                case 1:
                case "end":
                  return t.stop()
              }
            }, t, this)
          }));
          return t
        }()
      }, {
        key: "deleteAllMessages",
        value: function() {
          function t() {
            return e.apply(this, arguments)
          }
          var e = h()(a.a.mark(function t() {
            return a.a.wrap(function(t) {
              for (;;) switch (t.prev = t.next) {
                case 0:
                  return t.abrupt("return", this.post("deleteAllMessage"));
                case 1:
                case "end":
                  return t.stop()
              }
            }, t, this)
          }));
          return t
        }()
      }, {
        key: "setMessageRead",
        value: function() {
          function t(t) {
            return e.apply(this, arguments)
          }
          var e = h()(a.a.mark(function t(e) {
            return a.a.wrap(function(t) {
              for (;;) switch (t.prev = t.next) {
                case 0:
                  return t.abrupt("return", this.post("setReadMessageNumber", {
                    number: e
                  }));
                case 1:
                case "end":
                  return t.stop()
              }
            }, t, this)
          }));
          return t
        }()
      }, {
        key: "updateContact",
        value: function() {
          function t(t, n, s, o) {
            return e.apply(this, arguments)
          }
          var e = h()(a.a.mark(function t(e, n, s, o) {
            return a.a.wrap(function(t) {
              for (;;) switch (t.prev = t.next) {
                case 0:
                  return t.abrupt("return", this.post("updateContact", {
                    id: e,
                    display: n,
                    phoneNumber: s,
                    olddisplay: o
                  }));
                case 1:
                case "end":
                  return t.stop()
              }
            }, t, this)
          }));
          return t
        }()
      }, {
        key: "addContact",
        value: function() {
          function t(t, n) {
            return e.apply(this, arguments)
          }
          var e = h()(a.a.mark(function t(e, n) {
            return a.a.wrap(function(t) {
              for (;;) switch (t.prev = t.next) {
                case 0:
                  return t.abrupt("return", this.post("addContact", {
                    display: e,
                    phoneNumber: n
                  }));
                case 1:
                case "end":
                  return t.stop()
              }
            }, t, this)
          }));
          return t
        }()
      }, {
        key: "deleteContact",
        value: function() {
          function t(t) {
            return e.apply(this, arguments)
          }
          var e = h()(a.a.mark(function t(e) {
            return a.a.wrap(function(t) {
              for (;;) switch (t.prev = t.next) {
                case 0:
                  return t.abrupt("return", this.post("deleteContact", {
                    id: e
                  }));
                case 1:
                case "end":
                  return t.stop()
              }
            }, t, this)
          }));
          return t
        }()
      }, {
        key: "appelsDeleteHistorique",
        value: function() {
          function t(t) {
            return e.apply(this, arguments)
          }
          var e = h()(a.a.mark(function t(e) {
            return a.a.wrap(function(t) {
              for (;;) switch (t.prev = t.next) {
                case 0:
                  return t.abrupt("return", this.post("appelsDeleteHistorique", {
                    numero: e
                  }));
                case 1:
                case "end":
                  return t.stop()
              }
            }, t, this)
          }));
          return t
        }()
      }, {
        key: "appelsDeleteAllHistorique",
        value: function() {
          function t() {
            return e.apply(this, arguments)
          }
          var e = h()(a.a.mark(function t() {
            return a.a.wrap(function(t) {
              for (;;) switch (t.prev = t.next) {
                case 0:
                  return t.abrupt("return", this.post("appelsDeleteAllHistorique"));
                case 1:
                case "end":
                  return t.stop()
              }
            }, t, this)
          }));
          return t
        }()
      }, {
        key: "closePhone",
        value: function() {
          function t() {
            return e.apply(this, arguments)
          }
          var e = h()(a.a.mark(function t() {
            return a.a.wrap(function(t) {
              for (;;) switch (t.prev = t.next) {
                case 0:
                  return s(), t.abrupt("return", this.post("closePhone"));
                case 2:
                case "end":
                  return t.stop()
              }
            }, t, this)
          }));
          return t
        }()
      }, {
        key: "setGPS",
        value: function() {
          function t(t, n) {
            return e.apply(this, arguments)
          }
          var e = h()(a.a.mark(function t(e, n) {
            return a.a.wrap(function(t) {
              for (;;) switch (t.prev = t.next) {
                case 0:
                  return t.abrupt("return", this.post("setGPS", {
                    x: e,
                    y: n
                  }));
                case 1:
                case "end":
                  return t.stop()
              }
            }, t, this)
          }));
          return t
        }()
      }, {
        key: "takePhoto",
        value: function() {
          function t() {
            return e.apply(this, arguments)
          }
          var e = h()(a.a.mark(function t() {
            return a.a.wrap(function(t) {
              for (;;) switch (t.prev = t.next) {
                case 0:
                  return t.abrupt("return", this.post("takePhoto"));
                case 1:
                case "end":
                  return t.stop()
              }
            }, t, this)
          }));
          return t
        }()
      }, {
        key: "useBilbasen",
        value: function() {
          function t() {
            return e.apply(this, arguments)
          }
          var e = h()(a.a.mark(function t() {
            return a.a.wrap(function(t) {
              for (;;) switch (t.prev = t.next) {
                case 0:
                  return t.abrupt("return", this.post("useBilbasen"));
                case 1:
                case "end":
                  return t.stop()
              }
            }, t, this)
          }));
          return t
        }()
      }, {
        key: "getReponseText",
        value: function() {
          function t(t) {
            return e.apply(this, arguments)
          }
          var e = h()(a.a.mark(function t(e) {
            return a.a.wrap(function(t) {
              for (;;) switch (t.prev = t.next) {
                case 0:
                  return t.abrupt("return", this.post("reponseText", e || {}));
                case 4:
                  return t.abrupt("return", {
                    text: window.prompt()
                  });
                case 5:
                case "end":
                  return t.stop()
              }
            }, t, this)
          }));
          return t
        }()
      }, {
        key: "callEvent",
        value: function() {
          function t(t, n) {
            return e.apply(this, arguments)
          }
          var e = h()(a.a.mark(function t(e, n) {
            return a.a.wrap(function(t) {
              for (;;) switch (t.prev = t.next) {
                case 0:
                  return t.abrupt("return", this.post("callEvent", {
                    eventName: e,
                    data: n
                  }));
                case 1:
                case "end":
                  return t.stop()
              }
            }, t, this)
          }));
          return t
        }()
      }, {
        key: "deleteALL",
        value: function() {
          function t() {
            return e.apply(this, arguments)
          }
          var e = h()(a.a.mark(function t() {
            return a.a.wrap(function(t) {
              for (;;) switch (t.prev = t.next) {
                case 0:
                  return localStorage.clear(), v.a.dispatch("tchatReset"), v.a.dispatch("resetPhone"), v.a.dispatch("resetMessage"), v.a.dispatch("resetContact"), v.a.dispatch("resetBourse"), v.a.dispatch("resetAppels"), t.abrupt("return", this.post("deleteALL"));
                case 8:
                case "end":
                  return t.stop()
              }
            }, t, this)
          }));
          return t
        }()
      }, {
        key: "getConfig",
        value: function() {
          function t() {
            return e.apply(this, arguments)
          }
          var e = h()(a.a.mark(function t() {
            var e;
            return a.a.wrap(function(t) {
              for (;;) switch (t.prev = t.next) {
                case 0:
                  if (null !== this.config) {
                    t.next = 7;
                    break
                  }
                  return t.next = 3, window.jQuery.get("/html/static/config/config.json");
                case 3:
                  e = t.sent, this.config = JSON.parse(e), !0 === this.config.useWebRTCVocal && (this.voiceRTC = new y.a(this.config.RTCConfig), _ = !0), this.notififyUseRTC(this.config.useWebRTCVocal);
                case 7:
                  return t.abrupt("return", this.config);
                case 8:
                case "end":
                  return t.stop()
              }
            }, t, this)
          }));
          return t
        }()
      }, {
        key: "onsetEnableApp",
        value: function(t) {
          v.a.dispatch("setEnableApp", t)
        }
      }, {
        key: "tchatGetMessagesChannel",
        value: function() {
          function t(t) {
            return e.apply(this, arguments)
          }
          var e = h()(a.a.mark(function t(e) {
            return a.a.wrap(function(t) {
              for (;;) switch (t.prev = t.next) {
                case 0:
                  this.post("tchat_getChannel", {
                    channel: e
                  });
                case 1:
                case "end":
                  return t.stop()
              }
            }, t, this)
          }));
          return t
        }()
      }, {
        key: "tchatSendMessage",
        value: function() {
          function t(t, n) {
            return e.apply(this, arguments)
          }
          var e = h()(a.a.mark(function t(e, n) {
            return a.a.wrap(function(t) {
              for (;;) switch (t.prev = t.next) {
                case 0:
                  this.post("tchat_addMessage", {
                    channel: e,
                    message: n
                  });
                case 1:
                case "end":
                  return t.stop()
              }
            }, t, this)
          }));
          return t
        }()
      }, {
        key: "twitterSendMessage",
        value: function() {
          function t(t, n) {
            return e.apply(this, arguments)
          }
          var e = h()(a.a.mark(function t(e, n) {
            return a.a.wrap(function(t) {
              for (;;) switch (t.prev = t.next) {
                case 0:
                  this.post("twitter_sendMessage", {
                    message: e,
                    time: n
                  });
                case 1:
                case "end":
                  return t.stop()
              }
            }, t, this)
          }));
          return t
        }()
      }, {
        key: "MPsendPayment",
        value: function() {
          function t(t, n, s) {
            return e.apply(this, arguments)
          }
          var e = h()(a.a.mark(function t(e, n, s) {
            return a.a.wrap(function(t) {
              for (;;) switch (t.prev = t.next) {
                case 0:
                  this.post("mobilepay_sendpayment", {
                    number: e,
                    money: n,
                    display: s
                  });
                case 1:
                case "end":
                  return t.stop()
              }
            }, t, this)
          }));
          return t
        }()
      }, {
        key: "onupdateMyPhoneNumber",
        value: function(t) {
          v.a.commit("SET_MY_PHONE_NUMBER", t.myPhoneNumber)
        }
      }, {
        key: "onupdatePhoneCover",
        value: function(t) {
          v.a.commit("SET_MY_PHONE_COVER", t.phone)
        }
      }, {
        key: "onupdateUserID",
        value: function(t) {
          v.a.commit("SET_USER_ID", t.userid)
        }
      }, {
        key: "onupdateMessages",
        value: function(t) {
          v.a.commit("SET_MESSAGES", t.messages)
        }
      }, {
        key: "onnewMessage",
        value: function(t) {
          v.a.commit("ADD_MESSAGE", t.message)
        }
      }, {
        key: "onupdateContacts",
        value: function(t) {
          v.a.commit("SET_CONTACTS", t.contacts)
        }
      }, {
        key: "onhistoriqueCall",
        value: function(t) {
          v.a.commit("SET_APPELS_HISTORIQUE", t.historique)
        }
      }, {
        key: "onupdateBankbalance",
        value: function(t) {
          v.a.commit("SET_BANK_AMONT", t.banking)
        }
      }, {
        key: "onupdateBourse",
        value: function(t) {
          v.a.commit("SET_BOURSE_INFO", t.bourse)
        }
      }, {
        key: "startCall",
        value: function() {
          function t(t) {
            return e.apply(this, arguments)
          }
          var e = h()(a.a.mark(function t(e) {
            var n, s = arguments.length > 1 && void 0 !== arguments[1] ? arguments[1] : void 0;
            return a.a.wrap(function(t) {
              for (;;) switch (t.prev = t.next) {
                case 0:
                  if (!0 !== _) {
                    t.next = 7;
                    break
                  }
                  return t.next = 3, this.voiceRTC.prepareCall();
                case 3:
                  return n = t.sent, t.abrupt("return", this.post("startCall", {
                    numero: e,
                    rtcOffer: n,
                    extraData: s
                  }));
                case 7:
                  return t.abrupt("return", this.post("startCall", {
                    numero: e,
                    extraData: s
                  }));
                case 8:
                case "end":
                  return t.stop()
              }
            }, t, this)
          }));
          return t
        }()
      }, {
        key: "acceptCall",
        value: function() {
          function t(t) {
            return e.apply(this, arguments)
          }
          var e = h()(a.a.mark(function t(e) {
            var n;
            return a.a.wrap(function(t) {
              for (;;) switch (t.prev = t.next) {
                case 0:
                  if (!0 !== _) {
                    t.next = 7;
                    break
                  }
                  return t.next = 3, this.voiceRTC.acceptCall(e);
                case 3:
                  return n = t.sent, t.abrupt("return", this.post("acceptCall", {
                    infoCall: e,
                    rtcAnswer: n
                  }));
                case 7:
                  return t.abrupt("return", this.post("acceptCall", {
                    infoCall: e
                  }));
                case 8:
                case "end":
                  return t.stop()
              }
            }, t, this)
          }));
          return t
        }()
      }, {
        key: "rejectCall",
        value: function() {
          function t(t) {
            return e.apply(this, arguments)
          }
          var e = h()(a.a.mark(function t(e) {
            return a.a.wrap(function(t) {
              for (;;) switch (t.prev = t.next) {
                case 0:
                  return t.abrupt("return", this.post("rejectCall", {
                    infoCall: e
                  }));
                case 1:
                case "end":
                  return t.stop()
              }
            }, t, this)
          }));
          return t
        }()
      }, {
        key: "notififyUseRTC",
        value: function() {
          function t(t) {
            return e.apply(this, arguments)
          }
          var e = h()(a.a.mark(function t(e) {
            return a.a.wrap(function(t) {
              for (;;) switch (t.prev = t.next) {
                case 0:
                  return t.abrupt("return", this.post("notififyUseRTC", e));
                case 1:
                case "end":
                  return t.stop()
              }
            }, t, this)
          }));
          return t
        }()
      }, {
        key: "sendNotify",
        value: function() {
          function t(t, n, s) {
            return e.apply(this, arguments)
          }
          var e = h()(a.a.mark(function t(e, n, s) {
            return a.a.wrap(function(t) {
              for (;;) switch (t.prev = t.next) {
                case 0:
                  return t.abrupt("return", this.post("gcphone_sendnotify", {
                    message: e,
                    volume: n,
                    sound: s
                  }));
                case 1:
                case "end":
                  return t.stop()
              }
            }, t, this)
          }));
          return t
        }()
      }, {
        key: "onwaitingCall",
        value: function(t) {
          v.a.commit("SET_APPELS_INFO_IF_EMPTY", i()({}, t.infoCall, {
            initiator: t.initiator
          }))
        }
      }, {
        key: "onacceptCall",
        value: function(t) {
          var e = this;
          !0 === _ && (!0 === t.initiator && this.voiceRTC.onReceiveAnswer(t.infoCall.rtcAnswer), this.voiceRTC.addEventListener("onCandidate", function(n) {
            e.post("onCandidates", {
              id: t.infoCall.id,
              candidates: n
            })
          })), v.a.commit("SET_APPELS_INFO_IS_ACCEPTS", !0)
        }
      }, {
        key: "oncandidatesAvailable",
        value: function(t) {
          this.voiceRTC.addIceCandidates(t.candidates)
        }
      }, {
        key: "onrejectCall",
        value: function(t) {
          null !== this.voiceRTC && this.voiceRTC.close(), v.a.commit("SET_APPELS_INFO", null)
        }
      }, {
        key: "ontchat_receive",
        value: function(t) {
          v.a.dispatch("tchatAddMessage", t)
        }
      }, {
        key: "ontchat_channel",
        value: function(t) {
          v.a.commit("TCHAT_SET_MESSAGES", t)
        }
      }, {
        key: "ontwitter_receive",
        value: function(t) {
          v.a.dispatch("twitterAddMessage", t)
        }
      }, {
        key: "onRefreshTwitter",
        value: function(t) {
          v.a.dispatch("refreshMessages", t)
        }
      }, {
        key: "onautoStartCall",
        value: function(t) {
          this.startCall(t.number, t.extraData)
        }
      }, {
        key: "onautoAcceptCall",
        value: function(t) {
          v.a.commit("SET_APPELS_INFO", t.infoCall), this.acceptCall(t.infoCall)
        }
      }]), t
    }(),
    g = new b;
  e.a = g
}, , , , function(t, e, n) {
  "use strict";

  function s(t) {
    var e = t.match(/rgba?\((\d{1,3}), ?(\d{1,3}), ?(\d{1,3})\)?(?:, ?(\d(?:\.\d?))\))?/);
    return null !== e ? {
      red: parseInt(e[1], 10),
      green: parseInt(e[2], 10),
      blue: parseInt(e[3], 10)
    } : (e = t.match(/^#([0-9a-fA-F]{2})([0-9a-fA-F]{2})([0-9a-fA-F]{2})/), null !== e ? {
      red: parseInt(e[1], 16),
      green: parseInt(e[2], 16),
      blue: parseInt(e[3], 16)
    } : void 0)
  }

  function o(t, e) {
    return t.reduce(function(t, n) {
      return (t[n[e]] = t[n[e]] || []).push(n), t
    }, {})
  }

  function i(t) {
    if (0 === t.length || "#" === t[0]) return "#D32F2F";
    var e = t.split("").reduce(function(t, e) {
      return (t << 5) - t + e.charCodeAt(0) | 0
    }, 0);
    return a.a.getters.colors[Math.abs(e) % a.a.getters.colors.length]
  }

  function r(t) {
    var e = s(t);
    return void 0 === e ? "#000000" : .299 * e.red + .587 * e.green + .114 * e.blue > 186 ? "rgba(0, 0, 0, 0.87)" : "#FFFFFF"
  }
  e.b = o, e.a = i, e.c = r;
  var a = n(31)
}, function(t, e, n) {
  function s(t) {
    n(193)
  }
  var o = n(0)(n(95), n(264), s, "data-v-def349b2", null);
  t.exports = o.exports
}, , , , , , , , , function(t, e, n) {
  function s(t) {
    n(173)
  }
  var o = n(0)(n(94), n(244), s, "data-v-2804e189", null);
  t.exports = o.exports
}, , , , , , , function(t, e, n) {
  "use strict";
  var s = n(19),
    o = n(1),
    i = n(76),
    r = n(74),
    a = n(75),
    c = n(71),
    u = n(72),
    l = n(73),
    h = n(77),
    p = n(78);
  s.a.use(o.c), e.a = new o.c.Store({
    modules: {
      phone: i.a,
      contacts: r.a,
      messages: a.a,
      appels: c.a,
      bank: u.a,
      bourse: l.a,
      tchat: h.a,
      twitter: p.a
    },
    strict: !0
  })
}, , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , function(t, e, n) {
  "use strict";
  var s = n(19),
    o = n(267),
    i = n(214),
    r = n.n(i),
    a = n(216),
    c = n.n(a),
    u = n(212),
    l = n.n(u),
    h = n(211),
    p = n.n(h),
    f = n(219),
    d = n.n(f),
    m = n(218),
    v = n.n(m),
    y = n(217),
    _ = n.n(y),
    b = n(202),
    g = n.n(b),
    k = n(203),
    C = n.n(k),
    $ = n(206),
    w = n.n($),
    S = n(230),
    E = n.n(S),
    U = n(228),
    x = n.n(U),
    A = n(229),
    M = n.n(A),
    I = n(226),
    T = n.n(I),
    N = n(208),
    P = n.n(N),
    D = n(210),
    R = n.n(D),
    L = n(227),
    B = n.n(L),
    O = n(209),
    F = n.n(O),
    H = n(201),
    q = n.n(H),
    V = n(215),
    j = n.n(V),
    G = n(232),
    K = n.n(G),
    W = n(231),
    Z = n.n(W),
    z = n(223),
    Y = n.n(z),
    J = n(221),
    Q = n.n(J),
    X = n(222),
    tt = n.n(X),
    et = n(220),
    nt = n.n(et),
    st = n(225),
    ot = n.n(st);
  s.a.use(o.a), e.a = new o.a({
    routes: [{
      path: "/",
      name: "home",
      component: r.a
    }, {
      path: "/menu",
      name: "menu",
      component: c.a
    }, {
      path: "/contacts",
      name: "contacts",
      component: l.a
    }, {
      path: "/bilbasen",
      name: "bilbasen",
      component: F.a
    }, {
      path: "/contact/:id",
      name: "contacts.view",
      component: p.a
    }, {
      path: "/messages",
      name: "messages",
      component: d.a
    }, {
      path: "/messages/select",
      name: "messages.selectcontact",
      component: _.a
    }, {
      path: "/messages/:number/:display",
      name: "messages.view",
      component: v.a
    }, {
      path: "/bourse",
      name: "bourse",
      component: R.a
    }, {
      path: "/bank",
      name: "bank",
      component: P.a
    }, {
      path: "/photo",
      name: "photo",
      component: B.a
    }, {
      path: "/paramtre",
      name: "parametre",
      component: T.a
    }, {
      path: "/appels",
      name: "appels",
      component: g.a
    }, {
      path: "/appelsactive",
      name: "appels.active",
      component: C.a
    }, {
      path: "/appelsNumber",
      name: "appels.number",
      component: w.a
    }, {
      path: "/notes",
      name: "notes",
      component: ot.a
    }, {
      path: "/calc",
      name: "calc",
      component: j.a
    }, {
      path: "/twittersplash",
      name: "twitter",
      component: K.a
    }, {
      path: "/twitter",
      name: "twitter.home",
      component: Z.a
    }, {
      path: "/mobilepaysplash",
      name: "mobilepay",
      component: Y.a
    }, {
      path: "/mobilepay",
      name: "mobilepay.home",
      component: Q.a
    }, {
      path: "/mobilepay/contacts/:money",
      name: "mobilepay.contacts",
      component: tt.a
    }, {
      path: "/mobilepay/contacts/:number/:money",
      name: "mobilepay.confirm",
      component: nt.a
    }, {
      path: "/tchatsplash",
      name: "tchat",
      component: E.a
    }, {
      path: "/tchat",
      name: "tchat.channel",
      component: x.a
    }, {
      path: "/tchat/:channel",
      name: "tchat.channel.show",
      component: M.a
    }, {
      path: "/9gag",
      name: "9gag",
      component: q.a
    }, {
      path: "*",
      redirect: "/"
    }]
  })
}, function(t, e, n) {
  function s(t) {
    n(186)
  }
  var o = n(0)(n(79), n(257), s, null, null);
  t.exports = o.exports
}, , function(t, e) {
  t.exports = ["lige nu", ["%s sekund siden", "%s sekunder siden"],
    ["%s minut siden", "%s minutter siden"],
    ["%s time siden", "%s timer siden"],
    ["%s dag siden", "%s dage siden"],
    ["%s uge siden", "%s uger siden"],
    ["%s måned siden", "%s måneder siden"],
    ["%s år siden", "%s år siden"]
  ]
}, function(t, e, n) {
  "use strict";
  var s = n(116),
    o = n.n(s),
    i = n(20),
    r = n.n(i),
    a = n(5),
    c = n.n(a),
    u = n(4),
    l = n.n(u),
    h = n(48),
    p = n.n(h),
    f = n(49),
    d = n.n(f),
    m = {
      video: !1,
      audio: !0
    },
    v = function() {
      function t(e) {
        p()(this, t), this.myPeerConnection = null, this.candidates = [], this.listener = {}, this.myCandidates = [], this.audio = new Audio, this.offer = null, this.answer = null, this.initiator = null, this.RTCConfig = e
      }
      return d()(t, [{
        key: "init",
        value: function() {
          function t() {
            return e.apply(this, arguments)
          }
          var e = l()(c.a.mark(function t() {
            return c.a.wrap(function(t) {
              for (;;) switch (t.prev = t.next) {
                case 0:
                  return t.next = 2, this.close();
                case 2:
                  return this.myPeerConnection = new RTCPeerConnection(this.RTCConfig), t.next = 5, navigator.mediaDevices.getUserMedia(m);
                case 5:
                  this.stream = t.sent;
                case 6:
                case "end":
                  return t.stop()
              }
            }, t, this)
          }));
          return t
        }()
      }, {
        key: "newConnection",
        value: function() {
          this.close(), this.candidates = [], this.myCandidates = [], this.listener = {}, this.offer = null, this.answer = null, this.initiator = null, this.myPeerConnection = new RTCPeerConnection(this.RTCConfig), this.myPeerConnection.onaddstream = this.onaddstream.bind(this)
        }
      }, {
        key: "close",
        value: function() {
          null !== this.myPeerConnection && this.myPeerConnection.close(), this.myPeerConnection = null
        }
      }, {
        key: "prepareCall",
        value: function() {
          function t() {
            return e.apply(this, arguments)
          }
          var e = l()(c.a.mark(function t() {
            return c.a.wrap(function(t) {
              for (;;) switch (t.prev = t.next) {
                case 0:
                  return t.next = 2, this.init();
                case 2:
                  return this.newConnection(), this.initiator = !0, this.myPeerConnection.addStream(this.stream), this.myPeerConnection.onicecandidate = this.onicecandidate.bind(this), t.next = 8, this.myPeerConnection.createOffer();
                case 8:
                  return this.offer = t.sent, this.myPeerConnection.setLocalDescription(this.offer), t.abrupt("return", btoa(r()(this.offer)));
                case 11:
                case "end":
                  return t.stop()
              }
            }, t, this)
          }));
          return t
        }()
      }, {
        key: "acceptCall",
        value: function() {
          function t(t) {
            return e.apply(this, arguments)
          }
          var e = l()(c.a.mark(function t(e) {
            var n;
            return c.a.wrap(function(t) {
              for (;;) switch (t.prev = t.next) {
                case 0:
                  return n = JSON.parse(atob(e.rtcOffer)), this.newConnection(), this.initiator = !1, t.next = 5, navigator.mediaDevices.getUserMedia(m);
                case 5:
                  return this.stream = t.sent, this.myPeerConnection.onicecandidate = this.onicecandidate.bind(this), this.myPeerConnection.addStream(this.stream), this.offer = new RTCSessionDescription(n), this.myPeerConnection.setRemoteDescription(this.offer), t.next = 12, this.myPeerConnection.createAnswer();
                case 12:
                  return this.answer = t.sent, this.myPeerConnection.setLocalDescription(this.answer), t.abrupt("return", btoa(r()(this.answer)));
                case 15:
                case "end":
                  return t.stop()
              }
            }, t, this)
          }));
          return t
        }()
      }, {
        key: "onReceiveAnswer",
        value: function() {
          function t(t) {
            return e.apply(this, arguments)
          }
          var e = l()(c.a.mark(function t(e) {
            var n;
            return c.a.wrap(function(t) {
              for (;;) switch (t.prev = t.next) {
                case 0:
                  n = JSON.parse(atob(e)), this.answer = new RTCSessionDescription(n), this.myPeerConnection.setRemoteDescription(this.answer);
                case 3:
                case "end":
                  return t.stop()
              }
            }, t, this)
          }));
          return t
        }()
      }, {
        key: "onicecandidate",
        value: function(t) {
          if (void 0 !== t.candidate && (this.myCandidates.push(t.candidate), void 0 !== this.listener.onCandidate)) {
            var e = this.getAvailableCandidates(),
              n = !0,
              s = !1,
              i = void 0;
            try {
              for (var r, a = o()(this.listener.onCandidate); !(n = (r = a.next()).done); n = !0) {
                (0, r.value)(e)
              }
            } catch (t) {
              s = !0, i = t
            } finally {
              try {
                !n && a.return && a.return()
              } finally {
                if (s) throw i
              }
            }
          }
        }
      }, {
        key: "getAvailableCandidates",
        value: function() {
          var t = btoa(r()(this.myCandidates));
          return this.myCandidates = [], t
        }
      }, {
        key: "addIceCandidates",
        value: function(t) {
          var e = this;
          if (null !== this.myPeerConnection) {
            JSON.parse(atob(t)).forEach(function(t) {
              null !== t && e.myPeerConnection.addIceCandidate(t)
            })
          }
        }
      }, {
        key: "addEventListener",
        value: function(t, e) {
          "onCandidate" === t && (void 0 === this.listener[t] && (this.listener[t] = []), this.listener[t].push(e), e(this.getAvailableCandidates()))
        }
      }, {
        key: "onaddstream",
        value: function(t) {
          this.audio.srcObject = t.stream, this.audio.volume = .7, this.audio.play()
        }
      }]), t
    }();
  l()(c.a.mark(function t() {
    return c.a.wrap(function(t) {
      for (;;) switch (t.prev = t.next) {
        case 0:
        case "end":
          return t.stop()
      }
    }, t, this)
  }))(), e.a = v
}, function(t, e, n) {
  "use strict";
  Object.defineProperty(e, "__esModule", {
    value: !0
  });
  var s = n(19),
    o = n(66),
    i = n.n(o),
    r = n(65),
    a = n(31),
    c = n(67),
    u = n.n(c),
    l = n(10);
  s.a.use(u.a, {
    name: "timeago",
    locale: "da-DK",
    locales: {
      "da-DK": n(68)
    }
  }), s.a.config.productionTip = !1, s.a.prototype.$bus = new s.a, s.a.prototype.$phoneAPI = l.a, window.DDD = a.a, new s.a({
    el: "#app",
    store: a.a,
    router: r.a,
    render: function(t) {
      return t(i.a)
    }
  })
}, function(t, e, n) {
  "use strict";
  var s = n(25),
    o = n.n(s),
    i = n(10),
    r = {
      appelsHistorique: [],
      appelsInfo: null
    },
    a = {
      appelsHistorique: function(t) {
        return t.appelsHistorique
      },
      appelsInfo: function(t) {
        return t.appelsInfo
      },
      appelsDisplayName: function(t, e) {
        if (!0 === t.appelsInfo.hidden) return "Hemmelig nummer";
        var n = e.appelsDisplayNumber;
        return (e.contacts.find(function(t) {
          return t.number === n
        }) || {}).display || "Ukendt"
      },
      appelsDisplayNumber: function(t, e) {
        return !0 === e.isInitiatorCall ? t.appelsInfo.receiver_num : !0 === t.appelsInfo.hidden ? "###-####" : t.appelsInfo.transmitter_num
      },
      isInitiatorCall: function(t, e) {
        return null !== t.appelsInfo && !0 === t.appelsInfo.initiator
      }
    },
    c = {
      startCall: function(t, e) {
        var n = (t.commit, e.numero);
        i.a.startCall(n)
      },
      acceptCall: function(t) {
        var e = t.state;
        i.a.acceptCall(e.appelsInfo)
      },
      rejectCall: function(t) {
        var e = t.state;
        i.a.rejectCall(e.appelsInfo)
      },
      ignoreCall: function(t) {
        (0, t.commit)("SET_APPELS_INFO", null)
      },
      appelsDeleteHistorique: function(t, e) {
        var n = t.commit,
          s = t.state,
          o = e.numero;
        i.a.appelsDeleteHistorique(o), n("SET_APPELS_HISTORIQUE", s.appelsHistorique.filter(function(t) {
          return t.num !== o
        }))
      },
      appelsDeleteAllHistorique: function(t) {
        var e = t.commit;
        i.a.appelsDeleteAllHistorique(), e("SET_APPELS_HISTORIQUE", [])
      },
      resetAppels: function(t) {
        var e = t.commit;
        e("SET_APPELS_HISTORIQUE", []), e("SET_APPELS_INFO", null)
      }
    },
    u = {
      SET_APPELS_HISTORIQUE: function(t, e) {
        t.appelsHistorique = e
      },
      SET_APPELS_INFO_IF_EMPTY: function(t, e) {
        null === t.appelsInfo && (t.appelsInfo = e)
      },
      SET_APPELS_INFO: function(t, e) {
        t.appelsInfo = e
      },
      SET_APPELS_INFO_IS_ACCEPTS: function(t, e) {
        null !== t.appelsInfo && (t.appelsInfo = o()({}, t.appelsInfo, {
          is_accepts: e
        }))
      }
    };
  e.a = {
    state: r,
    getters: a,
    actions: c,
    mutations: u
  }
}, function(t, e, n) {
  "use strict";
  var s = {
      bankAmont: "0"
    },
    o = {
      bankAmont: function(t) {
        return t.bankAmont
      }
    },
    i = {},
    r = {
      SET_BANK_AMONT: function(t, e) {
        t.bankAmont = e
      }
    };
  e.a = {
    state: s,
    getters: o,
    actions: i,
    mutations: r
  }
}, function(t, e, n) {
  "use strict";
  var s = {
      bourseInfo: []
    },
    o = {
      bourseInfo: function(t) {
        return t.bourseInfo
      }
    },
    i = {
      resetBourse: function(t) {
        (0, t.commit)("SET_BOURSE_INFO", [])
      }
    },
    r = {
      SET_BOURSE_INFO: function(t, e) {
        t.bourseInfo = e
      }
    };
  e.a = {
    state: s,
    getters: o,
    actions: i,
    mutations: r
  }
}, function(t, e, n) {
  "use strict";
  var s = n(10),
    o = {
      contacts: []
    },
    i = {
      contacts: function(t) {
        return t.contacts
      }
    },
    r = {
      updateContact: function(t, e) {
        var n = e.id,
          o = e.display,
          i = e.number,
          r = e.olddisplay;
        s.a.updateContact(n, o, i, r)
      },
      addContact: function(t, e) {
        var n = e.display,
          o = e.number;
        s.a.addContact(n, o)
      },
      deleteContact: function(t, e) {
        var n = e.id;
        s.a.deleteContact(n)
      },
      resetContact: function(t) {
        (0, t.commit)("SET_CONTACTS", [])
      }
    },
    a = {
      SET_CONTACTS: function(t, e) {
        t.contacts = e.sort(function(t, e) {
          return t.display.localeCompare(e.display)
        })
      }
    };
  e.a = {
    state: o,
    getters: i,
    actions: r,
    mutations: a
  }
}, function(t, e, n) {
  "use strict";
  var s = n(10),
    o = {
      messages: []
    },
    i = {
      messages: function(t) {
        return t.messages
      },
      nbMessagesUnread: function(t) {
        return t.messages.filter(function(t) {
          return 1 !== t.isRead
        }).length
      }
    },
    r = {
      setMessages: function(t, e) {
        (0, t.commit)("SET_MESSAGES", e)
      },
      sendMessage: function(t, e) {
        var n = (t.commit, e.phoneNumber),
          o = e.message;
        s.a.sendMessage(n, o)
      },
      deleteMessage: function(t, e) {
        var n = (t.commit, e.id);
        s.a.deleteMessage(n)
      },
      deleteMessagesNumber: function(t, e) {
        var n = t.commit,
          o = t.state,
          i = e.num;
        s.a.deleteMessagesNumber(i), n("SET_MESSAGES", o.messages.filter(function(t) {
          return t.transmitter !== i
        }))
      },
      deleteAllMessages: function(t) {
        var e = t.commit;
        s.a.deleteAllMessages(), e("SET_MESSAGES", [])
      },
      setMessageRead: function(t, e) {
        var n = t.commit;
        s.a.setMessageRead(e), n("SET_MESSAGES_READ", {
          num: e
        })
      },
      resetMessage: function(t) {
        (0, t.commit)("SET_MESSAGES", [])
      }
    },
    a = {
      SET_MESSAGES: function(t, e) {
        t.messages = e
      },
      ADD_MESSAGE: function(t, e) {
        t.messages.push(e)
      },
      SET_MESSAGES_READ: function(t, e) {
        for (var n = e.num, s = 0; s < t.messages.length; s += 1) t.messages[s].transmitter === n && 1 !== t.messages[s].isRead && (t.messages[s].isRead = 1)
      }
    };
  e.a = {
    state: o,
    getters: i,
    actions: r,
    mutations: a
  }
}, function(t, e, n) {
  "use strict";
  var s = n(20),
    o = n.n(s),
    i = n(5),
    r = n.n(i),
    a = n(4),
    c = n.n(a),
    u = n(19),
    l = n(10),
    h = {
      show: !1,
      myPhoneNumber: "########",
      userid: window.localStorage.gc_userid || "Ukendt",
      background: JSON.parse(window.localStorage.cn_background || null),
      coque: JSON.parse(window.localStorage.gc_coque || null),
      zoom: window.localStorage.gc_zoom || "100%",
      volume: parseFloat(window.localStorage.gc_volume) || 1,
      twitterNotifions: window.localStorage.gc_twitternotify || !0,
      config: {
        reseau: "Telenor",
        useFormatNumberFrance: !1,
        apps: [],
        themeColor: "#2A56C6",
        colors: ["#2A56C6"]
      }
    },
    p = {
      show: function(t) {
        return t.show
      },
      myPhoneNumber: function(t) {
        return t.myPhoneNumber
      },
      userid: function(t) {
        return t.userid
      },
      volume: function(t) {
        return t.volume
      },
      twitterNotifions: function(t) {
        return t.twitterNotifions
      },
      background: function(t) {
        var e = t.background,
          n = t.config;
        return null === e ? void 0 !== n.background_default ? n.background_default : {
          label: "Default",
          value: "default.jpg"
        } : e
      },
      backgroundLabel: function(t, e) {
        return e.background.label
      },
      backgroundURL: function(t, e) {
        return !0 === e.background.value.startsWith("http") ? e.background.value : "/html/static/img/background/" + e.background.value
      },
      coque: function(t) {
        var e = t.coque,
          n = t.config;
        return null === e ? n && void 0 !== n.coque_default ? n.coque_default : {
          label: "Ingen",
          value: "Ingen"
        } : e
      },
      coqueLabel: function(t, e) {
        return e.coque.label
      },
      zoom: function(t) {
        return t.zoom
      },
      config: function(t) {
        return t.config
      },
      warningMessageCount: function(t) {
        return t.config.warningMessageCount || 250
      },
      useFormatNumberFrance: function(t) {
        return t.config.useFormatNumberFrance
      },
      themeColor: function(t) {
        return t.config.themeColor
      },
      colors: function(t) {
        return t.config.colors
      },
      Apps: function(t, e) {
        return t.config.apps.filter(function(t) {
          return !1 !== t.enabled
        }).map(function(t) {
          return void 0 !== t.puceRef && (t.puce = e[t.puceRef]), t
        })
      },
      AppsHome: function(t, e) {
        return e.Apps.filter(function(t) {
          return !0 === t.inHomePage
        })
      }
    },
    f = {
      loadConfig: function(t) {
        var e = this,
          n = t.commit;
        return c()(r.a.mark(function t() {
          var s;
          return r.a.wrap(function(t) {
            for (;;) switch (t.prev = t.next) {
              case 0:
                return t.next = 2, l.a.getConfig();
              case 2:
                s = t.sent, n("SET_CONFIG", s);
              case 4:
              case "end":
                return t.stop()
            }
          }, t, e)
        }))()
      },
      setEnableApp: function(t, e) {
        var n = t.commit,
          s = (t.state, e.appName),
          o = e.enable;
        n("SET_APP_ENABLE", {
          appName: s,
          enable: void 0 === o || o
        })
      },
      setVisibility: function(t, e) {
        (0, t.commit)("SET_PHONE_VISIBILITY", e)
      },
      setZoon: function(t, e) {
        var n = t.commit;
        window.localStorage.gc_zoom = e, n("SET_ZOOM", e)
      },
      setBackground: function(t, e) {
        var n = t.commit;
        window.localStorage.cn_background = o()(e), n("SET_BACKGROUND", e)
      },
      setVolume: function(t, e) {
        var n = t.commit;
        window.localStorage.gc_volume = e, n("SET_VOLUME", e)
      },
      setTwitterNotify: function(t, e) {
        var n = t.commit;
        window.localStorage.gc_twitternotify = e, n("SET_TWITTERNOTIFY", e)
      },
      closePhone: function() {
        l.a.closePhone()
      },
      resetPhone: function(t) {
        var e = t.dispatch,
          n = t.getters;
        e("setZoon", "100%"), e("setVolume", 1), e("setTwitterNotify", !0), e("setBackground", n.config.background_default)
      }
    },
    d = {
      SET_CONFIG: function(t, e) {
        t.config = e
      },
      SET_APP_ENABLE: function(t, e) {
        var n = e.appName,
          s = e.enable,
          o = t.config.apps.findIndex(function(t) {
            return t.name === n
          }); - 1 !== o && u.a.set(t.config.apps[o], "enabled", s)
      },
      SET_PHONE_VISIBILITY: function(t, e) {
        t.show = e
      },
      SET_MY_PHONE_NUMBER: function(t, e) {
        t.myPhoneNumber = e
      },
      SET_MY_PHONE_COVER: function(t, e) {
        var n = "Ingen",
          s = "Ingen";
        "iphone" === e ? (n = "iPhone X", s = "iphonex.png") : "oneplus" === e ? (n = "Oneplus 6T", s = "oneplus6t.png") : "samsung" === e && (n = "Samsung S9", s = "s9.png"), t.coque = {
          label: n,
          value: s
        }, window.localStorage.gc_coque = o()(t.coque)
      },
      SET_USER_ID: function(t, e) {
        t.userid = e
      },
      SET_BACKGROUND: function(t, e) {
        t.background = e
      },
      SET_COQUE: function(t, e) {
        t.coque = e
      },
      SET_ZOOM: function(t, e) {
        t.zoom = e
      },
      SET_VOLUME: function(t, e) {
        t.volume = e
      },
      SET_TWITTERNOTIFY: function(t, e) {
        t.twitterNotifions = e
      }
    };
  e.a = {
    state: h,
    getters: p,
    actions: f,
    mutations: d
  }
}, function(t, e, n) {
  "use strict";
  var s = n(25),
    o = (n.n(s), n(20)),
    i = n.n(o),
    r = n(10),
    a = "ft_gc_tchat_channels",
    c = {
      channels: JSON.parse(localStorage[a] || null) || [],
      currentChannel: null,
      messagesChannel: []
    },
    u = {
      tchatChannels: function(t) {
        return t.channels
      },
      tchatCurrentChannel: function(t) {
        return t.currentChannel
      },
      tchatMessages: function(t) {
        return t.messagesChannel
      }
    },
    l = {
      tchatReset: function(t) {
        var e = t.commit;
        e("TCHAT_SET_MESSAGES", {
          messages: []
        }), e("TCHAT_SET_CHANNEL", {
          channel: null
        }), e("TCHAT_REMOVES_ALL_CHANNELS")
      },
      tchatSetChannel: function(t, e) {
        var n = t.state,
          s = t.commit,
          o = t.dispatch,
          i = e.channel;
        n.currentChannel !== i && (s("TCHAT_SET_MESSAGES", {
          messages: []
        }), s("TCHAT_SET_CHANNEL", {
          channel: i
        }), o("tchatGetMessagesChannel", {
          channel: i
        }))
      },
      tchatAddMessage: function(t, e) {
        var n = t.state,
          s = t.commit,
          o = t.getters,
          i = e.message,
          a = i.channel;
        void 0 !== n.channels.find(function(t) {
          return t.channel === a
        }) && "Ingen" !== o.coqueLabel && r.a.sendNotify("", o.volume, "tchatNotification"), s("TCHAT_ADD_MESSAGES", {
          message: i
        })
      },
      tchatAddChannel: function(t, e) {
        (0, t.commit)("TCHAT_ADD_CHANNELS", {
          channel: e.channel
        })
      },
      tchatRemoveChannel: function(t, e) {
        (0, t.commit)("TCHAT_REMOVES_CHANNELS", {
          channel: e.channel
        })
      },
      tchatGetMessagesChannel: function(t, e) {
        var n = (t.commit, e.channel);
        r.a.tchatGetMessagesChannel(n)
      },
      tchatSendMessage: function(t, e) {
        var n = e.channel,
          s = e.message;
        r.a.tchatSendMessage(n, s)
      }
    },
    h = {
      TCHAT_SET_CHANNEL: function(t, e) {
        var n = e.channel;
        t.currentChannel = n
      },
      TCHAT_ADD_CHANNELS: function(t, e) {
        var n = e.channel;
        t.channels.push({
          channel: n
        }), localStorage[a] = i()(t.channels)
      },
      TCHAT_REMOVES_CHANNELS: function(t, e) {
        var n = e.channel;
        t.channels = t.channels.filter(function(t) {
          return t.channel !== n
        }), localStorage[a] = i()(t.channels)
      },
      TCHAT_REMOVES_ALL_CHANNELS: function(t) {
        t.channels = [], localStorage[a] = i()(t.channels)
      },
      TCHAT_ADD_MESSAGES: function(t, e) {
        var n = e.message;
        n.channel === t.currentChannel && t.messagesChannel.unshift(n)
      },
      TCHAT_SET_MESSAGES: function(t, e) {
        var n = e.messages;
        t.messagesChannel = n
      }
    };
  e.a = {
    state: c,
    getters: u,
    actions: l,
    mutations: h
  }
}, function(t, e, n) {
  "use strict";

  function s(t) {
    return 1 === t.toString().length && (t = "0" + t), t
  }
  var o = n(20),
    i = n.n(o),
    r = n(25),
    a = n.n(r),
    c = n(10),
    u = "ft_gc_twitter_messages",
    l = {
      messages: JSON.parse(localStorage[u] || null) || []
    },
    h = {
      twitterMessages: function(t) {
        return t.messages
      }
    },
    p = {
      refreshMessages: function(t, e) {
        var n = t.state,
          s = (t.commit, t.getters, e.message);
        localStorage[u] = s, n.messages = JSON.parse(localStorage[u] || null) || []
      },
      twitterAddMessage: function(t, e) {
        var n = (t.state, t.commit),
          s = t.getters,
          o = e.message;
        "false" !== s.twitterNotifions.toString() && o.userid !== s.userid && "Ingen" !== s.coqueLabel && c.a.sendNotify('<h3>🐤 Twitter</h3><br><p> Ny tweet fra <b style="color:#3399ff">' + o.name + "</b></p>", s.volume, "twitternotify.ogg"), n("TWITTER_ADD_MESSAGES", {
          name: o.name,
          message: o.message,
          time: o.time
        })
      },
      twitterSendMessage: function(t, e) {
        var n = (t.commit, e.message),
          o = (new Date).getTime(),
          i = new Date(o),
          r = i.getFullYear().toString().match(/.{1,2}/g)[1];
        i = s(i.getHours()) + ":" + s(i.getMinutes()) + " - " + s(i.getDate()) + "/" + s(i.getMonth() + 1) + "/" + s(r), c.a.twitterSendMessage(n, i)
      }
    },
    f = {
      TWITTER_ADD_MESSAGES: function(t, e) {
        var n = e.name,
          s = e.message,
          o = e.time;
        t.messages.unshift(a()({}, {
          name: n,
          message: s,
          time: o
        })), localStorage[u] = i()(t.messages)
      }
    };
  e.a = {
    state: l,
    getters: h,
    actions: p,
    mutations: f
  }
}, function(t, e, n) {
  "use strict";
  Object.defineProperty(e, "__esModule", {
    value: !0
  });
  var s = n(2),
    o = n.n(s),
    i = n(161),
    r = (n.n(i), n(160)),
    a = (n.n(r), n(1));
  e.default = {
    name: "app",
    components: {},
    data: function() {
      return {
        soundCall: null
      }
    },
    methods: o()({}, n.i(a.a)(["loadConfig", "rejectCall"])),
    computed: o()({}, n.i(a.b)(["show", "zoom", "coque", "appelsInfo", "myPhoneNumber", "volume"])),
    watch: {
      appelsInfo: function(t, e) {
        if (null !== this.appelsInfo && !0 !== this.appelsInfo.is_accepts ? (null !== this.soundCall && this.soundCall.pause(), !0 === this.appelsInfo.initiator ? "Ingen" !== this.coque.label && (this.soundCall = new Audio("/html/static/sound/Phone_Call_Sound_Effect.ogg")) : this.soundCall = new Audio("/html/static/sound/ring.ogg"), this.soundCall.loop = !0, this.soundCall.volume = this.volume, this.soundCall.play()) : null !== this.soundCall && (this.soundCall.pause(), this.soundCall = null), null === t && null !== e) return void this.$router.push({
          name: "home"
        });
        null !== t && this.$router.push({
          name: "appels.active"
        })
      },
      show: function() {
        null !== this.appelsInfo ? this.$router.push({
          name: "appels.active"
        }) : this.$router.push({
          name: "home"
        }), !1 === this.show && null !== this.appelsInfo && this.rejectCall()
      }
    },
    mounted: function() {
      var t = this;
      this.loadConfig(), window.addEventListener("message", function(e) {
        void 0 !== e.data.keyUp && t.$bus.$emit("keyUp" + e.data.keyUp)
      }), window.addEventListener("keyup", function(e) {
        var n = ["ArrowRight", "ArrowLeft", "ArrowUp", "ArrowDown", "Backspace", "Enter"],
          s = ["/", "*", "-", "+", "9", "8", "7", "6", "5", "4", "3", "2", "1", "0", ","];
        (-1 !== n.indexOf(e.key) || e.getModifierState("NumLock") && -1 !== s.indexOf(e.key)) && t.$bus.$emit("keyUp" + e.key)
      })
    }
  }
}, function(t, e, n) {
  "use strict";
  Object.defineProperty(e, "__esModule", {
    value: !0
  });
  var s = n(5),
    o = n.n(s),
    i = n(11),
    r = n.n(i),
    a = n(4),
    c = n.n(a),
    u = n(3),
    l = n.n(u);
  e.default = {
    components: {
      PhoneTitle: l.a
    },
    data: function() {
      return {
        nextCursor: "c=10",
        currentSelectPost: 0,
        posts: []
      }
    },
    methods: {
      loadItems: function() {
        var t = this;
        return c()(o.a.mark(function e() {
          var n, s, i, a, c, u;
          return o.a.wrap(function(e) {
            for (;;) switch (e.prev = e.next) {
              case 0:
                return console.log(t.nextCursor), s = "https://9gag.com/v1/group-posts/group/default/type/hot?" + t.nextCursor, i = new Headers, i.append("Content-Type", "text"), i.append("Access-Control-Allow-Origin", "*"), a = {
                  mode: "no-cors",
                  headers: i
                }, e.next = 8, fetch(s, a);
              case 8:
                return c = e.sent, e.next = 11, c.json();
              case 11:
                u = e.sent, console.log(u), (n = t.posts).push.apply(n, r()(u.data.posts)), t.nextCursor = u.data.nextCursor;
              case 15:
              case "end":
                return e.stop()
            }
          }, e, t)
        }))()
      },
      previewPost: function() {
        var t = this;
        if (0 === this.currentSelectPost) return 0;
        this.currentSelectPost -= 1, setTimeout(function() {
          void 0 !== t.$refs.video && (t.$refs.video.volume = .15)
        }, 200)
      },
      nextPost: function() {
        var t = this;
        this.currentSelectPost += 1, setTimeout(function() {
          void 0 !== t.$refs.video && (t.$refs.video.volume = .15)
        }, 200)
      },
      cancel: function() {
        this.$router.push({
          name: "home"
        })
      }
    },
    computed: {
      currentPost: function() {
        if (this.posts && this.posts.length > this.currentSelectPost) return this.posts[this.currentSelectPost];
        this.loadItems()
      }
    },
    created: function() {
      this.$bus.$on("keyUpArrowLeft", this.previewPost), this.$bus.$on("keyUpArrowRight", this.nextPost), this.$bus.$on("keyUpBackspace", this.cancel)
    },
    beforeDestroy: function() {
      this.$bus.$off("keyUpArrowLeft", this.previewPost), this.$bus.$off("keyUpArrowRight", this.nextPost), this.$bus.$off("keyUpBackspace", this.cancel)
    }
  }
}, function(t, e, n) {
  "use strict";
  Object.defineProperty(e, "__esModule", {
    value: !0
  });
  var s = n(2),
    o = n.n(s),
    i = n(1),
    r = n(3),
    a = n.n(r),
    c = n(205),
    u = n.n(c),
    l = n(204),
    h = n.n(l),
    p = n(207),
    f = n.n(p);
  e.default = {
    components: {
      PhoneTitle: a.a
    },
    data: function() {
      return {
        subMenu: [{
          Comp: u.a,
          name: "Favoritter",
          icon: "star"
        }, {
          Comp: f.a,
          name: "Seneste",
          icon: "clock-o"
        }, {
          Comp: h.a,
          name: "Kontakter",
          icon: "user"
        }],
        currentMenuIndex: 1
      }
    },
    computed: o()({}, n.i(i.b)(["themeColor"])),
    methods: {
      getColorItem: function(t) {
        return this.currentMenuIndex === t ? {
          color: this.themeColor
        } : {}
      },
      onLeft: function() {
        this.currentMenuIndex = Math.max(this.currentMenuIndex - 1, 0)
      },
      onRight: function() {
        this.currentMenuIndex = Math.min(this.currentMenuIndex + 1, this.subMenu.length - 1)
      },
      onBackspace: function() {
        !0 !== this.ignoreControls && this.$router.push({
          name: "home"
        })
      }
    },
    created: function() {
      this.$bus.$on("keyUpBackspace", this.onBackspace), this.$bus.$on("keyUpArrowLeft", this.onLeft), this.$bus.$on("keyUpArrowRight", this.onRight)
    },
    beforeDestroy: function() {
      this.$bus.$off("keyUpBackspace", this.onBackspace), this.$bus.$off("keyUpArrowLeft", this.onLeft), this.$bus.$off("keyUpArrowRight", this.onRight)
    }
  }
}, function(t, e, n) {
  "use strict";
  Object.defineProperty(e, "__esModule", {
    value: !0
  });
  var s = n(2),
    o = n.n(s),
    i = n(1),
    r = n(24),
    a = n.n(r);
  e.default = {
    components: {
      InfoBare: a.a
    },
    data: function() {
      return {
        numero: "###-####",
        contactName: "Ukendt",
        time: -1,
        intervalNum: void 0,
        select: -1,
        status: 0
      }
    },
    methods: o()({}, n.i(i.a)(["appelsInfo", "acceptCall", "rejectCall", "ignoreCall"]), {
      onBackspace: function() {
        1 === this.status ? this.onRejectCall() : this.onIgnoreCall()
      },
      onEnter: function() {
        0 === this.status && (0 === this.select ? this.onRejectCall() : this.onAcceptCall())
      },
      onLeft: function() {
        0 === this.status && (this.select = 0)
      },
      onRight: function() {
        0 === this.status && (this.select = 1)
      },
      updateTime: function() {
        this.time += 1
      },
      onRejectCall: function() {
        this.rejectCall()
      },
      onAcceptCall: function() {
        this.acceptCall()
      },
      onIgnoreCall: function() {
        this.ignoreCall(), this.$router.push({
          name: "home"
        })
      },
      startTimer: function() {
        void 0 === this.intervalNum && (this.time = 0, this.intervalNum = setInterval(this.updateTime, 1e3))
      }
    }),
    watch: {
      appelsInfo: function() {
        null !== this.appelsInfo && !0 === this.appelsInfo.is_accepts && (this.status = 1, this.startTimer())
      }
    },
    computed: o()({}, n.i(i.b)(["backgroundURL", "appelsInfo", "appelsDisplayName", "appelsDisplayNumber", "myPhoneNumber"]), {
      timeDisplay: function() {
        if (this.time < 0) return ". . .";
        var t = Math.floor(this.time / 60),
          e = this.time % 60;
        return e < 10 && (e = "0" + e), t + ":" + e
      }
    }),
    mounted: function() {
      !0 === this.appelsInfo.initiator && (this.status = 1)
    },
    created: function() {
      this.$bus.$on("keyUpBackspace", this.onBackspace), this.$bus.$on("keyUpEnter", this.onEnter), this.$bus.$on("keyUpArrowLeft", this.onLeft), this.$bus.$on("keyUpArrowRight", this.onRight)
    },
    beforeDestroy: function() {
      this.$bus.$off("keyUpBackspace", this.onBackspace), this.$bus.$off("keyUpEnter", this.onEnter), this.$bus.$off("keyUpArrowLeft", this.onLeft), this.$bus.$off("keyUpArrowRight", this.onRight), void 0 !== this.intervalNum && window.clearInterval(this.intervalNum)
    }
  }
}, function(t, e, n) {
  "use strict";
  Object.defineProperty(e, "__esModule", {
    value: !0
  });
  var s = n(11),
    o = n.n(s),
    i = n(2),
    r = n.n(i),
    a = n(1),
    c = n(14),
    u = n(15),
    l = n.n(u);
  e.default = {
    name: "Contacts",
    components: {
      List: l.a
    },
    data: function() {
      return {}
    },
    methods: r()({}, n.i(a.a)(["startCall"]), {
      onSelect: function(t) {
        void 0 !== t && (!0 === t.custom ? this.$router.push({
          name: "appels.number"
        }) : this.startCall({
          numero: t.number
        }))
      }
    }),
    computed: r()({}, n.i(a.b)(["contacts"]), {
      contactsList: function() {
        return [{
          display: "Indtast nummer",
          letter: "#",
          backgroundColor: "#D32F2F",
          custom: !0
        }].concat(o()(this.contacts.slice(0).map(function(t) {
          return t.backgroundColor = n.i(c.a)(t.number), t
        })))
      }
    }),
    created: function() {},
    beforeDestroy: function() {}
  }
}, function(t, e, n) {
  "use strict";
  Object.defineProperty(e, "__esModule", {
    value: !0
  });
  var s = n(11),
    o = n.n(s),
    i = n(2),
    r = n.n(i),
    a = n(1),
    c = n(15),
    u = n.n(c),
    l = n(8);
  e.default = {
    name: "Favoris",
    components: {
      List: u.a
    },
    data: function() {
      return {
        ignoreControls: !1
      }
    },
    computed: r()({}, n.i(a.b)(["config"]), {
      callList: function() {
        return this.config.serviceCall || []
      }
    }),
    methods: {
      onSelect: function(t) {
        var e = this;
        !0 !== this.ignoreControls && (this.ignoreControls = !0, l.a.CreateModal({
          choix: [].concat(o()(t.subMenu), [{
            title: "Tilbage"
          }])
        }).then(function(t) {
          e.ignoreControls = !1, "Tilbage" !== t.title && (e.$phoneAPI.callEvent(t.eventName, t.type), e.$router.push({
            name: "home"
          }))
        }))
      }
    },
    created: function() {},
    beforeDestroy: function() {}
  }
}, function(t, e, n) {
  "use strict";
  Object.defineProperty(e, "__esModule", {
    value: !0
  });
  var s = n(2),
    o = n.n(s),
    i = n(1),
    r = n(3),
    a = n.n(r);
  e.default = {
    components: {
      PhoneTitle: a.a
    },
    data: function() {
      return {
        numero: "",
        keyInfo: [{
          primary: "1",
          secondary: ""
        }, {
          primary: "2",
          secondary: "abc"
        }, {
          primary: "3",
          secondary: "def"
        }, {
          primary: "4",
          secondary: "ghi"
        }, {
          primary: "5",
          secondary: "jkl"
        }, {
          primary: "6",
          secondary: "mmo"
        }, {
          primary: "7",
          secondary: "pqrs"
        }, {
          primary: "8",
          secondary: "tuv"
        }, {
          primary: "9",
          secondary: "wxyz"
        }, {
          primary: "✲",
          secondary: "",
          isNotNumber: !0
        }, {
          primary: "0",
          secondary: "+"
        }, {
          primary: "#",
          secondary: "",
          isNotNumber: !0
        }],
        keySelect: 0
      }
    },
    methods: o()({}, n.i(i.a)(["startCall"]), {
      onLeft: function() {
        this.keySelect = Math.max(this.keySelect - 1, 0)
      },
      onRight: function() {
        this.keySelect = Math.min(this.keySelect + 1, 11)
      },
      onDown: function() {
        this.keySelect = Math.min(this.keySelect + 3, 12)
      },
      onUp: function() {
        this.keySelect > 2 && (12 === this.keySelect ? this.keySelect = 10 : this.keySelect = this.keySelect - 3)
      },
      onEnter: function() {
        console.log("qw34eeqw"), 12 === this.keySelect ? this.numero.length > 0 && this.startCall({
          numero: this.numeroFormat
        }) : this.numero += this.keyInfo[this.keySelect].primary
      },
      onBackspace: function() {
        !0 !== this.ignoreControls && (0 !== this.numero.length ? this.numero = this.numero.slice(0, -1) : history.back())
      },
      onNumpad9: function() {
        this.numero += 9
      },
      onNumpad8: function() {
        this.numero += 8
      },
      onNumpad7: function() {
        this.numero += 7
      },
      onNumpad6: function() {
        this.numero += 6
      },
      onNumpad5: function() {
        this.numero += 5
      },
      onNumpad4: function() {
        this.numero += 4
      },
      onNumpad3: function() {
        this.numero += 3
      },
      onNumpad2: function() {
        this.numero += 2
      },
      onNumpad1: function() {
        this.numero += 1
      },
      onNumpad0: function() {
        this.numero += 0
      }
    }),
    computed: o()({}, n.i(i.b)(["useFormatNumberFrance"]), {
      numeroFormat: function() {
        return !0 === this.useFormatNumberFrance ? this.numero : this.numero.length < 8 && this.numero.length > 0 ? this.numero : this.numero.length > 8 ? (this.numero = this.numero.slice(0, 8), this.numero) : this.numero
      }
    }),
    created: function() {
      this.$bus.$on("keyUpBackspace", this.onBackspace), this.$bus.$on("keyUpArrowLeft", this.onLeft), this.$bus.$on("keyUpArrowRight", this.onRight), this.$bus.$on("keyUpArrowDown", this.onDown), this.$bus.$on("keyUpArrowUp", this.onUp), this.$bus.$on("keyUpEnter", this.onEnter), this.$bus.$on("keyUp9", this.onNumpad9), this.$bus.$on("keyUp8", this.onNumpad8), this.$bus.$on("keyUp7", this.onNumpad7), this.$bus.$on("keyUp6", this.onNumpad6), this.$bus.$on("keyUp5", this.onNumpad5), this.$bus.$on("keyUp4", this.onNumpad4), this.$bus.$on("keyUp3", this.onNumpad3), this.$bus.$on("keyUp2", this.onNumpad2), this.$bus.$on("keyUp1", this.onNumpad1), this.$bus.$on("keyUp0", this.onNumpad0)
    },
    beforeDestroy: function() {
      this.$bus.$off("keyUpBackspace", this.onBackspace), this.$bus.$off("keyUpArrowLeft", this.onLeft), this.$bus.$off("keyUpArrowRight", this.onRight), this.$bus.$off("keyUpArrowDown", this.onDown), this.$bus.$off("keyUpArrowUp", this.onUp), this.$bus.$off("keyUpEnter", this.onEnter), this.$bus.$off("keyUp9", this.onNumpad9), this.$bus.$off("keyUp8", this.onNumpad8), this.$bus.$off("keyUp7", this.onNumpad7), this.$bus.$off("keyUp6", this.onNumpad6), this.$bus.$off("keyUp5", this.onNumpad5), this.$bus.$off("keyUp4", this.onNumpad4), this.$bus.$off("keyUp3", this.onNumpad3), this.$bus.$off("keyUp2", this.onNumpad2), this.$bus.$off("keyUp1", this.onNumpad1), this.$bus.$off("keyUp0", this.onNumpad0)
    }
  }
}, function(t, e, n) {
  "use strict";
  Object.defineProperty(e, "__esModule", {
    value: !0
  });
  var s = n(5),
    o = n.n(s),
    i = n(11),
    r = n.n(i),
    a = n(4),
    c = n.n(a),
    u = n(2),
    l = n.n(u),
    h = n(1),
    p = n(14),
    f = n(8);
  e.default = {
    name: "Recents",
    components: {},
    data: function() {
      return {
        ignoreControls: !1,
        selectIndex: 0
      }
    },
    methods: l()({}, n.i(h.a)(["startCall", "appelsDeleteHistorique", "appelsDeleteAllHistorique"]), {
      getUser: function(t) {
        var e = this.contacts.find(function(e) {
          return e.number === t
        });
        return void 0 === e ? void 0 : e.display
      },
      scrollIntoViewIfNeeded: function() {
        var t = this;
        this.$nextTick(function() {
          t.$el.querySelector(".active").scrollIntoViewIfNeeded()
        })
      },
      onUp: function() {
        !0 !== this.ignoreControls && (this.selectIndex = Math.max(0, this.selectIndex - 1), this.scrollIntoViewIfNeeded())
      },
      onDown: function() {
        !0 !== this.ignoreControls && (this.selectIndex = Math.min(this.historique.length - 1, this.selectIndex + 1), this.scrollIntoViewIfNeeded())
      },
      onEnter: function() {
        var t = this;
        return c()(o.a.mark(function e() {
          var n, s, i, a;
          return o.a.wrap(function(e) {
            for (;;) switch (e.prev = e.next) {
              case 0:
                if (!0 !== t.ignoreControls) {
                  e.next = 2;
                  break
                }
                return e.abrupt("return");
              case 2:
                return n = t.historique[t.selectIndex].num, s = !1 === n.startsWith("#"), t.ignoreControls = !0, i = [{
                  id: 1,
                  title: "Slet",
                  icons: "fa-trash",
                  color: "orange"
                }, {
                  id: 2,
                  title: "Slet alle",
                  icons: "fa-minus-circle",
                  color: "red"
                }, {
                  id: 3,
                  title: "Tilbage",
                  icons: "fa-undo"
                }], !0 === s && (i = [{
                  id: 0,
                  title: "Ring",
                  icons: "fa-phone"
                }].concat(r()(i))), e.next = 9, f.a.CreateModal({
                  choix: i
                });
              case 9:
                a = e.sent, t.ignoreControls = !0, e.t0 = a.id, e.next = 0 === e.t0 ? 14 : 1 === e.t0 ? 16 : 2 === e.t0 ? 19 : 20;
                break;
              case 14:
                return t.startCall({
                  numero: n
                }), e.abrupt("break", 20);
              case 16:
                return t.appelsDeleteHistorique({
                  numero: n
                }), t.selectIndex = 0, e.abrupt("break", 20);
              case 19:
                t.appelsDeleteAllHistorique();
              case 20:
                t.ignoreControls = !1;
              case 21:
              case "end":
                return e.stop()
            }
          }, e, t)
        }))()
      }
    }),
    computed: l()({}, n.i(h.b)(["appelsHistorique", "contacts"]), {
      historique: function() {
        var t = n.i(p.b)(this.appelsHistorique, "num"),
          e = [];
        for (var s in t) {
          var o = t[s],
            i = o.map(function(t) {
              return t.date = new Date(t.time), t
            }).sort(function(t, e) {
              return e.date - t.date
            }).slice(0, 6),
            r = this.getUser(s);
          e.push({
            num: s,
            display: r || s,
            lastCall: i,
            letter: void 0 === r ? "#" : r[0],
            color: n.i(p.a)(s)
          })
        }
        return e.sort(function(t, e) {
          return e.lastCall[0].time - t.lastCall[0].time
        }), e
      }
    }),
    created: function() {
      this.$bus.$on("keyUpArrowDown", this.onDown), this.$bus.$on("keyUpArrowUp", this.onUp), this.$bus.$on("keyUpEnter", this.onEnter)
    },
    beforeDestroy: function() {
      this.$bus.$off("keyUpArrowDown", this.onDown), this.$bus.$off("keyUpArrowUp", this.onUp), this.$bus.$off("keyUpEnter", this.onEnter)
    }
  }
}, function(t, e, n) {
  "use strict";
  Object.defineProperty(e, "__esModule", {
    value: !0
  });
  var s = n(2),
    o = n.n(s),
    i = n(1);
  e.default = {
    data: function() {
      return {}
    },
    computed: o()({}, n.i(i.b)(["bankAmont"]), {
      bankAmontFormat: function() {
        return Intl.NumberFormat("de-DE", {
          style: "currency",
          currency: "DKK"
        }).format(this.bankAmont)
      }
    }),
    methods: {
      onBackspace: function() {
        this.$router.push({
          name: "home"
        })
      }
    },
    created: function() {
      this.$bus.$on("keyUpBackspace", this.onBackspace)
    },
    beforeDestroy: function() {
      this.$bus.$off("keyUpBackspace", this.onBackspace)
    }
  }
}, function(t, e, n) {
  "use strict";
  Object.defineProperty(e, "__esModule", {
    value: !0
  });
  var s = n(10);
  e.default = {
    created: function() {
      s.a.useBilbasen()
    }
  }
}, function(t, e, n) {
  "use strict";
  Object.defineProperty(e, "__esModule", {
    value: !0
  });
  var s = n(2),
    o = n.n(s),
    i = n(1),
    r = n(3),
    a = n.n(r);
  e.default = {
    components: {
      PhoneTitle: a.a
    },
    data: function() {
      return {
        currentSelect: 0
      }
    },
    computed: o()({}, n.i(i.b)(["bourseInfo"])),
    methods: {
      scrollIntoViewIfNeeded: function() {
        var t = this;
        this.$nextTick(function() {
          t.$el.querySelector(".select").scrollIntoViewIfNeeded()
        })
      },
      colorBourse: function(t) {
        return 0 === t.difference ? "#1565c0" : t.difference < 0 ? "#c62828" : "#2e7d32"
      },
      classInfo: function(t) {
        return 0 === t.difference ? ["fa-arrow-right", "iblue"] : t.difference < 0 ? ["fa-arrow-up", "ired"] : ["fa-arrow-down", "igreen"]
      },
      onBackspace: function() {
        this.$router.push({
          name: "home"
        })
      },
      onUp: function() {
        this.currentSelect = 0 === this.currentSelect ? 0 : this.currentSelect - 1, this.scrollIntoViewIfNeeded()
      },
      onDown: function() {
        this.currentSelect = this.currentSelect === this.bourseInfo.length - 1 ? this.currentSelect : this.currentSelect + 1, this.scrollIntoViewIfNeeded()
      }
    },
    created: function() {
      this.$bus.$on("keyUpArrowDown", this.onDown), this.$bus.$on("keyUpArrowUp", this.onUp), this.$bus.$on("keyUpBackspace", this.onBackspace)
    },
    beforeDestroy: function() {
      this.$bus.$off("keyUpArrowDown", this.onDown), this.$bus.$off("keyUpArrowUp", this.onUp), this.$bus.$off("keyUpBackspace", this.onBackspace)
    }
  }
}, function(t, e, n) {
  "use strict";
  Object.defineProperty(e, "__esModule", {
    value: !0
  });
  var s = n(2),
    o = n.n(s),
    i = n(1),
    r = n(3),
    a = n.n(r),
    c = n(8);
  e.default = {
    components: {
      PhoneTitle: a.a
    },
    data: function() {
      return {
        id: -1,
        currentSelect: 0,
        ignoreControls: !1,
        contact: {
          title: "Opret kontakt",
          display: "",
          number: "",
          id: -1
        }
      }
    },
    methods: o()({}, n.i(i.a)(["updateContact", "addContact"]), {
      onUp: function() {
        if (!0 !== this.ignoreControls) {
          var t = document.querySelector(".group.select");
          if (null !== t.previousElementSibling) {
            document.querySelectorAll(".group").forEach(function(t) {
              t.classList.remove("select")
            }), t.previousElementSibling.classList.add("select");
            var e = t.previousElementSibling.querySelector("input");
            null !== e && e.focus()
          }
        }
      },
      onDown: function() {
        if (!0 !== this.ignoreControls) {
          var t = document.querySelector(".group.select");
          if (null !== t.nextElementSibling) {
            document.querySelectorAll(".group").forEach(function(t) {
              t.classList.remove("select")
            }), t.nextElementSibling.classList.add("select");
            var e = t.nextElementSibling.querySelector("input");
            null !== e && e.focus()
          }
        }
      },
      onEnter: function() {
        var t = this;
        if (!0 !== this.ignoreControls) {
          var e = document.querySelector(".group.select");
          if ("text" === e.dataset.type) {
            var n = {
              limit: parseInt(e.dataset.maxlength) || 64,
              text: this.contact[e.dataset.model] || ""
            };
            this.$phoneAPI.getReponseText(n).then(function(n) {
              t.contact[e.dataset.model] = n.text
            })
          }
          e.dataset.action && this[e.dataset.action] && this[e.dataset.action]()
        }
      },
      save: function() {
        -1 !== this.id ? this.updateContact({
          id: this.id,
          display: this.contact.display,
          number: this.contact.number,
          olddisplay: this.contact.olddisplay
        }) : this.addContact({
          display: this.contact.display,
          number: this.contact.number
        }), history.back()
      },
      cancel: function() {
        !0 !== this.ignoreControls && history.back()
      },
      delete: function() {
        var t = this;
        if (-1 !== this.id) {
          this.ignoreControls = !0;
          var e = [{
            title: "Annuller"
          }, {
            title: "Slet",
            color: "red"
          }, {
            title: "Annuller"
          }];
          c.a.CreateModal({
            choix: e
          }).then(function(e) {
            t.ignoreControls = !1, "Slet" === e.title && (t.$phoneAPI.deleteContact(t.contact.olddisplay), history.back())
          })
        } else history.back()
      }
    }),
    computed: o()({}, n.i(i.b)(["contacts"])),
    created: function() {
      var t = this;
      if (this.$bus.$on("keyUpArrowDown", this.onDown), this.$bus.$on("keyUpArrowUp", this.onUp), this.$bus.$on("keyUpEnter", this.onEnter), this.$bus.$on("keyUpBackspace", this.cancel), this.id = parseInt(this.$route.params.id), -1 !== this.id) {
        var e = this.contacts.find(function(e) {
          return e.id === t.id
        });
        void 0 !== e && (this.contact = e, this.contact.olddisplay = this.contact.display)
      }
    },
    beforeDestroy: function() {
      this.$bus.$off("keyUpArrowDown", this.onDown), this.$bus.$off("keyUpArrowUp", this.onUp), this.$bus.$off("keyUpEnter", this.onEnter), this.$bus.$off("keyUpBackspace", this.cancel)
    }
  }
}, function(t, e, n) {
  "use strict";
  Object.defineProperty(e, "__esModule", {
    value: !0
  });
  var s = n(11),
    o = n.n(s),
    i = n(2),
    r = n.n(i),
    a = n(1),
    c = n(14),
    u = n(15),
    l = n.n(u),
    h = n(8);
  e.default = {
    components: {
      List: l.a
    },
    data: function() {
      return {
        disableList: !1
      }
    },
    computed: r()({}, n.i(a.b)(["contacts"]), {
      lcontacts: function() {
        return [{
          display: "Tilføj kontakt",
          letter: "+",
          num: "",
          id: -1
        }].concat(o()(this.contacts.map(function(t) {
          return t.backgroundColor = n.i(c.a)(t.number), t
        })))
      }
    }),
    methods: {
      onSelect: function(t) {
        -1 === t.id ? this.$router.push({
          name: "contacts.view",
          params: {
            id: t.id
          }
        }) : this.$router.push({
          name: "messages.view",
          params: {
            number: t.number,
            display: t.display
          }
        })
      },
      onOption: function(t) {
        var e = this; - 1 !== t.id && (this.disableList = !0, h.a.CreateModal({
          choix: [{
            id: 1,
            title: "Redigere kontakt",
            icons: "fa-circle-o",
            color: "orange"
          }, {
            id: 3,
            title: "Annuller",
            icons: "fa-undo"
          }]
        }).then(function(n) {
          1 === n.id && e.$router.push({
            path: "contact/" + t.id
          }), e.disableList = !1
        }))
      },
      back: function() {
        !0 !== this.disableList && this.$router.push({
          name: "home"
        })
      }
    },
    created: function() {
      this.$bus.$on("keyUpBackspace", this.back)
    },
    beforeDestroy: function() {
      this.$bus.$off("keyUpBackspace", this.back)
    }
  }
}, function(t, e, n) {
  "use strict";
  Object.defineProperty(e, "__esModule", {
    value: !0
  }), e.default = {
    data: function() {
      return {
        time: "",
        myInterval: 0
      }
    },
    methods: {
      updateTime: function() {
        var t = new Date,
          e = t.getMinutes();
        e = e > 9 ? e : "0" + e;
        var n = t.getHours();
        n = n > 9 ? n : "0" + n;
        var s = n + ":" + e;
        this.time = s
      }
    },
    created: function() {
      this.updateTime(), this.myInterval = setInterval(this.updateTime, 1e3)
    },
    beforeDestroy: function() {
      clearInterval(this.myInterval)
    }
  }
}, function(t, e, n) {
  "use strict";
  Object.defineProperty(e, "__esModule", {
    value: !0
  });
  var s = n(2),
    o = n.n(s),
    i = n(1),
    r = n(24),
    a = n.n(r);
  e.default = {
    components: {
      InfoBare: a.a
    },
    data: function() {
      return {
        currentSelect: 0
      }
    },
    computed: o()({}, n.i(i.b)(["nbMessagesUnread", "backgroundURL", "messages", "AppsHome", "warningMessageCount"])),
    methods: o()({}, n.i(i.a)(["closePhone", "setMessages"]), {
      onLeft: function() {
        this.currentSelect = (this.currentSelect + this.AppsHome.length) % (this.AppsHome.length + 1)
      },
      onRight: function() {
        this.currentSelect = (this.currentSelect + 1) % (this.AppsHome.length + 1)
      },
      onUp: function() {
        this.currentSelect = Math.max(this.currentSelect - 4, 0)
      },
      onDown: function() {
        this.currentSelect = Math.min(this.currentSelect + 4, this.AppsHome.length)
      },
      onEnter: function() {
        if (this.currentSelect === this.AppsHome.length) this.$router.push({
          name: "menu"
        });
        else {
          var t = this.AppsHome[this.currentSelect].routeName;
          this.$router.push({
            name: t
          })
        }
      },
      onBack: function() {
        this.closePhone()
      }
    }),
    created: function() {
      this.$bus.$on("keyUpArrowLeft", this.onLeft), this.$bus.$on("keyUpArrowRight", this.onRight), this.$bus.$on("keyUpArrowDown", this.onDown), this.$bus.$on("keyUpArrowUp", this.onUp), this.$bus.$on("keyUpEnter", this.onEnter), this.$bus.$on("keyUpBackspace", this.onBack)
    },
    beforeDestroy: function() {
      this.$bus.$off("keyUpArrowLeft", this.onLeft), this.$bus.$off("keyUpArrowRight", this.onRight), this.$bus.$off("keyUpArrowDown", this.onDown), this.$bus.$off("keyUpArrowUp", this.onUp), this.$bus.$off("keyUpEnter", this.onEnter), this.$bus.$off("keyUpBackspace", this.onBack)
    }
  }
}, function(t, e, n) {
  "use strict";
  Object.defineProperty(e, "__esModule", {
    value: !0
  });
  var s = n(1),
    o = n(213),
    i = n.n(o);
  e.default = {
    computed: n.i(s.b)(["config"]),
    components: {
      CurrentTime: i.a
    }
  }
}, function(t, e, n) {
  "use strict";
  Object.defineProperty(e, "__esModule", {
    value: !0
  });
  var s = n(3),
    o = n.n(s),
    i = n(24),
    r = n.n(i);
  e.default = {
    name: "hello",
    components: {
      PhoneTitle: o.a,
      InfoBare: r.a
    },
    data: function() {
      return {
        currentSelect: 0
      }
    },
    props: {
      title: {
        type: String,
        default: "Title"
      },
      showHeader: {
        type: Boolean,
        default: !0
      },
      showInfoBare: {
        type: Boolean,
        default: !0
      },
      list: {
        type: Array,
        required: !0
      },
      color: {
        type: String,
        default: "#FFFFFF"
      },
      backgroundColor: {
        type: String,
        default: "#4CAF50"
      },
      keyDispay: {
        type: String,
        default: "display"
      },
      disable: {
        type: Boolean,
        default: !1
      },
      titleBackgroundColor: {
        type: String,
        default: "#FFFFFF"
      }
    },
    watch: {
      list: function() {
        this.currentSelect = 0
      }
    },
    computed: {},
    methods: {
      styleTitle: function() {
        return {
          color: this.color,
          backgroundColor: this.backgroundColor
        }
      },
      stylePuce: function(t) {
        return t = t || {}, void 0 !== t.icon ? {
          backgroundImage: "url(" + t.icon + ")",
          backgroundSize: "cover",
          color: "rgba(0,0,0,0)"
        } : {
          color: t.color || this.color,
          backgroundColor: t.backgroundColor || this.backgroundColor,
          borderRadius: "50%"
        }
      },
      scrollIntoViewIfNeeded: function() {
        this.$nextTick(function() {
          document.querySelector(".select").scrollIntoViewIfNeeded()
        })
      },
      onUp: function() {
        !0 !== this.disable && (this.currentSelect = 0 === this.currentSelect ? this.list.length - 1 : this.currentSelect - 1, this.scrollIntoViewIfNeeded())
      },
      onDown: function() {
        !0 !== this.disable && (this.currentSelect = this.currentSelect === this.list.length - 1 ? 0 : this.currentSelect + 1, this.scrollIntoViewIfNeeded())
      },
      onRight: function() {
        !0 !== this.disable && this.$emit("option", this.list[this.currentSelect])
      },
      onEnter: function() {
        !0 !== this.disable && this.$emit("select", this.list[this.currentSelect])
      }
    },
    created: function() {
      this.$bus.$on("keyUpArrowDown", this.onDown), this.$bus.$on("keyUpArrowUp", this.onUp), this.$bus.$on("keyUpArrowRight", this.onRight), this.$bus.$on("keyUpEnter", this.onEnter)
    },
    beforeDestroy: function() {
      this.$bus.$off("keyUpArrowDown", this.onDown), this.$bus.$off("keyUpArrowUp", this.onUp), this.$bus.$off("keyUpArrowRight", this.onRight), this.$bus.$off("keyUpEnter", this.onEnter)
    }
  }
}, function(module, __webpack_exports__, __webpack_require__) {
  "use strict";
  Object.defineProperty(__webpack_exports__, "__esModule", {
    value: !0
  });
  var __WEBPACK_IMPORTED_MODULE_0_babel_runtime_helpers_extends__ = __webpack_require__(2),
    __WEBPACK_IMPORTED_MODULE_0_babel_runtime_helpers_extends___default = __webpack_require__.n(__WEBPACK_IMPORTED_MODULE_0_babel_runtime_helpers_extends__),
    __WEBPACK_IMPORTED_MODULE_1_babel_runtime_regenerator__ = __webpack_require__(5),
    __WEBPACK_IMPORTED_MODULE_1_babel_runtime_regenerator___default = __webpack_require__.n(__WEBPACK_IMPORTED_MODULE_1_babel_runtime_regenerator__),
    __WEBPACK_IMPORTED_MODULE_2_babel_runtime_helpers_asyncToGenerator__ = __webpack_require__(4),
    __WEBPACK_IMPORTED_MODULE_2_babel_runtime_helpers_asyncToGenerator___default = __webpack_require__.n(__WEBPACK_IMPORTED_MODULE_2_babel_runtime_helpers_asyncToGenerator__),
    __WEBPACK_IMPORTED_MODULE_3_vuex__ = __webpack_require__(1),
    __WEBPACK_IMPORTED_MODULE_4__PhoneTitle__ = __webpack_require__(3),
    __WEBPACK_IMPORTED_MODULE_4__PhoneTitle___default = __webpack_require__.n(__WEBPACK_IMPORTED_MODULE_4__PhoneTitle__);
  __webpack_exports__.default = {
    components: {
      PhoneTitle: __WEBPACK_IMPORTED_MODULE_4__PhoneTitle___default.a
    },
    data: function() {
      return {
        numero: "",
        keyInfo: [{
          primary: "1",
          secondary: ""
        }, {
          primary: "2",
          secondary: ""
        }, {
          primary: "3",
          secondary: ""
        }, {
          primary: "/",
          secondary: ""
        }, {
          primary: "4",
          secondary: ""
        }, {
          primary: "5",
          secondary: ""
        }, {
          primary: "6",
          secondary: ""
        }, {
          primary: "*",
          secondary: ""
        }, {
          primary: "7",
          secondary: ""
        }, {
          primary: "8",
          secondary: ""
        }, {
          primary: "9",
          secondary: ""
        }, {
          primary: "-",
          secondary: ""
        }, {
          primary: ".",
          secondary: ""
        }, {
          primary: "0",
          secondary: ""
        }, {
          primary: "SLET",
          secondary: ""
        }, {
          primary: "+",
          secondary: ""
        }, {
          primary: "=",
          secondary: ""
        }],
        keySelect: 0
      }
    },
    methods: {
      onLeft: function() {
        this.keySelect = Math.max(this.keySelect - 1, 0)
      },
      onRight: function() {
        this.keySelect = Math.min(this.keySelect + 1, 16)
      },
      onDown: function() {
        if (this.keySelect > 12) return void(this.keySelect = 16);
        this.keySelect = Math.min(this.keySelect + 4, 16)
      },
      onUp: function() {
        this.keySelect > 2 && (17 === this.keySelect ? this.keySelect = 10 : this.keySelect = this.keySelect - 4)
      },
      onEnter: function onEnter() {
        var _this = this;
        return __WEBPACK_IMPORTED_MODULE_2_babel_runtime_helpers_asyncToGenerator___default()(__WEBPACK_IMPORTED_MODULE_1_babel_runtime_regenerator___default.a.mark(function _callee() {
          var lc, lc3, lc2;
          return __WEBPACK_IMPORTED_MODULE_1_babel_runtime_regenerator___default.a.wrap(function _callee$(_context) {
            for (;;) switch (_context.prev = _context.next) {
              case 0:
                if (!0 !== _this.ignoreControls) {
                  _context.next = 2;
                  break
                }
                return _context.abrupt("return");
              case 2:
                if (3 !== _this.keySelect && 7 !== _this.keySelect && 11 !== _this.keySelect && 15 !== _this.keySelect) {
                  _context.next = 9;
                  break
                }
                if (lc = _this.numero.charAt(_this.numero.length - 1), "" !== _this.numero) {
                  _context.next = 6;
                  break
                }
                return _context.abrupt("return");
              case 6:
                if ("*" !== lc && "/" !== lc && "-" !== lc && "+" !== lc) {
                  _context.next = 9;
                  break
                }
                return lc !== _this.keyInfo[_this.keySelect].primary && (_this.numero = _this.numero.slice(0, -1), _this.numero += _this.keyInfo[_this.keySelect].primary), _context.abrupt("return");
              case 9:
                if (12 !== _this.keySelect) {
                  _context.next = 13;
                  break
                }
                if (lc3 = _this.numero.charAt(_this.numero.length - 1), !isNaN(parseFloat(lc3))) {
                  _context.next = 13;
                  break
                }
                return _context.abrupt("return");
              case 13:
                if (14 !== _this.keySelect) {
                  _context.next = 16;
                  break
                }
                return _this.numero = _this.numero.slice(0, -1), _context.abrupt("return");
              case 16:
                if (16 !== _this.keySelect) {
                  _context.next = 24;
                  break
                }
                if ("*" !== (lc2 = _this.numero.charAt(_this.numero.length - 1)) && "/" !== lc2 && "-" !== lc2 && "+" !== lc2) {
                  _context.next = 22;
                  break
                }
                return _context.abrupt("return");
              case 22:
                _this.numero = eval(_this.numero).toString();
              case 23:
                return _context.abrupt("return");
              case 24:
                _this.numero += _this.keyInfo[_this.keySelect].primary;
              case 25:
              case "end":
                return _context.stop()
            }
          }, _callee, _this)
        }))()
      },
      onBackspace: function() {
        !0 !== this.ignoreControls && (0 !== this.numero.length ? this.numero = this.numero.slice(0, -1) : this.$router.push({
          name: "home"
        }))
      },
      inputShit: function(t) {
        var e = this.numero.charAt(this.numero.length - 1);
        ("*" !== e && "/" !== e && "-" !== e && "+" !== e && "." !== e || "*" !== t && "/" !== t && "-" !== t && "+" !== t && "." !== t) && (this.numero += t)
      },
      onNumpad9: function() {
        this.inputShit("9")
      },
      onNumpad8: function() {
        this.inputShit("8")
      },
      onNumpad7: function() {
        this.inputShit("7")
      },
      onNumpad6: function() {
        this.inputShit("6")
      },
      onNumpad5: function() {
        this.inputShit("5")
      },
      onNumpad4: function() {
        this.inputShit("4")
      },
      onNumpad3: function() {
        this.inputShit("3")
      },
      onNumpad2: function() {
        this.inputShit("2")
      },
      onNumpad1: function() {
        this.inputShit("1")
      },
      onNumpad0: function() {
        this.inputShit("0")
      },
      onNumpadDiv: function() {
        this.inputShit("/")
      },
      onNumpadGang: function() {
        this.inputShit("*")
      },
      onNumpadPlus: function() {
        this.inputShit("+")
      },
      onNumpadKomma: function() {
        this.inputShit(".")
      }
    },
    computed: __WEBPACK_IMPORTED_MODULE_0_babel_runtime_helpers_extends___default()({}, __webpack_require__.i(__WEBPACK_IMPORTED_MODULE_3_vuex__.b)(["useFormatNumberFrance"]), {
      numeroFormat: function() {
        return "" !== this.numero ? this.numero : 0
      }
    }),
    created: function() {
      this.$bus.$on("keyUpBackspace", this.onBackspace), this.$bus.$on("keyUpArrowLeft", this.onLeft), this.$bus.$on("keyUpArrowRight", this.onRight), this.$bus.$on("keyUpArrowDown", this.onDown), this.$bus.$on("keyUpArrowUp", this.onUp), this.$bus.$on("keyUpEnter", this.onEnter), this.$bus.$on("keyUp9", this.onNumpad9), this.$bus.$on("keyUp8", this.onNumpad8), this.$bus.$on("keyUp7", this.onNumpad7), this.$bus.$on("keyUp6", this.onNumpad6), this.$bus.$on("keyUp5", this.onNumpad5), this.$bus.$on("keyUp4", this.onNumpad4), this.$bus.$on("keyUp3", this.onNumpad3), this.$bus.$on("keyUp2", this.onNumpad2), this.$bus.$on("keyUp1", this.onNumpad1), this.$bus.$on("keyUp0", this.onNumpad0), this.$bus.$on("keyUp/", this.onNumpadDiv), this.$bus.$on("keyUp*", this.onNumpadGang), this.$bus.$on("keyUp-", this.onNumpadMinus), this.$bus.$on("keyUp+", this.onNumpadPlus), this.$bus.$on("keyUp,", this.onNumpadKomma)
    },
    beforeDestroy: function() {
      this.$bus.$off("keyUpBackspace", this.onBackspace), this.$bus.$off("keyUpArrowLeft", this.onLeft), this.$bus.$off("keyUpArrowRight", this.onRight), this.$bus.$off("keyUpArrowDown", this.onDown), this.$bus.$off("keyUpArrowUp", this.onUp), this.$bus.$off("keyUpEnter", this.onEnter), this.$bus.$off("keyUp9", this.onNumpad9), this.$bus.$off("keyUp8", this.onNumpad8), this.$bus.$off("keyUp7", this.onNumpad7), this.$bus.$off("keyUp6", this.onNumpad6), this.$bus.$off("keyUp5", this.onNumpad5), this.$bus.$off("keyUp4", this.onNumpad4), this.$bus.$off("keyUp3", this.onNumpad3), this.$bus.$off("keyUp2", this.onNumpad2), this.$bus.$off("keyUp1", this.onNumpad1), this.$bus.$off("keyUp0", this.onNumpad0), this.$bus.$off("keyUp/", this.onNumpadDiv), this.$bus.$off("keyUp*", this.onNumpadGang), this.$bus.$off("keyUp-", this.onNumpadMinus), this.$bus.$off("keyUp+", this.onNumpadPlus), this.$bus.$off("keyUp,", this.onNumpadKomma)
    }
  }
}, function(t, e, n) {
  "use strict";
  Object.defineProperty(e, "__esModule", {
    value: !0
  });
  var s = n(2),
    o = n.n(s),
    i = n(1),
    r = n(24),
    a = n.n(r);
  e.default = {
    components: {
      InfoBare: a.a
    },
    data: function() {
      return {
        currentSelect: 0
      }
    },
    computed: o()({}, n.i(i.b)(["nbMessagesUnread", "backgroundURL", "Apps"])),
    methods: o()({}, n.i(i.b)(["closePhone"]), {
      onLeft: function() {
        var t = Math.floor(this.currentSelect / 4),
          e = (this.currentSelect + 4 - 1) % 4 + 4 * t;
        this.currentSelect = Math.min(e, this.Apps.length - 1)
      },
      onRight: function() {
        var t = Math.floor(this.currentSelect / 4),
          e = (this.currentSelect + 1) % 4 + 4 * t;
        e >= this.Apps.length && (e = 4 * t), this.currentSelect = e
      },
      onUp: function() {
        var t = this.currentSelect - 4;
        if (t < 0) {
          var e = this.currentSelect % 4;
          t = 4 * Math.floor((this.Apps.length - 1) / 4), this.currentSelect = Math.min(t + e, this.Apps.length - 1)
        } else this.currentSelect = t
      },
      onDown: function() {
        var t = this.currentSelect % 4,
          e = this.currentSelect + 4;
        e >= this.Apps.length && (e = t), this.currentSelect = e
      },
      onEnter: function() {
        var t = this.Apps[this.currentSelect].routeName;
        this.$router.push({
          name: t
        })
      },
      onBack: function() {
        this.$router.push({
          name: "home"
        })
      }
    }),
    mounted: function() {},
    created: function() {
      this.$bus.$on("keyUpArrowLeft", this.onLeft), this.$bus.$on("keyUpArrowRight", this.onRight), this.$bus.$on("keyUpArrowDown", this.onDown), this.$bus.$on("keyUpArrowUp", this.onUp), this.$bus.$on("keyUpEnter", this.onEnter), this.$bus.$on("keyUpBackspace", this.onBack)
    },
    beforeDestroy: function() {
      this.$bus.$off("keyUpArrowLeft", this.onLeft), this.$bus.$off("keyUpArrowRight", this.onRight), this.$bus.$off("keyUpArrowDown", this.onDown), this.$bus.$off("keyUpArrowUp", this.onUp), this.$bus.$off("keyUpEnter", this.onEnter), this.$bus.$off("keyUpBackspace", this.onBack)
    }
  }
}, function(t, e, n) {
  "use strict";
  Object.defineProperty(e, "__esModule", {
    value: !0
  });
  var s = n(11),
    o = n.n(s),
    i = n(2),
    r = n.n(i),
    a = n(15),
    c = n.n(a),
    u = n(1);
  e.default = {
    components: {
      List: c.a
    },
    data: function() {
      return {}
    },
    computed: r()({}, n.i(u.b)(["contacts"]), {
      lcontacts: function() {
        return [{
          display: "Indtast nummer",
          letter: "+",
          backgroundColor: "orange",
          num: -1
        }].concat(o()(this.contacts))
      }
    }),
    methods: {
      onSelect: function(t) {
        var e = this; - 1 === t.num ? this.$phoneAPI.getReponseText({
          limit: 8
        }).then(function(t) {
          var n = t.text.trim(),
            s = n || 0;
          null != s.match(/^[0-9]+$/) && 8 === s.length && "" !== n && e.$router.push({
            name: "messages.view",
            params: {
              number: n,
              display: n
            }
          })
        }) : this.$router.push({
          name: "messages.view",
          params: t
        })
      },
      back: function() {
        history.back()
      }
    },
    created: function() {
      this.$bus.$on("keyUpBackspace", this.back)
    },
    beforeDestroy: function() {
      this.$bus.$off("keyUpBackspace", this.back)
    }
  }
}, function(t, e, n) {
  "use strict";
  Object.defineProperty(e, "__esModule", {
    value: !0
  });
  var s = n(11),
    o = n.n(s),
    i = n(2),
    r = n.n(i),
    a = n(1),
    c = n(14),
    u = n(3),
    l = n.n(u),
    h = n(8);
  e.default = {
    data: function() {
      return {
        ignoreControls: !1,
        selectMessage: -1,
        display: "",
        phoneNumber: "",
        imgZoom: void 0
      }
    },
    components: {
      PhoneTitle: l.a
    },
    methods: r()({}, n.i(a.a)(["startCall", "setMessageRead", "sendMessage", "deleteMessage"]), {
      resetScroll: function() {
        var t = this;
        this.$nextTick(function() {
          var e = document.querySelector("#sms_list");
          e.scrollTop = e.scrollHeight, t.selectMessage = -1
        })
      },
      scrollIntoViewIfNeeded: function() {
        var t = this;
        this.$nextTick(function() {
          var e = t.$el.querySelector(".select");
          null !== e && e.scrollIntoViewIfNeeded()
        })
      },
      onUp: function() {
        !0 !== this.ignoreControls && (-1 === this.selectMessage ? this.selectMessage = this.messagesList.length - 1 : this.selectMessage = 0 === this.selectMessage ? 0 : this.selectMessage - 1, this.scrollIntoViewIfNeeded())
      },
      onDown: function() {
        !0 !== this.ignoreControls && (-1 === this.selectMessage ? this.selectMessage = this.messagesList.length - 1 : this.selectMessage = this.selectMessage === this.messagesList.length - 1 ? this.selectMessage : this.selectMessage + 1, this.scrollIntoViewIfNeeded())
      },
      onEnter: function() {
        var t = this;
        !0 !== this.ignoreControls && (-1 !== this.selectMessage ? this.onActionMessage() : this.$phoneAPI.getReponseText().then(function(e) {
          var n = e.text.trim();
          "" !== n && t.sendMessage({
            phoneNumber: t.phoneNumber,
            message: n
          })
        }))
      },
      isSMSImage: function(t) {
        return /^https?:\/\/.*\.(png|jpg|jpeg|gif)/.test(t.message)
      },
      onActionMessage: function() {
        var t = this,
          e = this.messagesList[this.selectMessage],
          n = /^GPS: -?\d*(\.\d+), -?\d*(\.\d+)/.test(e.message),
          s = /#([0-9]+)/.test(e.message),
          i = this.isSMSImage(e),
          r = [{
            title: "Slet",
            icons: "fa-circle-o"
          }, {
            title: "Annuller",
            icons: "fa-undo"
          }];
        if (!0 === n && (r = [{
            title: "Sæt GPS",
            icons: "fa-location-arrow"
          }].concat(o()(r))), !0 === s) {
          var a = e.message.match(/#([0-9-]*)/)[1];
          r = [{
            title: "Ring " + a,
            number: a,
            icons: "fa-phone"
          }, {
            title: "SMS " + a,
            number: a,
            icons: "fa-comment"
          }].concat(o()(r))
        }!0 === i && (r = [{
          title: "Zoom",
          icons: "fa-search"
        }].concat(o()(r))), this.ignoreControls = !0, h.a.CreateModal({
          choix: r
        }).then(function(n) {
          if ("Slet" === n.title) - 1 !== t.selectMessage && (t.messages.splice(t.selectMessage, 1), t.selectMessage = -1), t.deleteMessage({
            id: e.id
          });
          else if ("Sæt GPS" === n.title) {
            var s = e.message.match(/((-?)\d+(\.\d+))/g);
            t.$phoneAPI.setGPS(s[0], s[1])
          } else n.title.includes("Ring") ? t.startCall({
            numero: n.number
          }) : void 0 !== n.number ? (t.phoneNumber = n.number, t.display = void 0) : "Zoom" === n.title && (t.imgZoom = e.message);
          t.ignoreControls = !1, t.selectMessage = -1
        })
      },
      onBackspace: function() {
        if (void 0 !== this.imgZoom) return void(this.imgZoom = void 0);
        !0 !== this.ignoreControls && (-1 !== this.selectMessage ? this.selectMessage = -1 : this.$router.push({
          path: "/messages"
        }))
      },
      onRight: function() {
        var t = this;
        !0 !== this.ignoreControls && -1 === this.selectMessage && (this.ignoreControls = !0, h.a.CreateModal({
          choix: [{
            title: "Send GPS Koordinat",
            icons: "fa-location-arrow"
          }, {
            title: "Annuller",
            icons: "fa-undo"
          }]
        }).then(function(e) {
          "Send GPS Koordinat" === e.title && t.sendMessage({
            phoneNumber: t.phoneNumber,
            message: "%pos%"
          }), t.ignoreControls = !1
        }))
      }
    }),
    computed: r()({}, n.i(a.b)(["messages", "contacts"]), {
      messagesList: function() {
        var t = this;
        return this.messages.filter(function(e) {
          return e.transmitter === t.phoneNumber
        }).sort(function(t, e) {
          return t.time - e.time
        })
      },
      displayContact: function() {
        var t = this;
        if (void 0 !== this.display) return this.display;
        var e = this.contacts.find(function(e) {
          return e.number === t.phoneNumber
        });
        return void 0 !== e ? e.display : this.phoneNumber
      },
      color: function() {
        return n.i(c.a)(this.phoneNumber)
      },
      colorSmsOwner: function() {
        return [{
          backgroundColor: this.color,
          color: n.i(c.c)(this.color)
        }, {}]
      }
    }),
    watch: {
      messagesList: function() {
        this.setMessageRead(this.phoneNumber), this.resetScroll()
      }
    },
    created: function() {
      this.display = this.$route.params.display, this.phoneNumber = this.$route.params.number, this.$bus.$on("keyUpArrowDown", this.onDown), this.$bus.$on("keyUpArrowUp", this.onUp), this.$bus.$on("keyUpEnter", this.onEnter), this.$bus.$on("keyUpBackspace", this.onBackspace), this.$bus.$on("keyUpArrowRight", this.onRight)
    },
    beforeDestroy: function() {
      this.$bus.$off("keyUpArrowDown", this.onDown), this.$bus.$off("keyUpArrowUp", this.onUp), this.$bus.$off("keyUpEnter", this.onEnter), this.$bus.$off("keyUpArrowRight", this.onRight), this.$bus.$off("keyUpBackspace", this.onBackspace)
    }
  }
}, function(t, e, n) {
  "use strict";
  Object.defineProperty(e, "__esModule", {
    value: !0
  });
  var s = n(32),
    o = n.n(s),
    i = n(2),
    r = n.n(i),
    a = n(1),
    c = n(14),
    u = n(8),
    l = n(15),
    h = n.n(l);
  e.default = {
    components: {
      List: h.a
    },
    data: function() {
      return {
        nouveauMessage: {
          backgroundColor: "#C0C0C0",
          display: "Ny besked",
          letter: "+",
          id: -1
        },
        disableList: !1
      }
    },
    methods: r()({}, n.i(a.a)(["deleteMessagesNumber", "deleteAllMessages"]), {
      onSelect: function(t) {
        -1 === t.id ? this.$router.push({
          name: "messages.selectcontact"
        }) : this.$router.push({
          name: "messages.view",
          params: t
        })
      },
      onOption: function(t) {
        var e = this;
        void 0 !== t.number && (this.disableList = !0, u.a.CreateModal({
          choix: [{
            id: 1,
            title: "Ryd samtale",
            icons: "fa-circle-o",
            color: "orange"
          }, {
            id: 2,
            title: "Ryd alle samtaler",
            icons: "fa-circle-o",
            color: "red"
          }, {
            id: 3,
            title: "Annuller",
            icons: "fa-undo"
          }]
        }).then(function(n) {
          1 === n.id ? (e.deleteMessagesNumber({
            num: t.number
          }), e.messages.splice(t.number, 1)) : 2 === n.id && (e.deleteAllMessages(), e.messages = []), e.disableList = !1
        }))
      },
      back: function() {
        !0 !== this.disableList && this.$router.push({
          name: "home"
        })
      }
    }),
    computed: r()({}, n.i(a.b)(["contacts", "messages"]), {
      messagesData: function() {
        var t = this.messages,
          e = this.contacts,
          s = t.reduce(function(t, n) {
            if (void 0 === t[n.transmitter]) {
              var s = e.find(function(t) {
                  return t.number === n.transmitter
                }),
                o = void 0 !== s ? s.display : n.transmitter;
              t[n.transmitter] = {
                noRead: 0,
                display: o,
                lastMessage: 0
              }
            }
            return 0 === n.isRead && (t[n.transmitter].noRead += 1), n.time >= t[n.transmitter].lastMessage && (t[n.transmitter].lastMessage = n.time, t[n.transmitter].keyDesc = n.message), t
          }, {}),
          i = [];
        return o()(s).forEach(function(t) {
          i.push({
            display: s[t].display,
            puce: s[t].noRead,
            number: t,
            lastMessage: s[t].lastMessage,
            keyDesc: s[t].keyDesc,
            backgroundColor: n.i(c.a)(t)
          })
        }), i.sort(function(t, e) {
          return e.lastMessage - t.lastMessage
        }), [this.nouveauMessage].concat(i)
      }
    }),
    created: function() {
      this.$bus.$on("keyUpBackspace", this.back)
    },
    beforeDestroy: function() {
      this.$bus.$off("keyUpBackspace", this.back)
    }
  }
}, function(t, e, n) {
  "use strict";
  Object.defineProperty(e, "__esModule", {
    value: !0
  });
  var s = n(5),
    o = n.n(s),
    i = n(4),
    r = n.n(i),
    a = n(2),
    c = n.n(a),
    u = n(1),
    l = n(8),
    h = n(10),
    p = n(3),
    f = n.n(p);
  e.default = {
    components: {
      PhoneTitle: f.a
    },
    data: function() {
      return {
        numero: "",
        keyInfo: [{
          primary: "Send penge",
          secondary: ""
        }],
        keySelect: 0
      }
    },
    methods: c()({}, n.i(u.a)(["MPsendPayment"]), {
      setToNumber: function(t, e, n) {
        this.tonumber = t, this.money = e, this.display = n
      },
      onEnter: function() {
        var t = this;
        return r()(o.a.mark(function e() {
          var n, s;
          return o.a.wrap(function(e) {
            for (;;) switch (e.prev = e.next) {
              case 0:
                if (0 !== t.keySelect) {
                  e.next = 15;
                  break
                }
                if (!0 !== t.ignoreControls) {
                  e.next = 3;
                  break
                }
                return e.abrupt("return");
              case 3:
                return t.ignoreControls = !0, n = [{
                  id: 1,
                  title: "Bekræft",
                  icons: "fa-plus",
                  color: "green"
                }, {
                  id: 2,
                  title: "Annuller",
                  icons: "fa-undo",
                  color: "red"
                }], e.next = 7, l.a.CreateModal({
                  choix: n
                });
              case 7:
                s = e.sent, t.ignoreControls = !1, e.t0 = s.id, e.next = 1 === e.t0 ? 12 : 15;
                break;
              case 12:
                return t.sendPayment(t.tonumber, t.money, t.display), t.$router.push({
                  name: "mobilepay.home"
                }), e.abrupt("break", 15);
              case 15:
              case "end":
                return e.stop()
            }
          }, e, t)
        }))()
      },
      sendPayment: function(t, e, n) {
        var s = this;
        return r()(o.a.mark(function i() {
          return o.a.wrap(function(s) {
            for (;;) switch (s.prev = s.next) {
              case 0:
                h.a.MPsendPayment(t, e, n);
              case 1:
              case "end":
                return s.stop()
            }
          }, i, s)
        }))()
      },
      onBackspace: function() {
        !0 !== this.ignoreControls && this.$router.push({
          name: "mobilepay.contacts",
          params: {
            money: this.money
          }
        })
      }
    }),
    computed: c()({}, n.i(u.b)(["useFormatNumberFrance"]), {
      numeroFormat: function() {
        return Intl.NumberFormat("de-DE", {
          style: "currency",
          currency: "DKK"
        }).format(this.money)
      },
      displaynumber: function() {
        return "" !== this.display ? this.display : this.tonumber
      }
    }),
    created: function() {
      this.$bus.$on("keyUpBackspace", this.onBackspace), this.$bus.$on("keyUpEnter", this.onEnter), this.setToNumber(this.$route.params.number, this.$route.params.money, this.$route.params.display)
    },
    beforeDestroy: function() {
      this.$bus.$off("keyUpBackspace", this.onBackspace), this.$bus.$off("keyUpEnter", this.onEnter)
    }
  }
}, function(t, e, n) {
  "use strict";
  Object.defineProperty(e, "__esModule", {
    value: !0
  });
  var s = n(2),
    o = n.n(s),
    i = n(5),
    r = n.n(i),
    a = n(4),
    c = n.n(a),
    u = n(1),
    l = n(3),
    h = n.n(l);
  e.default = {
    components: {
      PhoneTitle: h.a
    },
    data: function() {
      return {
        numero: "",
        keyInfo: [{
          primary: "1",
          secondary: ""
        }, {
          primary: "2",
          secondary: ""
        }, {
          primary: "3",
          secondary: ""
        }, {
          primary: "4",
          secondary: ""
        }, {
          primary: "5",
          secondary: ""
        }, {
          primary: "6",
          secondary: ""
        }, {
          primary: "7",
          secondary: ""
        }, {
          primary: "8",
          secondary: ""
        }, {
          primary: "9",
          secondary: ""
        }, {
          primary: ",",
          secondary: ""
        }, {
          primary: "0",
          secondary: ""
        }, {
          primary: "Næste",
          secondary: ""
        }],
        keySelect: 0
      }
    },
    methods: {
      onLeft: function() {
        this.keySelect = Math.max(this.keySelect - 1, 0)
      },
      onRight: function() {
        this.keySelect = Math.min(this.keySelect + 1, 11)
      },
      onDown: function() {
        this.keySelect = Math.min(this.keySelect + 3, 11)
      },
      onUp: function() {
        this.keySelect > 2 && (12 === this.keySelect ? this.keySelect = 10 : this.keySelect = this.keySelect - 3)
      },
      onEnter: function() {
        var t = this;
        return c()(r.a.mark(function e() {
          return r.a.wrap(function(e) {
            for (;;) switch (e.prev = e.next) {
              case 0:
                if (11 !== t.keySelect) {
                  e.next = 4;
                  break
                }
                t.numero.length > 0 && t.$router.push({
                  name: "mobilepay.contacts",
                  params: {
                    money: t.numero
                  }
                }), e.next = 9;
                break;
              case 4:
                if (!0 !== t.ignoreControls) {
                  e.next = 6;
                  break
                }
                return e.abrupt("return");
              case 6:
                if (9 !== t.keySelect) {
                  e.next = 8;
                  break
                }
                return e.abrupt("return");
              case 8:
                t.numero += t.keyInfo[t.keySelect].primary;
              case 9:
              case "end":
                return e.stop()
            }
          }, e, t)
        }))()
      },
      onBackspace: function() {
        !0 !== this.ignoreControls && (0 !== this.numero.length ? this.numero = this.numero.slice(0, -1) : this.$router.push({
          name: "home"
        }))
      }
    },
    computed: o()({}, n.i(u.b)(["useFormatNumberFrance"]), {
      numeroFormat: function() {
        return Intl.NumberFormat("de-DE", {
          style: "currency",
          currency: "DKK"
        }).format(this.numero)
      }
    }),
    created: function() {
      this.$bus.$on("keyUpBackspace", this.onBackspace), this.$bus.$on("keyUpArrowLeft", this.onLeft), this.$bus.$on("keyUpArrowRight", this.onRight), this.$bus.$on("keyUpArrowDown", this.onDown), this.$bus.$on("keyUpArrowUp", this.onUp), this.$bus.$on("keyUpEnter", this.onEnter)
    },
    beforeDestroy: function() {
      this.$bus.$off("keyUpBackspace", this.onBackspace), this.$bus.$off("keyUpArrowLeft", this.onLeft), this.$bus.$off("keyUpArrowRight", this.onRight), this.$bus.$off("keyUpArrowDown", this.onDown), this.$bus.$off("keyUpArrowUp", this.onUp), this.$bus.$off("keyUpEnter", this.onEnter)
    }
  }
}, function(t, e, n) {
  "use strict";
  Object.defineProperty(e, "__esModule", {
    value: !0
  });
  var s = n(11),
    o = n.n(s),
    i = n(2),
    r = n.n(i),
    a = n(5),
    c = n.n(a),
    u = n(4),
    l = n.n(u),
    h = n(1),
    p = n(14),
    f = n(15),
    d = n.n(f),
    m = n(3),
    v = n.n(m);
  e.default = {
    name: "Kontakter",
    components: {
      List: d.a,
      PhoneTitle: v.a
    },
    data: function() {
      return {
        money: 0
      }
    },
    methods: {
      setMoney: function(t) {
        this.money = t
      },
      onBackspace: function() {
        !0 !== this.ignoreControls && this.$router.push({
          name: "mobilepay.home"
        })
      },
      onSelect: function(t) {
        var e = this;
        return l()(c.a.mark(function n() {
          var s, o;
          return c.a.wrap(function(n) {
            for (;;) switch (n.prev = n.next) {
              case 0:
                if (void 0 === t) {
                  n.next = 10;
                  break
                }
                if (!0 !== t.custom) {
                  n.next = 9;
                  break
                }
                return n.next = 4, e.$phoneAPI.getReponseText({
                  limit: 8
                });
              case 4:
                s = n.sent, o = s.text || 0, null != o.match(/^[0-9]+$/) && 8 === o.length && e.$router.push({
                  name: "mobilepay.confirm",
                  params: {
                    number: o,
                    money: e.money,
                    display: ""
                  }
                }), n.next = 10;
                break;
              case 9:
                8 === t.number.toString().length && e.$router.push({
                  name: "mobilepay.confirm",
                  params: {
                    number: t.number,
                    money: e.money,
                    display: t.display
                  }
                });
              case 10:
              case "end":
                return n.stop()
            }
          }, n, e)
        }))()
      }
    },
    computed: r()({}, n.i(h.b)(["contacts"]), {
      contactsList: function() {
        return [{
          display: "Indtast nummer",
          letter: "#",
          backgroundColor: "#D32F2F",
          custom: !0
        }].concat(o()(this.contacts.slice(0).map(function(t) {
          return t.backgroundColor = n.i(p.a)(t.number), t
        })))
      }
    }),
    created: function() {
      this.$bus.$on("keyUpBackspace", this.onBackspace), this.setMoney(this.$route.params.money)
    },
    beforeDestroy: function() {
      this.$bus.$off("keyUpBackspace", this.onBackspace)
    }
  }
}, function(t, e, n) {
  "use strict";
  Object.defineProperty(e, "__esModule", {
    value: !0
  }), e.default = {
    created: function() {
      var t = this;
      setTimeout(function() {
        t.$router.push({
          name: "mobilepay.home"
        })
      }, 700)
    }
  }
}, function(t, e, n) {
  "use strict";
  Object.defineProperty(e, "__esModule", {
    value: !0
  }), e.default = {
    name: "Modal",
    data: function() {
      return {
        currentSelect: 0
      }
    },
    props: {
      choix: {
        type: Array,
        default: function() {
          return []
        }
      }
    },
    methods: {
      scrollIntoViewIfNeeded: function() {
        this.$nextTick(function() {
          document.querySelector(".modal-choix.select").scrollIntoViewIfNeeded()
        })
      },
      onUp: function() {
        this.currentSelect = 0 === this.currentSelect ? 0 : this.currentSelect - 1, this.scrollIntoViewIfNeeded()
      },
      onDown: function() {
        this.currentSelect = this.currentSelect === this.choix.length - 1 ? this.currentSelect : this.currentSelect + 1, this.scrollIntoViewIfNeeded()
      },
      onEnter: function() {
        this.$emit("select", this.choix[this.currentSelect])
      },
      cancel: function() {
        this.$emit("cancel")
      }
    },
    created: function() {
      this.$bus.$on("keyUpArrowDown", this.onDown), this.$bus.$on("keyUpArrowUp", this.onUp), this.$bus.$on("keyUpEnter", this.onEnter), this.$bus.$on("keyUpBackspace", this.cancel)
    },
    beforeDestroy: function() {
      this.$bus.$off("keyUpArrowDown", this.onDown), this.$bus.$off("keyUpArrowUp", this.onUp), this.$bus.$off("keyUpEnter", this.onEnter), this.$bus.$off("keyUpBackspace", this.cancel)
    }
  }
}, function(t, e, n) {
  "use strict";
  Object.defineProperty(e, "__esModule", {
    value: !0
  });
  var s = n(32),
    o = n.n(s),
    i = n(5),
    r = n.n(i),
    a = n(4),
    c = n.n(a),
    u = n(2),
    l = n.n(u),
    h = n(1),
    p = n(14),
    f = n(8),
    d = n(15),
    m = n.n(d);
  e.default = {
    components: {
      List: m.a
    },
    data: function() {
      return {
        nouveauMessage: {
          backgroundColor: "#C0C0C0",
          display: "Ny besked",
          letter: "+",
          id: -1
        },
        disableList: !1
      }
    },
    methods: l()({}, n.i(h.a)(["deleteMessagesNumber", "deleteAllMessages"]), {
      onSelect: function(t) {
        -1 === t.id ? this.$router.push({
          name: "messages.selectcontact"
        }) : this.$router.push({
          name: "messages.view",
          params: t
        })
      },
      onRight: function() {
        var t = this;
        return c()(r.a.mark(function e() {
          var n, s;
          return r.a.wrap(function(e) {
            for (;;) switch (e.prev = e.next) {
              case 0:
                if (!0 !== t.ignoreControls) {
                  e.next = 2;
                  break
                }
                return e.abrupt("return");
              case 2:
                return t.ignoreControls = !0, n = [{
                  id: 1,
                  title: "Opret ny note",
                  icons: "fa-plus",
                  color: "green"
                }, {
                  id: 2,
                  title: "Tilbage",
                  icons: "fa-undo"
                }], e.next = 6, f.a.CreateModal({
                  choix: n
                });
              case 6:
                s = e.sent, t.ignoreControls = !1, e.t0 = s.id, e.next = 1 === e.t0 ? 11 : 13;
                break;
              case 11:
                return t.addMessage(), e.abrupt("break", 13);
              case 13:
              case "end":
                return e.stop()
            }
          }, e, t)
        }))()
      },
      back: function() {
        !0 !== this.ignoreControls && this.$router.push({
          name: "home"
        })
      }
    }),
    computed: l()({}, n.i(h.b)(["contacts", "messages"]), {
      messagesData: function() {
        var t = this.messages,
          e = this.contacts,
          s = t.reduce(function(t, n) {
            if (void 0 === t[n.transmitter]) {
              var s = e.find(function(t) {
                  return t.number === n.transmitter
                }),
                o = void 0 !== s ? s.display : n.transmitter;
              t[n.transmitter] = {
                noRead: 0,
                display: o,
                lastMessage: 0
              }
            }
            return 0 === n.isRead && (t[n.transmitter].noRead += 1), n.time >= t[n.transmitter].lastMessage && (t[n.transmitter].lastMessage = n.time, t[n.transmitter].keyDesc = n.message), t
          }, {}),
          i = [];
        return o()(s).forEach(function(t) {
          i.push({
            display: s[t].display,
            puce: s[t].noRead,
            number: t,
            lastMessage: s[t].lastMessage,
            keyDesc: s[t].keyDesc,
            backgroundColor: n.i(p.a)(t)
          })
        }), i.sort(function(t, e) {
          return e.lastMessage - t.lastMessage
        }), [this.nouveauMessage].concat(i)
      }
    }),
    created: function() {
      this.$bus.$on("keyUpBackspace", this.back), this.$bus.$on("keyUpArrowRight", this.onRight)
    },
    beforeDestroy: function() {
      this.$bus.$off("keyUpBackspace", this.back), this.$bus.$off("keyUpArrowRight", this.onRight)
    }
  }
}, function(t, e, n) {
  "use strict";
  Object.defineProperty(e, "__esModule", {
    value: !0
  });
  var s = n(5),
    o = n.n(s),
    i = n(4),
    r = n.n(i),
    a = n(32),
    c = n.n(a),
    u = n(2),
    l = n.n(u),
    h = n(1),
    p = n(3),
    f = n.n(p),
    d = n(8);
  e.default = {
    components: {
      PhoneTitle: f.a
    },
    data: function() {
      return {
        ignoreControls: !1,
        currentSelect: 0
      }
    },
    computed: l()({}, n.i(h.b)(["myPhoneNumber", "backgroundLabel", "coqueLabel", "zoom", "config", "volume", "twitterNotifions"]), {
      paramList: function() {
        return [{
          icons: "fa-phone",
          title: "Mit nummer",
          value: this.myPhoneNumber
        }, {
          icons: "fa-picture-o",
          title: "Baggrund",
          value: this.backgroundLabel,
          onValid: "onChangeBackground",
          values: this.config.background
        }, {
          icons: "fa-phone",
          title: "Telefon",
          value: this.coqueLabel
        }, {
          icons: "fa-search",
          title: "Zoom",
          value: this.zoom,
          onValid: "setZoom",
          onLeft: this.ajustZoom(-1),
          onRight: this.ajustZoom(1),
          values: {
            "125 %": "125%",
            "100 %": "100%",
            "80 %": "80%",
            "60 %": "60%",
            "40 %": "40%",
            "20 %": "20%"
          }
        }, {
          icons: "fa-volume-down",
          title: "Lyd",
          value: this.valumeDisplay,
          onValid: "setPhoneVolume",
          onLeft: this.ajustVolume(-.01),
          onRight: this.ajustVolume(.01),
          values: {
            "100 %": 1,
            "80 %": .8,
            "60 %": .6,
            "40 %": .4,
            "20 %": .2,
            "0 %": 0
          }
        }, {
          icons: "fa-twitter",
          title: "Twitter notifikationer",
          value: this.getTwitterNotify,
          onValid: "setTwitterNoti",
          values: {
            "Slået til": !0,
            "Slået fra": !1
          }
        }, {
          icons: "fa-exclamation-triangle",
          color: "#c0392b",
          title: "Formater",
          onValid: "resetPhone",
          values: {
            "Slet alt": "accept",
            Annuller: "cancel"
          }
        }]
      },
      getTwitterNotify: function() {
        return "true" === this.twitterNotifions.toString() ? "Slået til" : "Slået fra"
      },
      valumeDisplay: function() {
        return Math.floor(100 * this.volume) + " %"
      }
    }),
    methods: l()({}, n.i(h.a)(["setZoon", "setBackground", "setVolume", "setTwitterNotify"]), {
      scrollIntoViewIfNeeded: function() {
        this.$nextTick(function() {
          document.querySelector(".select").scrollIntoViewIfNeeded()
        })
      },
      onBackspace: function() {
        !0 !== this.ignoreControls && this.$router.push({
          name: "home"
        })
      },
      onUp: function() {
        !0 !== this.ignoreControls && (this.currentSelect = 0 === this.currentSelect ? 0 : this.currentSelect - 1, this.scrollIntoViewIfNeeded())
      },
      onDown: function() {
        !0 !== this.ignoreControls && (this.currentSelect = this.currentSelect === this.paramList.length - 1 ? this.currentSelect : this.currentSelect + 1, this.scrollIntoViewIfNeeded())
      },
      onRight: function() {
        if (!0 !== this.ignoreControls) {
          var t = this.paramList[this.currentSelect];
          void 0 !== t.onRight && t.onRight(t)
        }
      },
      onLeft: function() {
        if (!0 !== this.ignoreControls) {
          var t = this.paramList[this.currentSelect];
          void 0 !== t.onLeft && t.onLeft(t)
        }
      },
      onEnter: function() {
        var t = this;
        if (!0 !== this.ignoreControls) {
          var e = this.paramList[this.currentSelect];
          if (void 0 !== e.values) {
            this.ignoreControls = !0;
            var n = c()(e.values).map(function(t) {
              return {
                title: t,
                value: e.values[t],
                picto: e.values[t]
              }
            });
            d.a.CreateModal({
              choix: n
            }).then(function(n) {
              t.ignoreControls = !1, "cancel" !== n.title && t[e.onValid](e, n)
            })
          }
        }
      },
      onChangeBackground: function(t, e) {
        var n = this;
        return r()(o.a.mark(function t() {
          var s;
          return o.a.wrap(function(t) {
            for (;;) switch (t.prev = t.next) {
              case 0:
                s = e.value, "URL" === s ? n.$phoneAPI.getReponseText({
                  text: "https://i.imgur.com/"
                }).then(function(t) {
                  "" !== t.text && void 0 !== t.text && null !== t.text && "https://i.imgur.com/" !== t.text && n.setBackground({
                    label: "Custom",
                    value: t.text
                  })
                }) : n.setBackground({
                  label: e.title,
                  value: e.value
                });
              case 2:
              case "end":
                return t.stop()
            }
          }, t, n)
        }))()
      },
      setZoom: function(t, e) {
        this.setZoon(e.value)
      },
      ajustZoom: function(t) {
        var e = this;
        return function() {
          var n = Math.max(10, (parseInt(e.zoom) || 100) + t);
          e.setZoon(n + "%")
        }
      },
      setPhoneVolume: function(t, e) {
        this.setVolume(e.value)
      },
      setTwitterNoti: function(t, e) {
        this.setTwitterNotify(e.value)
      },
      ajustVolume: function(t) {
        var e = this;
        return function() {
          var n = Math.max(0, Math.min(1, parseFloat(e.volume) + t));
          e.setVolume(n)
        }
      },
      resetPhone: function(t, e) {
        var n = this;
        if ("Annuller" !== e.title) {
          this.ignoreControls = !0;
          var s = [{
            title: "Annuller"
          }, {
            title: "Annuller"
          }, {
            title: "Slet",
            color: "red"
          }, {
            title: "Annuller"
          }, {
            title: "Annuller"
          }];
          d.a.CreateModal({
            choix: s
          }).then(function(t) {
            n.ignoreControls = !1, "Slet" === t.title && n.$phoneAPI.deleteALL()
          })
        }
      }
    }),
    created: function() {
      this.$bus.$on("keyUpArrowRight", this.onRight), this.$bus.$on("keyUpArrowLeft", this.onLeft), this.$bus.$on("keyUpArrowDown", this.onDown), this.$bus.$on("keyUpArrowUp", this.onUp), this.$bus.$on("keyUpEnter", this.onEnter), this.$bus.$on("keyUpBackspace", this.onBackspace)
    },
    beforeDestroy: function() {
      this.$bus.$off("keyUpArrowRight", this.onRight), this.$bus.$off("keyUpArrowLeft", this.onLeft), this.$bus.$off("keyUpArrowDown", this.onDown), this.$bus.$off("keyUpArrowUp", this.onUp), this.$bus.$off("keyUpEnter", this.onEnter), this.$bus.$off("keyUpBackspace", this.onBackspace)
    }
  }
}, function(t, e, n) {
  "use strict";
  Object.defineProperty(e, "__esModule", {
    value: !0
  });
  var s = n(2),
    o = n.n(s),
    i = n(1),
    r = n(24),
    a = n.n(r);
  e.default = {
    components: {
      InfoBare: a.a
    },
    computed: o()({}, n.i(i.b)(["themeColor"]), {
      style: function() {
        return {
          backgroundColor: this.backgroundColor || this.themeColor,
          color: this.color || "#FFF"
        }
      }
    }),
    props: {
      title: {
        type: String,
        required: !0
      },
      showInfoBare: {
        type: Boolean,
        default: !0
      },
      borderBottom: {
        type: Boolean,
        default: !1
      },
      ImgInPhoneTitle: {
        type: String
      },
      backgroundColor: {
        type: String
      }
    }
  }
}, function(t, e, n) {
  "use strict";
  Object.defineProperty(e, "__esModule", {
    value: !0
  });
  var s = n(10);
  e.default = {
    created: function() {
      s.a.takePhoto()
    }
  }
}, function(t, e, n) {
  "use strict";
  Object.defineProperty(e, "__esModule", {
    value: !0
  });
  var s = n(5),
    o = n.n(s),
    i = n(4),
    r = n.n(i),
    a = n(2),
    c = n.n(a),
    u = n(1),
    l = n(8),
    h = n(3),
    p = n.n(h);
  e.default = {
    components: {
      PhoneTitle: p.a
    },
    data: function() {
      return {
        currentSelect: 0,
        ignoreControls: !1
      }
    },
    watch: {
      list: function() {
        this.currentSelect = 0
      }
    },
    computed: c()({}, n.i(u.b)(["tchatChannels", "Apps"]), {
      title: function() {
        var t = this.Apps.find(function(t) {
          return "tchat" === t.routeName
        });
        return void 0 === t ? "Tor Chat" : t.name
      }
    }),
    methods: c()({}, n.i(u.a)(["tchatAddChannel", "tchatRemoveChannel"]), {
      scrollIntoViewIfNeeded: function() {
        var t = this;
        this.$nextTick(function() {
          t.$el.querySelector(".select").scrollIntoViewIfNeeded()
        })
      },
      onUp: function() {
        !0 !== this.ignoreControls && (this.currentSelect = 0 === this.currentSelect ? 0 : this.currentSelect - 1, this.scrollIntoViewIfNeeded())
      },
      onDown: function() {
        !0 !== this.ignoreControls && (this.currentSelect = this.currentSelect === this.tchatChannels.length - 1 ? this.currentSelect : this.currentSelect + 1, this.scrollIntoViewIfNeeded())
      },
      onRight: function() {
        var t = this;
        return r()(o.a.mark(function e() {
          var n, s;
          return o.a.wrap(function(e) {
            for (;;) switch (e.prev = e.next) {
              case 0:
                if (!0 !== t.ignoreControls) {
                  e.next = 2;
                  break
                }
                return e.abrupt("return");
              case 2:
                return t.ignoreControls = !0, n = [{
                  id: 1,
                  title: "Tilføj en kanal",
                  icons: "fa-plus",
                  color: "green"
                }, {
                  id: 2,
                  title: "Slet",
                  icons: "fa-circle-o",
                  color: "orange"
                }, {
                  id: 3,
                  title: "Tilbage",
                  icons: "fa-undo"
                }], 0 === t.tchatChannels.length && n.splice(1, 1), e.next = 7, l.a.CreateModal({
                  choix: n
                });
              case 7:
                s = e.sent, t.ignoreControls = !1, e.t0 = s.id, e.next = 1 === e.t0 ? 12 : 2 === e.t0 ? 14 : (e.t0, 16);
                break;
              case 12:
                return t.addChannelOption(), e.abrupt("break", 16);
              case 14:
                return t.removeChannelOption(), e.abrupt("break", 16);
              case 16:
              case "end":
                return e.stop()
            }
          }, e, t)
        }))()
      },
      onEnter: function() {
        var t = this;
        return r()(o.a.mark(function e() {
          var n, s, i;
          return o.a.wrap(function(e) {
            for (;;) switch (e.prev = e.next) {
              case 0:
                if (!0 !== t.ignoreControls) {
                  e.next = 2;
                  break
                }
                return e.abrupt("return");
              case 2:
                if (0 !== t.tchatChannels.length) {
                  e.next = 12;
                  break
                }
                return t.ignoreControls = !0, n = [{
                  id: 1,
                  title: "Tilføj en kanal",
                  icons: "fa-plus",
                  color: "green"
                }, {
                  id: 3,
                  title: "Tilbage",
                  icons: "fa-undo"
                }], e.next = 7, l.a.CreateModal({
                  choix: n
                });
              case 7:
                s = e.sent, t.ignoreControls = !1, 1 === s.id && t.addChannelOption(), e.next = 14;
                break;
              case 12:
                i = t.tchatChannels[t.currentSelect].channel, t.$router.push({
                  name: "tchat.channel.show",
                  params: {
                    channel: i
                  }
                });
              case 14:
              case "end":
                return e.stop()
            }
          }, e, t)
        }))()
      },
      onBack: function() {
        !0 !== this.ignoreControls && this.$router.push({
          name: "home"
        })
      },
      addChannelOption: function() {
        var t = this;
        return r()(o.a.mark(function e() {
          var n, s;
          return o.a.wrap(function(e) {
            for (;;) switch (e.prev = e.next) {
              case 0:
                return e.next = 2, t.$phoneAPI.getReponseText({
                  limit: 20
                });
              case 2:
                n = e.sent, s = (n || {}).text || "", s = s.toLowerCase().replace(/[^a-z]/g, ""), s.length > 0 && t.tchatAddChannel({
                  channel: s
                });
              case 6:
              case "end":
                return e.stop()
            }
          }, e, t)
        }))()
      },
      removeChannelOption: function() {
        var t = this;
        return r()(o.a.mark(function e() {
          var n;
          return o.a.wrap(function(e) {
            for (;;) switch (e.prev = e.next) {
              case 0:
                n = t.tchatChannels[t.currentSelect].channel, t.tchatRemoveChannel({
                  channel: n
                });
              case 2:
              case "end":
                return e.stop()
            }
          }, e, t)
        }))()
      }
    }),
    created: function() {
      this.$bus.$on("keyUpArrowDown", this.onDown), this.$bus.$on("keyUpArrowUp", this.onUp), this.$bus.$on("keyUpArrowRight", this.onRight), this.$bus.$on("keyUpEnter", this.onEnter), this.$bus.$on("keyUpBackspace", this.onBack)
    },
    beforeDestroy: function() {
      this.$bus.$off("keyUpArrowDown", this.onDown), this.$bus.$off("keyUpArrowUp", this.onUp), this.$bus.$off("keyUpArrowRight", this.onRight), this.$bus.$off("keyUpEnter", this.onEnter), this.$bus.$off("keyUpBackspace", this.onBack)
    }
  }
}, function(t, e, n) {
  "use strict";

  function s(t) {
    return 1 === t.toString().length && (t = "0" + t), t
  }
  Object.defineProperty(e, "__esModule", {
    value: !0
  });
  var o = n(5),
    i = n.n(o),
    r = n(4),
    a = n.n(r),
    c = n(2),
    u = n.n(c),
    l = n(1),
    h = n(3),
    p = n.n(h);
  e.default = {
    components: {
      PhoneTitle: p.a
    },
    data: function() {
      return {
        channel: "",
        currentSelect: 0
      }
    },
    computed: u()({}, n.i(l.b)(["tchatMessages", "tchatCurrentChannel"]), {
      channelName: function() {
        return "# " + this.channel
      }
    }),
    methods: u()({
      setChannel: function(t) {
        this.channel = t, this.tchatSetChannel({
          channel: t
        })
      }
    }, n.i(l.a)(["tchatSetChannel", "tchatSendMessage"]), {
      onUp: function() {
        var t = this.$refs.elementsDiv;
        t.scrollTop = t.scrollTop - 120
      },
      onDown: function() {
        var t = this.$refs.elementsDiv;
        t.scrollTop = t.scrollTop + 120
      },
      onEnter: function() {
        var t = this;
        return a()(i.a.mark(function e() {
          var n, s;
          return i.a.wrap(function(e) {
            for (;;) switch (e.prev = e.next) {
              case 0:
                return e.next = 2, t.$phoneAPI.getReponseText();
              case 2:
                n = e.sent, void 0 !== n && void 0 !== n.text && (s = n.text.trim(), 0 !== s.length && (t.tchatSendMessage({
                  channel: t.channel,
                  message: s
                }), t.scrollToTop()));
              case 4:
              case "end":
                return e.stop()
            }
          }, e, t)
        }))()
      },
      onBack: function() {
        this.$router.push({
          name: "tchat.channel"
        })
      },
      scrollToTop: function() {
        this.$refs.elementsDiv.scrollTop = 0
      },
      formatTime: function(t) {
        var e = new Date(t);
        return e = s(e.getHours()) + ":" + s(e.getMinutes())
      },
      formatDate: function(t) {
        var e = new Date(t),
          n = e.getFullYear().toString().match(/.{1,2}/g)[1];
        return e = s(e.getDate()) + "/" + s(e.getMonth() + 1) + "/" + s(n)
      },
      formatUser: function(t) {
        return t += 3668, parseInt(t)
      }
    }),
    created: function() {
      this.$bus.$on("keyUpArrowDown", this.onDown), this.$bus.$on("keyUpArrowUp", this.onUp), this.$bus.$on("keyUpEnter", this.onEnter), this.$bus.$on("keyUpBackspace", this.onBack), this.setChannel(this.$route.params.channel)
    },
    mounted: function() {
      window.c = this.$refs.elementsDiv;
      var t = this.$refs.elementsDiv;
      t.scrollTop = t.scrollHeight
    },
    beforeDestroy: function() {
      this.$bus.$off("keyUpArrowDown", this.onDown), this.$bus.$off("keyUpArrowUp", this.onUp), this.$bus.$off("keyUpEnter", this.onEnter), this.$bus.$off("keyUpBackspace", this.onBack)
    }
  }
}, function(t, e, n) {
  "use strict";
  Object.defineProperty(e, "__esModule", {
    value: !0
  }), e.default = {
    created: function() {
      var t = this;
      setTimeout(function() {
        t.$router.push({
          name: "tchat.channel"
        })
      }, 700)
    }
  }
}, function(t, e, n) {
  "use strict";
  Object.defineProperty(e, "__esModule", {
    value: !0
  });
  var s = n(5),
    o = n.n(s),
    i = n(4),
    r = n.n(i),
    a = n(2),
    c = n.n(a),
    u = n(1),
    l = n(8),
    h = n(3),
    p = n.n(h);
  e.default = {
    components: {
      PhoneTitle: p.a
    },
    data: function() {
      return {
        currentSelect: 0,
        ignoreControls: !1
      }
    },
    watch: {
      list: function() {
        this.currentSelect = 0
      }
    },
    computed: c()({}, n.i(u.b)(["twitterMessages", "Apps"]), {
      title: function() {
        var t = this.Apps.find(function(t) {
          return "twitter" === t.routeName
        });
        return void 0 === t ? "Twitter" : t.name
      }
    }),
    methods: c()({}, n.i(u.a)(["twitterSendMessage"]), {
      scrollIntoViewIfNeeded: function() {
        var t = this;
        this.$nextTick(function() {
          t.$el.querySelector(".select").scrollIntoViewIfNeeded()
        })
      },
      onUp: function() {
        !0 !== this.ignoreControls && (this.currentSelect = 0 === this.currentSelect ? 0 : this.currentSelect - 1, this.scrollIntoViewIfNeeded())
      },
      onDown: function() {
        !0 !== this.ignoreControls && (this.currentSelect = this.currentSelect === this.twitterMessages.length - 1 ? this.currentSelect : this.currentSelect + 1, this.scrollIntoViewIfNeeded())
      },
      onRight: function() {
        var t = this;
        return r()(o.a.mark(function e() {
          var n, s;
          return o.a.wrap(function(e) {
            for (;;) switch (e.prev = e.next) {
              case 0:
                if (!0 !== t.ignoreControls) {
                  e.next = 2;
                  break
                }
                return e.abrupt("return");
              case 2:
                return t.ignoreControls = !0, n = [{
                  id: 1,
                  title: "Skriv tweet",
                  icons: "fa-plus",
                  color: "green"
                }, {
                  id: 2,
                  title: "Tilbage",
                  icons: "fa-undo"
                }], 0 === t.twitterMessages.length && n.splice(1, 1), e.next = 7, l.a.CreateModal({
                  choix: n
                });
              case 7:
                s = e.sent, t.ignoreControls = !1, e.t0 = s.id, e.next = 1 === e.t0 ? 12 : 14;
                break;
              case 12:
                return t.addMessage(), e.abrupt("break", 14);
              case 14:
              case "end":
                return e.stop()
            }
          }, e, t)
        }))()
      },
      onEnter: function() {
        var t = this;
        return r()(o.a.mark(function e() {
          return o.a.wrap(function(t) {
            for (;;) switch (t.prev = t.next) {
              case 0:
              case "end":
                return t.stop()
            }
          }, e, t)
        }))()
      },
      onBack: function() {
        !0 !== this.ignoreControls && this.$router.push({
          name: "home"
        })
      },
      addMessage: function() {
        var t = this;
        return r()(o.a.mark(function e() {
          var n, s;
          return o.a.wrap(function(e) {
            for (;;) switch (e.prev = e.next) {
              case 0:
                return e.next = 2, t.$phoneAPI.getReponseText({
                  limit: 200
                });
              case 2:
                n = e.sent, s = (n || {}).text || "", s.length > 1 && (t.twitterSendMessage({
                  message: s
                }), t.currentSelect = 0, t.scrollIntoViewIfNeeded());
              case 5:
              case "end":
                return e.stop()
            }
          }, e, t)
        }))()
      }
    }),
    created: function() {
      this.$bus.$on("keyUpArrowDown", this.onDown), this.$bus.$on("keyUpArrowUp", this.onUp), this.$bus.$on("keyUpArrowRight", this.onRight), this.$bus.$on("keyUpEnter", this.onEnter), this.$bus.$on("keyUpBackspace", this.onBack)
    },
    beforeDestroy: function() {
      this.$bus.$off("keyUpArrowDown", this.onDown), this.$bus.$off("keyUpArrowUp", this.onUp), this.$bus.$off("keyUpArrowRight", this.onRight), this.$bus.$off("keyUpEnter", this.onEnter), this.$bus.$off("keyUpBackspace", this.onBack)
    }
  }
}, function(t, e, n) {
  "use strict";
  Object.defineProperty(e, "__esModule", {
    value: !0
  }), e.default = {
    created: function() {
      var t = this;
      setTimeout(function() {
        t.$router.push({
          name: "twitter.home"
        })
      }, 700)
    }
  }
}, , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , function(t, e) {}, function(t, e) {}, function(t, e) {}, function(t, e) {}, function(t, e) {}, function(t, e) {}, function(t, e) {}, function(t, e) {}, function(t, e) {}, function(t, e) {}, function(t, e) {}, function(t, e) {}, function(t, e) {}, function(t, e) {}, function(t, e) {}, function(t, e) {}, function(t, e) {}, function(t, e) {}, function(t, e) {}, function(t, e) {}, function(t, e) {}, function(t, e) {}, function(t, e) {}, function(t, e) {}, function(t, e) {}, function(t, e) {}, function(t, e) {}, function(t, e) {}, function(t, e) {}, function(t, e) {}, function(t, e) {}, function(t, e) {}, function(t, e) {}, function(t, e) {}, function(t, e) {}, function(t, e) {}, , , , , , function(t, e, n) {
  function s(t) {
    n(184)
  }
  var o = n(0)(n(80), n(255), s, "data-v-6a46c302", null);
  t.exports = o.exports
}, function(t, e, n) {
  function s(t) {
    n(172)
  }
  var o = n(0)(n(81), n(243), s, "data-v-26ec6c14", null);
  t.exports = o.exports
}, function(t, e, n) {
  function s(t) {
    n(192)
  }
  var o = n(0)(n(82), n(263), s, "data-v-d2b698c8", null);
  t.exports = o.exports
}, function(t, e, n) {
  function s(t) {
    n(189)
  }
  var o = n(0)(n(83), n(260), s, "data-v-9104422e", null);
  t.exports = o.exports
}, function(t, e, n) {
  function s(t) {
    n(165)
  }
  var o = n(0)(n(84), n(236), s, "data-v-0c8c5d42", null);
  t.exports = o.exports
}, function(t, e, n) {
  function s(t) {
    n(163)
  }
  var o = n(0)(n(85), n(234), s, "data-v-0570365f", null);
  t.exports = o.exports
}, function(t, e, n) {
  function s(t) {
    n(164)
  }
  var o = n(0)(n(86), n(235), s, "data-v-07b6e6d2", null);
  t.exports = o.exports
}, function(t, e, n) {
  function s(t) {
    n(187)
  }
  var o = n(0)(n(87), n(258), s, "data-v-821f15d4", null);
  t.exports = o.exports
}, function(t, e, n) {
  var s = n(0)(n(88), null, null, null, null);
  t.exports = s.exports
}, function(t, e, n) {
  function s(t) {
    n(182)
  }
  var o = n(0)(n(89), n(253), s, "data-v-5d567654", null);
  t.exports = o.exports
}, function(t, e, n) {
  function s(t) {
    n(168)
  }
  var o = n(0)(n(90), n(239), s, "data-v-168e4766", null);
  t.exports = o.exports
}, function(t, e, n) {
  function s(t) {
    n(190)
  }
  var o = n(0)(n(91), n(261), s, "data-v-b3e36314", null);
  t.exports = o.exports
}, function(t, e, n) {
  function s(t) {
    n(194)
  }
  var o = n(0)(n(92), n(265), s, "data-v-e5131126", null);
  t.exports = o.exports
}, function(t, e, n) {
  function s(t) {
    n(171)
  }
  var o = n(0)(n(93), n(242), s, "data-v-235696e8", null);
  t.exports = o.exports
}, function(t, e, n) {
  function s(t) {
    n(188)
  }
  var o = n(0)(n(96), n(259), s, "data-v-90be2438", null);
  t.exports = o.exports
}, function(t, e, n) {
  function s(t) {
    n(170)
  }
  var o = n(0)(n(97), n(241), s, null, null);
  t.exports = o.exports
}, function(t, e, n) {
  function s(t) {
    n(191)
  }
  var o = n(0)(n(98), n(262), s, "data-v-d0428988", null);
  t.exports = o.exports
}, function(t, e, n) {
  function s(t) {
    n(162)
  }
  var o = n(0)(n(99), n(233), s, "data-v-01104696", null);
  t.exports = o.exports
}, function(t, e, n) {
  function s(t) {
    n(181)
  }
  var o = n(0)(n(100), n(252), s, "data-v-55f1ad54", null);
  t.exports = o.exports
}, function(t, e, n) {
  function s(t) {
    n(166)
  }
  var o = n(0)(n(101), n(237), s, "data-v-11ed0aec", null);
  t.exports = o.exports
}, function(t, e, n) {
  function s(t) {
    n(179)
  }
  var o = n(0)(n(102), n(250), s, "data-v-4ab6523a", null);
  t.exports = o.exports
}, function(t, e, n) {
  function s(t) {
    n(195)
  }
  var o = n(0)(n(103), n(266), s, "data-v-f75d241a", null);
  t.exports = o.exports
}, function(t, e, n) {
  function s(t) {
    n(178)
  }
  var o = n(0)(n(104), n(249), s, "data-v-3b02d9b7", null);
  t.exports = o.exports
}, function(t, e, n) {
  function s(t) {
    n(185)
  }
  var o = n(0)(n(105), n(256), s, "data-v-6cc9c1b2", null);
  t.exports = o.exports
}, function(t, e, n) {
  function s(t) {
    n(169)
  }
  var o = n(0)(n(106), n(240), s, "data-v-193a48d0", null);
  t.exports = o.exports
}, function(t, e, n) {
  function s(t) {
    n(180)
  }
  var o = n(0)(n(107), n(251), s, "data-v-4d7b8c36", null);
  t.exports = o.exports
}, function(t, e, n) {
  var s = n(0)(n(109), null, null, null, null);
  t.exports = s.exports
}, function(t, e, n) {
  function s(t) {
    n(176)
  }
  var o = n(0)(n(110), n(247), s, "data-v-3967a7e3", null);
  t.exports = o.exports
}, function(t, e, n) {
  function s(t) {
    n(167)
  }
  var o = n(0)(n(111), n(238), s, "data-v-15f3ee32", null);
  t.exports = o.exports
}, function(t, e, n) {
  function s(t) {
    n(183)
  }
  var o = n(0)(n(112), n(254), s, "data-v-5fdffa03", null);
  t.exports = o.exports
}, function(t, e, n) {
  function s(t) {
    n(175)
  }
  var o = n(0)(n(113), n(246), s, "data-v-310f8cbd", null);
  t.exports = o.exports
}, function(t, e, n) {
  function s(t) {
    n(174)
  }
  var o = n(0)(n(114), n(245), s, "data-v-2c2f1591", null);
  t.exports = o.exports
}, function(t, e) {
  t.exports = {
    render: function() {
      var t = this,
        e = t.$createElement,
        n = t._self._c || e;
      return n("div", {
        staticClass: "phone_app messages"
      }, [n("PhoneTitle", {
        attrs: {
          title: t.displayContact,
          backgroundColor: t.color
        }
      }), t._v(" "), void 0 !== t.imgZoom ? n("div", {
        staticClass: "img-fullscreen"
      }, [n("img", {
        attrs: {
          src: t.imgZoom
        }
      })]) : t._e(), t._v(" "), n("div", {
        attrs: {
          id: "sms_list"
        }
      }, t._l(t.messagesList, function(e, s) {
        return n("div", {
          key: e.id,
          staticClass: "sms",
          class: {
            select: s === t.selectMessage
          }
        }, [n("span", {
          staticClass: "sms_message sms_me",
          class: {
            sms_other: 0 === e.owner
          },
          style: t.colorSmsOwner[e.owner]
        }, [t.isSMSImage(e) ? n("img", {
          staticClass: "sms-img",
          attrs: {
            src: e.message
          }
        }) : n("span", [t._v(t._s(e.message))]), t._v(" "), n("span", [n("timeago", {
          staticClass: "sms_time",
          style: t.colorSmsOwner[e.owner],
          attrs: {
            since: e.time,
            "auto-update": 20
          }
        })], 1)])])
      })), t._v(" "), n("div", {
        attrs: {
          id: "sms_write"
        }
      }, [n("input", {
        attrs: {
          type: "text",
          placeholder: "Send en besked"
        }
      }), t._v(" "), n("div", {
        staticClass: "sms_send"
      }, [n("svg", {
        attrs: {
          height: "24",
          viewBox: "0 0 24 24",
          width: "24"
        }
      }, [n("path", {
        attrs: {
          d: "M2.01 21L23 12 2.01 3 2 10l15 2-15 2z"
        }
      }), t._v(" "), n("path", {
        attrs: {
          d: "M0 0h24v24H0z",
          fill: "none"
        }
      })])])])], 1)
    },
    staticRenderFns: []
  }
}, function(t, e) {
  t.exports = {
    render: function() {
      var t = this,
        e = t.$createElement,
        n = t._self._c || e;
      return n("div", {
        staticClass: "phone_app"
      }, [n("PhoneTitle", {
        attrs: {
          title: "Telefon"
        }
      }), t._v(" "), n("div", {
        staticClass: "content"
      }, [n("div", {
        staticClass: "number"
      }, [t._v("\n     " + t._s(t.numeroFormat) + "\n   ")]), t._v(" "), n("div", {
        staticClass: "keyboard"
      }, t._l(t.keyInfo, function(e, s) {
        return n("div", {
          key: e.primary,
          staticClass: "key",
          class: {
            "key-select": s === t.keySelect, keySpe: !0 === e.isNotNumber
          }
        }, [n("span", {
          staticClass: "key-primary"
        }, [t._v(t._s(e.primary))]), t._v(" "), n("span", {
          staticClass: "key-secondary"
        }, [t._v(t._s(e.secondary))])])
      })), t._v(" "), n("div", {
        staticClass: "call"
      }, [n("div", {
        staticClass: "call-btn",
        class: {
          active: 12 === t.keySelect
        }
      }, [n("svg", {
        attrs: {
          viewBox: "0 0 24 24"
        }
      }, [n("g", {
        attrs: {
          transform: "rotate(0, 12, 12)"
        }
      }, [n("path", {
        attrs: {
          d: "M6.62,10.79C8.06,13.62 10.38,15.94 13.21,17.38L15.41,15.18C15.69,14.9 16.08,14.82 16.43,14.93C17.55,15.3 18.75,15.5 20,15.5A1,1 0 0,1 21,16.5V20A1,1 0 0,1 20,21A17,17 0 0,1 3,4A1,1 0 0,1 4,3H7.5A1,1 0 0,1 8.5,4C8.5,5.25 8.7,6.45 9.07,7.57C9.18,7.92 9.1,8.31 8.82,8.59L6.62,10.79Z"
        }
      })])])])])])], 1)
    },
    staticRenderFns: []
  }
}, function(t, e) {
  t.exports = {
    render: function() {
      var t = this,
        e = t.$createElement,
        n = t._self._c || e;
      return n("div", {
        staticClass: "phone_app"
      }, [n("div", {
        staticClass: "elements"
      }, t._l(t.historique, function(e, s) {
        return n("div", {
          key: s,
          staticClass: "element",
          class: {
            active: t.selectIndex === s
          }
        }, [n("div", {
          staticClass: "elem-pic",
          style: {
            backgroundColor: e.color
          }
        }, [t._v(t._s(e.letter))]), t._v(" "), n("div", {
          staticClass: "elem-content"
        }, [n("div", {
          staticClass: "elem-content-p"
        }, [t._v(t._s(e.display))]), t._v(" "), n("div", {
          staticClass: "elem-content-s"
        }, [t._l(e.lastCall, function(e, s) {
          return n("div", {
            key: s,
            staticClass: "elem-histo-pico",
            class: {
              reject: !1 === e.accept
            }
          }, [1 === e.accepts && 1 === e.incoming ? n("svg", {
            attrs: {
              viewBox: "0 0 24 24",
              fill: "#43a047"
            }
          }, [n("path", {
            attrs: {
              d: "M9,5v2h6.59L4,18.59L5.41,20L17,8.41V15h2V5H9z"
            }
          })]) : 1 === e.accepts && 0 === e.incoming ? n("svg", {
            attrs: {
              viewBox: "0 0 24 24",
              fill: "#43a047"
            }
          }, [n("path", {
            attrs: {
              d: "M20,5.41L18.59,4L7,15.59V9H5v10h10v-2H8.41L20,5.41z"
            }
          })]) : 0 === e.accepts && 1 === e.incoming ? n("svg", {
            attrs: {
              viewBox: "0 0 24 24",
              fill: "#D32F2F"
            }
          }, [n("path", {
            attrs: {
              d: "M3,8.41l9,9l7-7V15h2V7h-8v2h4.59L12,14.59L4.41,7L3,8.41z"
            }
          })]) : 0 === e.accepts && 0 === e.incoming ? n("svg", {
            attrs: {
              viewBox: "0 0 24 24",
              fill: "#D32F2F"
            }
          }, [n("path", {
            attrs: {
              d: "M19.59,7L12,14.59L6.41,9H11V7H3v8h2v-4.59l7,7l9-9L19.59,7z"
            }
          })]) : t._e()])
        }), t._v(" "), 0 !== e.lastCall.length ? n("div", {
          staticClass: "lastCall"
        }, [n("timeago", {
          attrs: {
            since: e.lastCall[0].date,
            "auto-update": 20
          }
        })], 1) : t._e()], 2)]), t._v(" "), t._m(0, !0)])
      }))])
    },
    staticRenderFns: [function() {
      var t = this,
        e = t.$createElement,
        n = t._self._c || e;
      return n("div", {
        staticClass: "elem-icon"
      }, [n("i", {
        staticClass: "fa fa-phone"
      })])
    }]
  }
}, function(t, e) {
  t.exports = {
    render: function() {
      var t = this,
        e = t.$createElement,
        n = t._self._c || e;
      return n("div", [n("list", {
        attrs: {
          list: t.callList,
          showHeader: !1,
          disable: t.ignoreControls
        },
        on: {
          select: t.onSelect
        }
      })], 1)
    },
    staticRenderFns: []
  }
}, function(t, e) {
  t.exports = {
    render: function() {
      var t = this,
        e = t.$createElement,
        n = t._self._c || e;
      return n("div", {
        staticClass: "phone_app twitter"
      }, [n("PhoneTitle", {
        attrs: {
          title: "MobilePay",
          backgroundColor: "#4a73fa",
          borderBottom: "",
          ImgInPhoneTitle: "/html/static/img/app_mobilepay/mobilepay.png"
        }
      }), t._v(" "), n("div", {
        staticClass: "elements"
      }, [n("div", {
        staticClass: "content"
      }, [n("div", {
        staticClass: "number"
      }, [t._v("\n              " + t._s(t.numeroFormat) + "\n          ")]), t._v(" "), n("div", {
        staticClass: "display"
      }, [n("span", [t._v("Modtager:")]), t._v(" "), n("span", [t._v(t._s(t.displaynumber))])]), t._v(" "), n("div", {
        staticClass: "keyboard"
      }, t._l(t.keyInfo, function(e, s) {
        return n("div", {
          key: e.primary,
          staticClass: "key",
          class: {
            "key-select": s === t.keySelect, keySpe: !0 === e.isNotNumber
          }
        }, [n("span", {
          staticClass: "key-primary"
        }, [t._v(t._s(e.primary))]), t._v(" "), n("span", {
          staticClass: "key-secondary"
        }, [t._v(t._s(e.secondary))])])
      }))])])], 1)
    },
    staticRenderFns: []
  }
}, function(t, e) {
  t.exports = {
    render: function() {
      var t = this,
        e = t.$createElement,
        n = t._self._c || e;
      return n("div", {
        staticClass: "phone_app"
      }, [n("PhoneTitle", {
        attrs: {
          title: t.channelName,
          backgroundColor: "#090f20"
        }
      }), t._v(" "), n("div", {
        staticClass: "phone_content"
      }, [n("div", {
        ref: "elementsDiv",
        staticClass: "elements"
      }, t._l(t.tchatMessages, function(e) {
        return n("div", {
          key: e.id,
          staticClass: "element"
        }, [n("div", {
          staticClass: "time"
        }, [n("span", [t._v(t._s(t.formatTime(e.time)))]), t._v(" "), n("span", [t._v(t._s(t.formatDate(e.time)))])]), t._v(" "), n("div", {
          staticClass: "user"
        }, [n("span", [t._v("user" + t._s(t.formatUser(e.userid)))])]), t._v(" "), n("div", {
          staticClass: "message"
        }, [t._v("\n            " + t._s(e.message) + "\n          ")])])
      })), t._v(" "), t._m(0)])], 1)
    },
    staticRenderFns: [function() {
      var t = this,
        e = t.$createElement,
        n = t._self._c || e;
      return n("div", {
        staticClass: "tchat_write"
      }, [n("input", {
        attrs: {
          type: "text",
          placeholder: "Send en besked"
        }
      }), t._v(" "), n("span", {
        staticClass: "tchat_send"
      }, [t._v(">")])])
    }]
  }
}, function(t, e) {
  t.exports = {
    render: function() {
      var t = this,
        e = t.$createElement,
        n = t._self._c || e;
      return n("div", {
        staticClass: "phone_app"
      }, [t.contact.olddisplay ? n("PhoneTitle", {
        attrs: {
          title: t.contact.display
        }
      }) : n("PhoneTitle", {
        attrs: {
          title: t.contact.title
        }
      }), t._v(" "), n("div", {
        staticClass: "phone_content content inputText"
      }, [n("div", {
        staticClass: "group select",
        attrs: {
          "data-type": "text",
          "data-model": "display",
          "data-maxlength": "64"
        }
      }, [t.contact.display ? n("input", {
        directives: [{
          name: "model",
          rawName: "v-model",
          value: t.contact.olddisplay,
          expression: "contact.olddisplay"
        }],
        attrs: {
          type: "hidden"
        },
        domProps: {
          value: t.contact.olddisplay
        },
        on: {
          input: function(e) {
            e.target.composing || t.$set(t.contact, "olddisplay", e.target.value)
          }
        }
      }) : t._e(), t._v(" "), n("input", {
        directives: [{
          name: "model",
          rawName: "v-model",
          value: t.contact.display,
          expression: "contact.display"
        }],
        attrs: {
          type: "text",
          placeholder: "Indtast navn"
        },
        domProps: {
          value: t.contact.display
        },
        on: {
          input: function(e) {
            e.target.composing || t.$set(t.contact, "display", e.target.value)
          }
        }
      }), t._v(" "), n("span", {
        staticClass: "highlight"
      }), t._v(" "), n("span", {
        staticClass: "bar"
      }), t._v(" "), n("label", [t._v("Navn")])]), t._v(" "), n("div", {
        staticClass: "group inputText",
        attrs: {
          "data-type": "text",
          "data-model": "number",
          "data-maxlength": "10"
        }
      }, [n("input", {
        directives: [{
          name: "model",
          rawName: "v-model",
          value: t.contact.number,
          expression: "contact.number"
        }],
        attrs: {
          type: "text",
          placeholder: "Indtast nummer"
        },
        domProps: {
          value: t.contact.number
        },
        on: {
          input: function(e) {
            e.target.composing || t.$set(t.contact, "number", e.target.value)
          }
        }
      }), t._v(" "), n("span", {
        staticClass: "highlight"
      }), t._v(" "), n("span", {
        staticClass: "bar"
      }), t._v(" "), n("label", [t._v("Nummer")])]), t._v(" "), n("div", {
        staticClass: "group",
        staticStyle: {
          "margin-top": "56px"
        },
        attrs: {
          "data-type": "button",
          "data-action": "save"
        }
      }, [t.contact.olddisplay ? n("input", {
        staticClass: "btn btn-green",
        attrs: {
          type: "button",
          value: "Gem"
        }
      }) : n("input", {
        staticClass: "btn btn-green",
        attrs: {
          type: "button",
          value: "Opret"
        }
      })]), t._v(" "), t._m(0), t._v(" "), t.contact.olddisplay ? n("div", {
        staticClass: "group",
        attrs: {
          "data-type": "button",
          "data-action": "delete"
        }
      }, [n("input", {
        staticClass: "btn btn-red",
        attrs: {
          type: "button",
          value: "Slet"
        }
      })]) : t._e()])], 1)
    },
    staticRenderFns: [function() {
      var t = this,
        e = t.$createElement,
        n = t._self._c || e;
      return n("div", {
        staticClass: "group",
        attrs: {
          "data-type": "button",
          "data-action": "cancel"
        }
      }, [n("input", {
        staticClass: "btn btn-orange",
        attrs: {
          type: "button",
          value: "Annuller"
        }
      })])
    }]
  }
}, function(t, e) {
  t.exports = {
    render: function() {
      var t = this,
        e = t.$createElement,
        n = t._self._c || e;
      return n("div", {
        staticClass: "screen"
      }, [n("list", {
        attrs: {
          list: t.noteList,
          disable: t.disableList,
          title: "Noter"
        },
        on: {
          select: t.onSelect,
          option: t.onOption
        }
      })], 1)
    },
    staticRenderFns: []
  }
}, function(t, e) {
  t.exports = {
    render: function() {
      var t = this,
        e = t.$createElement,
        n = t._self._c || e;
      return n("div", {
        staticClass: "phone_app"
      }, [n("div", {
        staticClass: "backblur",
        style: {
          background: "url(" + t.backgroundURL + ")"
        }
      }), t._v(" "), n("InfoBare", {
        staticClass: "infobare"
      }), t._v(" "), n("div", {
        staticClass: "menu"
      }, [n("div", {
        staticClass: "menu_content"
      }, [n("div", {
        staticClass: "menu_buttons"
      }, t._l(t.Apps, function(e, s) {
        return n("button", {
          key: e.name,
          class: {
            select: s === t.currentSelect
          },
          style: {
            backgroundImage: "url(" + e.icons + ")"
          }
        }, [t._v("\n              " + t._s(e.name) + "\n              "), void 0 !== e.puce && 0 !== e.puce ? n("span", {
          staticClass: "puce"
        }, [t._v(t._s(e.puce))]) : t._e()])
      }))])])], 1)
    },
    staticRenderFns: []
  }
}, function(t, e) {
  t.exports = {
    render: function() {
      var t = this,
        e = t.$createElement,
        n = t._self._c || e;
      return n("div", {
        staticClass: "home",
        style: {
          background: "url(" + t.backgroundURL + ")"
        }
      }, [n("InfoBare"), t._v(" "), t.messages.length >= t.warningMessageCount ? n("span", {
        staticClass: "warningMess"
      }, [t._m(0), t._v(" "), n("span", {
        staticClass: "warningMess_content"
      }, [n("span", {
        staticClass: "warningMess_title"
      }, [t._v("Lav hukommelse!")]), n("br"), t._v(" "), n("span", {
        staticClass: "warningMess_mess"
      }, [t._v(t._s(t.messages.length) + " / " + t._s(t.warningMessageCount) + " messages")])])]) : t._e(), t._v(" "), n("div", {
        staticClass: "home_buttons"
      }, [t._l(t.AppsHome, function(e, s) {
        return n("button", {
          key: e.name,
          class: {
            select: s === t.currentSelect
          },
          style: {
            backgroundImage: "url(" + e.icons + ")"
          }
        }, [t._v("\n        " + t._s(e.name) + "\n        "), void 0 !== e.puce && 0 !== e.puce ? n("span", {
          staticClass: "puce"
        }, [t._v(t._s(e.puce))]) : t._e()])
      }), t._v(" "), n("div", {
        staticClass: "btn_menu_ctn"
      }, [n("button", {
        staticClass: "btn_menu",
        class: {
          select: t.AppsHome.length === t.currentSelect
        },
        style: {
          backgroundImage: "url(/html/static/img/icons_app/menu.png)"
        }
      })])], 2)], 1)
    },
    staticRenderFns: [function() {
      var t = this,
        e = t.$createElement,
        n = t._self._c || e;
      return n("div", {
        staticClass: "warningMess_icon"
      }, [n("i", {
        staticClass: "fa fa-warning"
      })])
    }]
  }
}, function(t, e) {
  t.exports = {
    render: function() {
      var t = this,
        e = t.$createElement,
        n = t._self._c || e;
      return n("div", {
        staticClass: "phone_app"
      }, [n("PhoneTitle", {
        attrs: {
          title: "Telefon"
        }
      }), t._v(" "), n("div", {
        staticClass: "content"
      }, [n(t.subMenu[t.currentMenuIndex].Comp, {
        tag: "component"
      })], 1), t._v(" "), n("div", {
        staticClass: "subMenu"
      }, t._l(t.subMenu, function(e, s) {
        return n("div", {
          key: s,
          staticClass: "subMenu-elem",
          style: t.getColorItem(s)
        }, [n("i", {
          staticClass: "subMenu-icon fa",
          class: ["fa-" + e.icon]
        }), t._v(" "), n("span", {
          staticClass: "subMenu-name"
        }, [t._v(t._s(e.name))])])
      }))], 1)
    },
    staticRenderFns: []
  }
}, function(t, e) {
  t.exports = {
    render: function() {
      var t = this,
        e = t.$createElement,
        n = t._self._c || e;
      return n("div", {
        staticClass: "phone_infoBare barre-header"
      }, [n("span", {
        staticClass: "reseau"
      }, [t._v(t._s(t.config.reseau + " | " + t.config.graderUdenfor + "°"))]), t._v(" "), n("span", {
        staticClass: "time"
      }, [n("current-time")], 1), t._v(" "), n("hr", {
        staticClass: "batterie1"
      }), t._v(" "), n("hr", {
        staticClass: "batterie2"
      }), t._v(" "), n("hr", {
        staticClass: "barre1"
      }), t._v(" "), n("hr", {
        staticClass: "barre2"
      }), t._v(" "), n("hr", {
        staticClass: "barre3"
      }), t._v(" "), n("hr", {
        staticClass: "barre4"
      })])
    },
    staticRenderFns: []
  }
}, function(t, e) {
  t.exports = {
    render: function() {
      var t = this,
        e = t.$createElement;
      t._self._c;
      return t._m(0)
    },
    staticRenderFns: [function() {
      var t = this,
        e = t.$createElement,
        n = t._self._c || e;
      return n("div", {
        staticClass: "splash"
      }, [n("img", {
        attrs: {
          src: "/html/static/img/app_twitter/splashtwitter.png",
          alt: ""
        }
      })])
    }]
  }
}, function(t, e) {
  t.exports = {
    render: function() {
      var t = this,
        e = t.$createElement,
        n = t._self._c || e;
      return n("div", {
        staticClass: "phone_app twitter"
      }, [n("PhoneTitle", {
        attrs: {
          title: "Twitter",
          backgroundColor: "white",
          borderBottom: "",
          ImgInPhoneTitle: "/html/static/img/app_twitter/twitter.png"
        }
      }), t._v(" "), n("div", {
        staticClass: "elements"
      }, t._l(t.twitterMessages, function(e, s) {
        return n("div", {
          staticClass: "element",
          class: {
            select: s === t.currentSelect
          }
        }, [t._m(0, !0), t._v(" "), n("ul", [n("li", [t._v(t._s(e.name))]), t._v(" "), n("li", [t._v(t._s(e.message))]), t._v(" "), n("li", [t._v(t._s(e.time))])])])
      }))], 1)
    },
    staticRenderFns: [function() {
      var t = this,
        e = t.$createElement,
        n = t._self._c || e;
      return n("figure", [n("img", {
        attrs: {
          src: "/html/static/img/app_twitter/profil.png",
          alt: ""
        }
      })])
    }]
  }
}, function(t, e) {
  t.exports = {
    render: function() {
      var t = this,
        e = t.$createElement,
        n = t._self._c || e;
      return n("div", {
        staticClass: "phone_app"
      }, [n("PhoneTitle", {
        attrs: {
          title: t.title,
          backgroundColor: "#090f20"
        }
      }), t._v(" "), n("div", {
        staticClass: "elements"
      }, t._l(t.tchatChannels, function(e, s) {
        return n("div", {
          key: e.channel,
          staticClass: "element",
          class: {
            select: s === t.currentSelect
          }
        }, [n("div", {
          staticClass: "elem-title"
        }, [n("span", {
          staticClass: "diese"
        }, [t._v("#")]), t._v(" " + t._s(e.channel))])])
      }))], 1)
    },
    staticRenderFns: []
  }
}, function(t, e) {
  t.exports = {
    render: function() {
      var t = this,
        e = t.$createElement,
        n = t._self._c || e;
      return n("div", {
        staticClass: "phone_title_content",
        class: {
          hasInfoBare: t.showInfoBare
        },
        style: t.style
      }, [t.showInfoBare ? n("InfoBare") : t._e(), t._v(" "), n("div", {
        staticClass: "phone_title",
        class: {
          borderBottom: t.borderBottom, "img-in-title": t.ImgInPhoneTitle
        },
        style: {
          backgroundColor: t.backgroundColor
        }
      }, [t.ImgInPhoneTitle ? n("img", {
        attrs: {
          src: t.ImgInPhoneTitle,
          alt: ""
        }
      }) : n("span", [t._v(t._s(t.title))])])], 1)
    },
    staticRenderFns: []
  }
}, function(t, e) {
  t.exports = {
    render: function() {
      var t = this,
        e = t.$createElement;
      t._self._c;
      return t._m(0)
    },
    staticRenderFns: [function() {
      var t = this,
        e = t.$createElement,
        n = t._self._c || e;
      return n("div", {
        staticClass: "splash"
      }, [n("img", {
        attrs: {
          src: "/html/static/img/app_mobilepay/splashmobilepay.png",
          alt: ""
        }
      })])
    }]
  }
}, function(t, e) {
  t.exports = {
    render: function() {
      var t = this,
        e = t.$createElement,
        n = t._self._c || e;
      return n("div", {
        staticClass: "phone_app twitter"
      }, [n("PhoneTitle", {
        attrs: {
          title: "MobilePay",
          backgroundColor: "#4a73fa",
          borderBottom: "",
          ImgInPhoneTitle: "/html/static/img/app_mobilepay/mobilepay.png"
        }
      }), t._v(" "), n("div", {
        staticClass: "elements"
      }, [n("div", {
        staticClass: "content"
      }, [n("div", {
        staticClass: "number"
      }, [t._v("\n              " + t._s(t.numeroFormat) + "\n          ")]), t._v(" "), n("div", {
        staticClass: "keyboard"
      }, t._l(t.keyInfo, function(e, s) {
        return n("div", {
          key: e.primary,
          staticClass: "key",
          class: {
            "key-select": s === t.keySelect, keySpe: !0 === e.isNotNumber
          }
        }, [n("span", {
          staticClass: "key-primary"
        }, [t._v(t._s(e.primary))]), t._v(" "), n("span", {
          staticClass: "key-secondary"
        }, [t._v(t._s(e.secondary))])])
      }))])])], 1)
    },
    staticRenderFns: []
  }
}, function(t, e) {
  t.exports = {
    render: function() {
      var t = this,
        e = t.$createElement,
        n = t._self._c || e;
      return n("div", {
        staticClass: "phone_app"
      }, [n("PhoneTitle", {
        attrs: {
          title: "Indstillinger"
        }
      }), t._v(" "), n("div", {
        staticClass: "phone_content elements"
      }, t._l(t.paramList, function(e, s) {
        return n("div", {
          key: s,
          staticClass: "element",
          class: {
            select: s === t.currentSelect
          }
        }, [n("i", {
          staticClass: "fa",
          class: e.icons,
          style: {
            color: e.color
          }
        }), t._v(" "), n("div", {
          staticClass: "element-content"
        }, [n("span", {
          staticClass: "element-title"
        }, [t._v(t._s(e.title))]), t._v(" "), e.value ? n("span", {
          staticClass: "element-value"
        }, [t._v(t._s(e.value))]) : t._e()])])
      }))], 1)
    },
    staticRenderFns: []
  }
}, function(t, e) {
  t.exports = {
    render: function() {
      var t = this,
        e = t.$createElement,
        n = t._self._c || e;
      return n("div", {
        staticClass: "screen"
      }, [n("list", {
        attrs: {
          list: t.messagesData,
          disable: t.disableList,
          title: "Beskeder"
        },
        on: {
          select: t.onSelect,
          option: t.onOption
        }
      })], 1)
    },
    staticRenderFns: []
  }
}, function(t, e) {
  t.exports = {
    render: function() {
      var t = this,
        e = t.$createElement,
        n = t._self._c || e;
      return n("div", {
        staticClass: "phone_app"
      }, [n("PhoneTitle", {
        attrs: {
          title: "Bourse"
        }
      }), t._v(" "), n("div", {
        staticClass: "elements"
      }, t._l(t.bourseInfo, function(e, s) {
        return n("div", {
          key: s,
          staticClass: "element",
          class: {
            select: s === t.currentSelect
          }
        }, [n("div", {
          staticClass: "elem-evo"
        }, [n("i", {
          staticClass: "fa",
          class: t.classInfo(e)
        })]), t._v(" "), n("div", {
          staticClass: "elem-libelle"
        }, [t._v(t._s(e.libelle))]), t._v(" "), n("div", {
          staticClass: "elem-price",
          style: {
            color: t.colorBourse(e)
          }
        }, [t._v(t._s(e.price) + " DKK ")]), t._v(" "), n("div", {
          staticClass: "elem-difference",
          style: {
            color: t.colorBourse(e)
          }
        }, [e.difference > 0 ? n("span", [t._v("+")]) : t._e(), t._v(t._s(e.difference))])])
      }))], 1)
    },
    staticRenderFns: []
  }
}, function(t, e) {
  t.exports = {
    render: function() {
      var t = this,
        e = t.$createElement;
      t._self._c;
      return t._m(0)
    },
    staticRenderFns: [function() {
      var t = this,
        e = t.$createElement,
        n = t._self._c || e;
      return n("div", {
        staticClass: "splash"
      }, [n("img", {
        attrs: {
          src: "/html/static/img/app_tchat/splashtchat.png",
          alt: ""
        }
      })])
    }]
  }
}, function(t, e) {
  t.exports = {
    render: function() {
      var t = this,
        e = t.$createElement,
        n = t._self._c || e;
      return n("div", {
        staticClass: "phone_app"
      }, [n("PhoneTitle", {
        attrs: {
          title: "9GAG (" + t.currentSelectPost + ")",
          backgroundColor: "#000"
        }
      }), t._v(" "), n("div", {
        staticClass: "phone_content"
      }, [void 0 !== t.currentPost ? n("div", {
        staticClass: "post"
      }, [n("h1", {
        staticClass: "post-title"
      }, [t._v(t._s(t.currentPost.title))]), t._v(" "), n("div", {
        staticClass: "post-content"
      }, [void 0 !== t.currentPost.images.image460svwm ? n("video", {
        ref: "video",
        staticClass: "post-video",
        attrs: {
          autoplay: "",
          loop: "",
          src: t.currentPost.images.image460svwm.url
        }
      }) : n("img", {
        staticClass: "post-image",
        attrs: {
          src: t.currentPost.images.image460.url,
          alt: ""
        }
      })])]) : n("div", {
        staticClass: "loading"
      }, [n("div", [t._v("CHARGEMENT")])])])], 1)
    },
    staticRenderFns: []
  }
}, function(t, e) {
  t.exports = {
    render: function() {
      var t = this,
        e = t.$createElement,
        n = t._self._c || e;
      return n("transition", {
        attrs: {
          name: "modal"
        }
      }, [n("div", {
        staticClass: "modal-mask"
      }, [n("div", {
        staticClass: "modal-container"
      }, t._l(t.choix, function(e, s) {
        return n("div", {
          key: s,
          staticClass: "modal-choix",
          class: {
            select: s === t.currentSelect
          },
          style: {
            color: e.color
          }
        }, [n("i", {
          staticClass: "fa",
          class: e.icons
        }), t._v(t._s(e.title) + "\n            ")])
      }))])])
    },
    staticRenderFns: []
  }
}, function(t, e) {
  t.exports = {
    render: function() {
      var t = this,
        e = t.$createElement,
        n = t._self._c || e;
      return !0 === t.show ? n("div", {
        style: {
          zoom: t.zoom
        }
      }, [n("div", {
        staticClass: "phone_wrapper"
      }, [n("div", {
        staticClass: "phone_coque",
        style: {
          backgroundImage: "url(/html/static/img/coque/" + t.coque.value + ")"
        }
      }), t._v(" "), n("div", {
        staticClass: "phone_screen",
        attrs: {
          id: "app"
        }
      }, [n("router-view")], 1)])]) : t._e()
    },
    staticRenderFns: []
  }
}, function(t, e) {
  t.exports = {
    render: function() {
      var t = this,
        e = t.$createElement,
        n = t._self._c || e;
      return n("div", {
        staticClass: "screen"
      }, [n("div", {
        staticClass: "elements"
      }, [n("img", {
        staticClass: "logo_maze",
        attrs: {
          src: "/html/static/img/app_bank/logo.png"
        }
      }), t._v(" "), n("div", {
        staticClass: "hr"
      }), t._v(" "), n("div", {
        staticClass: "element"
      }, [n("div", {
        staticClass: "element-content"
      }, [n("span", [t._v(t._s(t.bankAmontFormat))])])])])])
    },
    staticRenderFns: []
  }
}, function(t, e) {
  t.exports = {
    render: function() {
      var t = this,
        e = t.$createElement,
        n = t._self._c || e;
      return n("div", {
        staticClass: "phone_app twitter"
      }, [n("PhoneTitle", {
        attrs: {
          title: "Lommeregner",
          backgroundColor: "#4a73fa",
          borderBottom: ""
        }
      }), t._v(" "), n("div", {
        staticClass: "elements"
      }, [n("div", {
        staticClass: "content"
      }, [n("div", {
        staticClass: "number"
      }, [t._v("\n              " + t._s(t.numeroFormat) + "\n          ")]), t._v(" "), n("div", {
        staticClass: "keyboard"
      }, t._l(t.keyInfo, function(e, s) {
        return n("div", {
          key: e.primary,
          staticClass: "key",
          class: {
            "key-select": s === t.keySelect, keySpe: !0 === e.isNotNumber
          }
        }, [n("span", {
          staticClass: "key-primary"
        }, [t._v(t._s(e.primary))]), t._v(" "), n("span", {
          staticClass: "key-secondary"
        }, [t._v(t._s(e.secondary))])])
      }))])])], 1)
    },
    staticRenderFns: []
  }
}, function(t, e) {
  t.exports = {
    render: function() {
      var t = this,
        e = t.$createElement,
        n = t._self._c || e;
      return n("div", [n("list", {
        attrs: {
          list: t.contactsList,
          showHeader: !1
        },
        on: {
          select: t.onSelect
        }
      })], 1)
    },
    staticRenderFns: []
  }
}, function(t, e) {
  t.exports = {
    render: function() {
      var t = this,
        e = t.$createElement,
        n = t._self._c || e;
      return n("div", {
        staticClass: "contact"
      }, [n("list", {
        attrs: {
          list: t.lcontacts,
          disable: t.disableList,
          title: "Kontakter"
        },
        on: {
          select: t.onSelect,
          option: t.onOption
        }
      })], 1)
    },
    staticRenderFns: []
  }
}, function(t, e) {
  t.exports = {
    render: function() {
      var t = this,
        e = t.$createElement,
        n = t._self._c || e;
      return n("div", {
        staticClass: "contact"
      }, [n("list", {
        attrs: {
          list: t.lcontacts,
          title: "Kontakter"
        },
        on: {
          select: t.onSelect
        }
      })], 1)
    },
    staticRenderFns: []
  }
}, function(t, e) {
  t.exports = {
    render: function() {
      var t = this,
        e = t.$createElement,
        n = t._self._c || e;
      return n("div", {
        staticClass: "phone_app"
      }, [n("div", {
        staticClass: "backblur",
        style: {
          background: "url(" + t.backgroundURL + ")"
        }
      }), t._v(" "), n("InfoBare"), t._v(" "), n("div", {
        staticClass: "num"
      }, [t._v(t._s(t.appelsDisplayNumber))]), t._v(" "), n("div", {
        staticClass: "contactName"
      }, [t._v(t._s(t.appelsDisplayName))]), t._v(" "), n("div", {
        staticClass: "time"
      }), t._v(" "), n("div", {
        staticClass: "time-display"
      }, [t._v(t._s(t.timeDisplay))]), t._v(" "), n("div", {
        staticClass: "actionbox"
      }, [n("div", {
        staticClass: "action raccrocher",
        class: {
          disable: 0 === t.status && 0 !== t.select
        }
      }, [n("svg", {
        attrs: {
          viewBox: "0 0 24 24"
        }
      }, [n("g", {
        attrs: {
          transform: "rotate(135, 12, 12)"
        }
      }, [n("path", {
        attrs: {
          d: "M6.62,10.79C8.06,13.62 10.38,15.94 13.21,17.38L15.41,15.18C15.69,14.9 16.08,14.82 16.43,14.93C17.55,15.3 18.75,15.5 20,15.5A1,1 0 0,1 21,16.5V20A1,1 0 0,1 20,21A17,17 0 0,1 3,4A1,1 0 0,1 4,3H7.5A1,1 0 0,1 8.5,4C8.5,5.25 8.7,6.45 9.07,7.57C9.18,7.92 9.1,8.31 8.82,8.59L6.62,10.79Z"
        }
      })])])]), t._v(" "), 0 === t.status ? n("div", {
        staticClass: "action deccrocher",
        class: {
          disable: 0 === t.status && 1 !== t.select
        }
      }, [n("svg", {
        attrs: {
          viewBox: "0 0 24 24"
        }
      }, [n("g", {
        attrs: {
          transform: "rotate(0, 12, 12)"
        }
      }, [n("path", {
        attrs: {
          d: "M6.62,10.79C8.06,13.62 10.38,15.94 13.21,17.38L15.41,15.18C15.69,14.9 16.08,14.82 16.43,14.93C17.55,15.3 18.75,15.5 20,15.5A1,1 0 0,1 21,16.5V20A1,1 0 0,1 20,21A17,17 0 0,1 3,4A1,1 0 0,1 4,3H7.5A1,1 0 0,1 8.5,4C8.5,5.25 8.7,6.45 9.07,7.57C9.18,7.92 9.1,8.31 8.82,8.59L6.62,10.79Z"
        }
      })])])]) : t._e()])], 1)
    },
    staticRenderFns: []
  }
}, function(t, e) {
  t.exports = {
    render: function() {
      var t = this,
        e = t.$createElement,
        n = t._self._c || e;
      return n("div", {
        staticClass: "phone_app"
      }, [t.showHeader ? n("PhoneTitle", {
        attrs: {
          title: t.title,
          showInfoBare: t.showInfoBare
        }
      }) : t._e(), t._v(" "), n("div", {
        staticClass: "phone_content elements"
      }, t._l(t.list, function(e, s) {
        return n("div", {
          key: e[t.keyDispay],
          staticClass: "element",
          class: {
            select: s === t.currentSelect
          }
        }, [n("div", {
          staticClass: "elem-pic",
          style: t.stylePuce(e)
        }, [t._v("\n            " + t._s(e.letter || e[t.keyDispay][0]) + "\n          ")]), t._v(" "), void 0 !== e.puce && 0 !== e.puce ? n("div", {
          staticClass: "elem-puce"
        }, [t._v(t._s(e.puce))]) : t._e(), t._v(" "), void 0 === e.keyDesc || "" === e.keyDesc ? n("div", {
          staticClass: "elem-title"
        }, [t._v(t._s(e[t.keyDispay]))]) : t._e(), t._v(" "), void 0 !== e.keyDesc && "" !== e.keyDesc ? n("div", {
          staticClass: "elem-title-has-desc"
        }, [t._v(t._s(e[t.keyDispay]))]) : t._e(), t._v(" "), void 0 !== e.keyDesc && "" !== e.keyDesc ? n("div", {
          staticClass: "elem-description"
        }, [t._v(t._s(e.keyDesc))]) : t._e()])
      }))], 1)
    },
    staticRenderFns: []
  }
}, function(t, e) {
  t.exports = {
    render: function() {
      var t = this,
        e = t.$createElement;
      return (t._self._c || e)("span", [t._v(t._s(t.time))])
    },
    staticRenderFns: []
  }
}, function(t, e) {
  t.exports = {
    render: function() {
      var t = this,
        e = t.$createElement,
        n = t._self._c || e;
      return n("div", {
        staticClass: "phone_app twitter"
      }, [n("PhoneTitle", {
        attrs: {
          title: "MobilePay",
          backgroundColor: "#4a73fa",
          borderBottom: "",
          ImgInPhoneTitle: "/html/static/img/app_mobilepay/mobilepay.png"
        }
      }), t._v(" "), n("div", {
        staticClass: "phone_content"
      }, [n("div", {
        staticClass: "elements"
      }, [n("div", [n("list", {
        attrs: {
          list: t.contactsList,
          showHeader: !1
        },
        on: {
          select: t.onSelect
        }
      })], 1)])])], 1)
    },
    staticRenderFns: []
  }
}], [70]);
