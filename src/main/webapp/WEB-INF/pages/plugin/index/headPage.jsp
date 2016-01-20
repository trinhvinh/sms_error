<meta charset="UTF-8">
 <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
 <!-- Bootstrap 3.3.2 -->
 <link href="${pageContext.request.contextPath}/assets/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />

 <!-- Font Awesome Icons -->
 <link href="${pageContext.request.contextPath}/assets/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
 <!-- Ionicons -->
 <link href="${pageContext.request.contextPath}/assets/ionicons/2.0.0/css/ionicons.min.css" rel="stylesheet" type="text/css" />
 
 <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/finance-pictograms/flaticon.css"> 

 <!-- jQuery 2.1.3 -->
    <script src="${pageContext.request.contextPath}/assets/jquery/jQuery-2.1.3.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/jquery/maskedinput.js"></script>
<script src="${pageContext.request.contextPath}/assets/gws/jssor.slider.min.js" type="text/javascript"></script> 
 <!-- Theme style -->
 <link href="${pageContext.request.contextPath}/assets/css/AdminLTE.min.css" rel="stylesheet" type="text/css" />
 <!-- AdminLTE Skins. Choose a skin from the css/skins
      folder instead of downloading all of them to reduce the load. -->
 <link href="${pageContext.request.contextPath}/assets/css/skins/_all-skins.min.css" rel="stylesheet" type="text/css" />

 <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
 <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
 <!--[if lt IE 9]>
     <script src="${pageContext.request.contextPath}/assets/libs/html5shiv/3.7.0/html5shiv.js"></script>
     <script src="${pageContext.request.contextPath}/assets/libs/respond.js/1.3.0/respond.min.js"></script>
 <![endif]-->
 
 <style type="text/css">
 .flaticon-coins36{
 font-size: 30px;
 line-height: 40px;
 }
 .flaticon-coins36:before{
 font-size: 34px;
  margin-left: 0;
  }
  .main-header .container-fluid{
  height: 81px;
  }
  
 </style>
 
 
 <script>
/*Jssor*/
(function(e, g, b, i, d, h, j) { /*! Jssor */
    new(function() {});
    var c = {
        Nc: function(a) {
            return -b.cos(a * b.PI) / 2 + .5
        },
        F: function(a) {
            return a
        },
        xd: function(a) {
            return -a * (a - 2)
        },
        Y: function(a) {
            return a * a * a
        },
        Me: function(a) {
            return (a -= 1) * a * a + 1
        },
        Gc: function(a) {
            return (a *= 2) < 1 ? 1 / 2 * a * a * a : 1 / 2 * ((a -= 2) * a * a + 2)
        },
        z: function(a) {
            return -1 / 2 * (b.cos(b.PI * a) - 1)
        },
        Vc: function(a) {
            return a == 0 ? 0 : b.pow(2, 10 * (a - 1))
        },
        sd: function(a) {
            return 1 - b.cos(a * b.PI * 2)
        },
        hf: function(a) {
            return b.sin(a * b.PI * 2)
        },
        Ze: function(a) {
            return 1 - ((a *= 2) < 1 ? (a = 1 - a) * a * a : (a -= 1) * a * a)
        },
        pc: function(a) {
            return (a *= 2) < 1 ? a * a * a : (a = 2 - a) * a * a
        }
    };
    var a = new function() {
        var f = this,
            xb = /\S+/g,
            R = 1,
            fb = 2,
            kb = 3,
            jb = 4,
            ob = 5,
            X, s = 0,
            l = 0,
            p = 0,
            bb = 0,
            A = 0,
            S = navigator,
            tb = S.appName,
            k = S.userAgent,
            x = g.documentElement,
            z;

        function Eb() {
            X = X || {
                ke: "ontouchstart" in e || "createTouch" in g
            };
            return X
        }

        function v(i) {
            if (!s) {
                s = -1;
                if (tb == "Microsoft Internet Explorer" && !!e.attachEvent && !!e.ActiveXObject) {
                    var f = k.indexOf("MSIE");
                    s = R;
                    p = n(k.substring(f + 5, k.indexOf(";", f))); /*@cc_on bb=@_jscript_version@*/ ;
                    l = g.documentMode || p
                } else if (tb == "Netscape" && !!e.addEventListener) {
                    var d = k.indexOf("Firefox"),
                        b = k.indexOf("Safari"),
                        h = k.indexOf("Chrome"),
                        c = k.indexOf("AppleWebKit");
                    if (d >= 0) {
                        s = fb;
                        l = n(k.substring(d + 8))
                    } else if (b >= 0) {
                        var j = k.substring(0, b).lastIndexOf("/");
                        s = h >= 0 ? jb : kb;
                        l = n(k.substring(j + 1, b))
                    } else {
                        var a = /Trident\/.*rv:([0-9]{1,}[\.0-9]{0,})/i.exec(k);
                        if (a) {
                            s = R;
                            l = p = n(a[1])
                        }
                    }
                    if (c >= 0) A = n(k.substring(c + 12))
                } else {
                    var a = /(opera)(?:.*version|)[ \/]([\w.]+)/i.exec(k);
                    if (a) {
                        s = ob;
                        l = n(a[2])
                    }
                }
            }
            return i == s
        }

        function q() {
            return v(R)
        }

        function M() {
            return q() && (l < 6 || g.compatMode == "BackCompat")
        }

        function ib() {
            return v(kb)
        }

        function hb() {
            return v(jb)
        }

        function nb() {
            return v(ob)
        }

        function cb() {
            return ib() && A > 534 && A < 535
        }

        function K() {
            return q() && l < 9
        }

        function t(a) {
            if (!z) {
                m(["transform", "WebkitTransform", "msTransform", "MozTransform", "OTransform"], function(b) {
                    if (a.style[b] != j) {
                        z = b;
                        return d
                    }
                });
                z = z || "transform"
            }
            return z
        }

        function sb(a) {
            return {}.toString.call(a)
        }
        var J;

        function Cb() {
            if (!J) {
                J = {};
                m(["Boolean", "Number", "String", "Function", "Array", "Date", "RegExp", "Object"], function(a) {
                    J["[object " + a + "]"] = a.toLowerCase()
                })
            }
            return J
        }

        function m(a, c) {
            if (sb(a) == "[object Array]") {
                for (var b = 0; b < a.length; b++)
                    if (c(a[b], b, a)) return d
            } else
                for (var e in a)
                    if (c(a[e], e, a)) return d
        }

        function C(a) {
            return a == i ? String(a) : Cb()[sb(a)] || "object"
        }

        function qb(a) {
            for (var b in a) return d
        }

        function F(a) {
            try {
                return C(a) == "object" && !a.nodeType && a != a.window && (!a.constructor || {}.hasOwnProperty.call(a.constructor.prototype, "isPrototypeOf"))
            } catch (b) {}
        }

        function y(a, b) {
            return {
                x: a,
                y: b
            }
        }

        function vb(b, a) {
            setTimeout(b, a || 0)
        }

        function H(b, d, c) {
            var a = !b || b == "inherit" ? "" : b;
            m(d, function(c) {
                var b = c.exec(a);
                if (b) {
                    var d = a.substr(0, b.index),
                        e = a.substr(b.lastIndex + 1, a.length - (b.lastIndex + 1));
                    a = d + e
                }
            });
            a = c + (a.indexOf(" ") != 0 ? " " : "") + a;
            return a
        }

        function eb(b, a) {
            if (l < 9) b.style.filter = a
        }

        function zb(b, a, c) {
            if (bb < 9) {
                var e = b.style.filter,
                    h = new RegExp(/[\s]*progid:DXImageTransform\.Microsoft\.Matrix\([^\)]*\)/g),
                    g = a ? "progid:DXImageTransform.Microsoft.Matrix(M11=" + a[0][0] + ", M12=" + a[0][1] + ", M21=" + a[1][0] + ", M22=" + a[1][1] + ", SizingMethod='auto expand')" : "",
                    d = H(e, [h], g);
                eb(b, d);
                f.Yd(b, c.y);
                f.Qd(b, c.x)
            }
        }
        f.Je = Eb;
        f.be = q;
        f.qf = ib;
        f.cf = hb;
        f.Zc = nb;
        f.cb = K;
        f.id = function() {
            return l
        };
        f.Xc = function() {
            v();
            return A
        };
        f.v = vb;

        function V(a) {
            a.constructor === V.caller && a.Fd && a.Fd.apply(a, V.caller.arguments)
        }
        f.Fd = V;
        f.sb = function(a) {
            if (f.Nd(a)) a = g.getElementById(a);
            return a
        };

        function r(a) {
            return a || e.event
        }
        f.Kd = r;
        f.dd = function(a) {
            a = r(a);
            return a.target || a.srcElement || g
        };
        f.vd = function(a) {
            a = r(a);
            return {
                x: a.pageX || a.clientX || 0,
                y: a.pageY || a.clientY || 0
            }
        };
        f.Wc = function() {
            var a = g.body;
            return {
                x: a.clientWidth || x.clientWidth,
                y: a.clientHeight || x.clientHeight
            }
        };

        function D(c, d, a) {
            if (a != j) c.style[d] = a;
            else {
                var b = c.currentStyle || c.style;
                a = b[d];
                if (a == "" && e.getComputedStyle) {
                    b = c.ownerDocument.defaultView.getComputedStyle(c, i);
                    b && (a = b.getPropertyValue(d) || b[d])
                }
                return a
            }
        }

        function Y(b, c, a, d) {
            if (a != j) {
                d && (a += "px");
                D(b, c, a)
            } else return n(D(b, c))
        }

        function o(d, a) {
            var b = a & 2,
                c = a ? Y : D;
            return function(e, a) {
                return c(e, d, a, b)
            }
        }

        function Ab(b) {
            if (q() && p < 9) {
                var a = /opacity=([^)]*)/.exec(b.style.filter || "");
                return a ? n(a[1]) / 100 : 1
            } else return n(b.style.opacity || "1")
        }

        function Bb(c, a, f) {
            if (q() && p < 9) {
                var h = c.style.filter || "",
                    i = new RegExp(/[\s]*alpha\([^\)]*\)/g),
                    e = b.round(100 * a),
                    d = "";
                if (e < 100 || f) d = "alpha(opacity=" + e + ") ";
                var g = H(h, [i], d);
                eb(c, g)
            } else c.style.opacity = a == 1 ? "" : b.round(a * 100) / 100
        }

        function ab(g, a) {
            var d = a.m || 0,
                c = 1;
            	//c = a.N == j ? 1 : a.N;
            if (K()) {
                var l = f.je(d / 180 * b.PI, c, c);
                zb(g, !d && c == 1 ? i : l, f.ie(l, a.lb, a.Ab))
            } else {
                var h = t(g);
                if (h) {
                    var k = "rotate(" + d % 360 + "deg) scale(" + c + ")";
                    if (hb() && A > 535 && "ontouchstart" in e) k += " perspective(0px)";
                    g.style[h] = k
                }
            }
        }
        f.ve = function(b, a) {
            if (cb()) vb(f.Z(i, ab, b, a));
            else ab(b, a)
        };
        f.nf = function(b, c) {
            var a = t(b);
            if (a) b.style[a + "Origin"] = c
        };
        f.qe = function(a, c) {
            if (q() && p < 9 || p < 10 && M()) a.style.zoom = c == 1 ? "" : c;
            else {
                var b = t(a);
                if (b) {
                    var f = "scale(" + c + ")",
                        e = a.style[b],
                        g = new RegExp(/[\s]*scale\(.*?\)/g),
                        d = H(e, [g], f);
                    a.style[b] = d
                }
            }
        };
        f.We = function(a) {
            if (!a.style[t(a)] || a.style[t(a)] == "none") a.style[t(a)] = "perspective(0px)"
        };
        f.Jf = function(a) {
            a.style[t(a)] = "none"
        };
        var mb = 0,
            gb = 0;
        f.ad = function(b, a) {
            return K() ? function() {
                var g = d,
                    c = M() ? b.document.body : b.document.documentElement;
                if (c) {
                    var f = c.offsetWidth - mb,
                        e = c.offsetHeight - gb;
                    if (f || e) {
                        mb += f;
                        gb += e
                    } else g = h
                }
                g && a()
            } : a
        };
        f.Yb = function(b, a) {
            return function(c) {
                c = r(c);
                var e = c.type,
                    d = c.relatedTarget || (e == "mouseout" ? c.toElement : c.fromElement);
                (!d || d !== a && !f.Bf(a, d)) && b(c)
            }
        };
        f.f = function(a, c, d, b) {
            a = f.sb(a);
            if (a.addEventListener) {
                c == "mousewheel" && a.addEventListener("DOMMouseScroll", d, b);
                a.addEventListener(c, d, b)
            } else if (a.attachEvent) {
                a.attachEvent("on" + c, d);
                b && a.setCapture && a.setCapture()
            }
        };
        f.U = function(a, c, d, b) {
            a = f.sb(a);
            if (a.removeEventListener) {
                c == "mousewheel" && a.removeEventListener("DOMMouseScroll", d, b);
                a.removeEventListener(c, d, b)
            } else if (a.detachEvent) {
                a.detachEvent("on" + c, d);
                b && a.releaseCapture && a.releaseCapture()
            }
        };
        f.hc = function(a) {
            a = r(a);
            a.preventDefault && a.preventDefault();
            a.cancel = d;
            a.returnValue = h
        };
        f.gf = function(a) {
            a = r(a);
            a.stopPropagation && a.stopPropagation();
            a.cancelBubble = d
        };
        f.Z = function(d, c) {
            var a = [].slice.call(arguments, 2),
                b = function() {
                    var b = a.concat([].slice.call(arguments, 0));
                    return c.apply(d, b)
                };
            return b
        };
        f.Xe = function(a, b) {
            if (b == j) return a.textContent || a.innerText;
            var c = g.createTextNode(b);
            f.bd(a);
            a.appendChild(c)
        };
        f.S = function(d, c) {
            for (var b = [], a = d.firstChild; a; a = a.nextSibling)(c || a.nodeType == 1) && b.push(a);
            return b
        };

        function rb(a, c, e, b) {
            b = b || "u";
            for (a = a ? a.firstChild : i; a; a = a.nextSibling)
                if (a.nodeType == 1) {
                    if (Q(a, b) == c) return a;
                    if (!e) {
                        var d = rb(a, c, e, b);
                        if (d) return d
                    }
                }
        }
        f.H = rb;

        function O(a, d, f, b) {
            b = b || "u";
            var c = [];
            for (a = a ? a.firstChild : i; a; a = a.nextSibling)
                if (a.nodeType == 1) {
                    Q(a, b) == d && c.push(a);
                    if (!f) {
                        var e = O(a, d, f, b);
                        if (e.length) c = c.concat(e)
                    }
                }
            return c
        }

        function lb(a, c, d) {
            for (a = a ? a.firstChild : i; a; a = a.nextSibling)
                if (a.nodeType == 1) {
                    if (a.tagName == c) return a;
                    if (!d) {
                        var b = lb(a, c, d);
                        if (b) return b
                    }
                }
        }
        f.Ue = lb;

        function db(a, c, e) {
            var b = [];
            for (a = a ? a.firstChild : i; a; a = a.nextSibling)
                if (a.nodeType == 1) {
                    (!c || a.tagName == c) && b.push(a);
                    if (!e) {
                        var d = db(a, c, e);
                        if (d.length) b = b.concat(d)
                    }
                }
            return b
        }
        f.Ce = db;
        f.Fe = function(b, a) {
            return b.getElementsByTagName(a)
        };

        function B() {
            var e = arguments,
                d, c, b, a, g = 1 & e[0],
                f = 1 + g;
            d = e[f - 1] || {};
            for (; f < e.length; f++)
                if (c = e[f])
                    for (b in c) {
                        a = c[b];
                        if (a !== j) {
                            a = c[b];
                            d[b] = g && F(d[b]) ? B(g, {}, a) : a
                        }
                    }
                return d
        }
        f.q = B;

        function W(f, g) {
            var d = {},
                c, a, b;
            for (c in f) {
                a = f[c];
                b = g[c];
                if (a !== b) {
                    var e;
                    if (F(a) && F(b)) {
                        a = W(b);
                        e = !qb(a)
                    }!e && (d[c] = a)
                }
            }
            return d
        }
        f.Rd = function(a) {
            return C(a) == "function"
        };
        f.Ac = function(a) {
            return C(a) == "array"
        };
        f.Nd = function(a) {
            return C(a) == "string"
        };
        f.Td = function(a) {
            return !isNaN(n(a)) && isFinite(a)
        };
        f.l = m;

        function N(a) {
            return g.createElement(a)
        }
        f.tb = function() {
            return N("DIV")
        };
        f.he = function() {
            return N("SPAN")
        };
        f.Bc = function() {};

        function T(b, c, a) {
            if (a == j) return b.getAttribute(c);
            b.setAttribute(c, a)
        }

        function Q(a, b) {
            return T(a, b) || T(a, "data-" + b)
        }
        f.dc = T;
        f.A = Q;

        function w(b, a) {
            if (a == j) return b.className;
            b.className = a
        }
        f.Ud = w;

        function ub(b) {
            var a = {};
            m(b, function(b) {
                a[b] = b
            });
            return a
        }

        function wb(b, a) {
            return b.match(a || xb)
        }

        function L(b, a) {
            return ub(wb(b || "", a))
        }
        f.xe = wb;

        function Z(b, c) {
            var a = "";
            m(c, function(c) {
                a && (a += b);
                a += c
            });
            return a
        }

        function G(a, c, b) {
            w(a, Z(" ", B(W(L(w(a)), L(c)), L(b))))
        }
        f.se = function(a) {
            return a.parentNode
        };
        f.V = function(a) {
            f.eb(a, "none")
        };
        f.G = function(a, b) {
            f.eb(a, b ? "none" : "")
        };
        f.Vd = function(b, a) {
            b.removeAttribute(a)
        };
        f.Ff = function() {
            return q() && l < 10
        };
        f.ff = function(d, c) {
            if (c) d.style.clip = "rect(" + b.round(c.c) + "px " + b.round(c.t) + "px " + b.round(c.s) + "px " + b.round(c.a) + "px)";
            else {
                var g = d.style.cssText,
                    f = [new RegExp(/[\s]*clip: rect\(.*?\)[;]?/i), new RegExp(/[\s]*cliptop: .*?[;]?/i), new RegExp(/[\s]*clipright: .*?[;]?/i), new RegExp(/[\s]*clipbottom: .*?[;]?/i), new RegExp(/[\s]*clipleft: .*?[;]?/i)],
                    e = H(g, f, "");
                a.fc(d, e)
            }
        };
        f.gb = function() {
            return +new Date
        };
        f.J = function(b, a) {
            b.appendChild(a)
        };
        f.lc = function(b, a, c) {
            (c || a.parentNode).insertBefore(b, a)
        };
        f.Sb = function(a, b) {
            (b || a.parentNode).removeChild(a)
        };
        f.kf = function(a, b) {
            m(a, function(a) {
                f.Sb(a, b)
            })
        };
        f.bd = function(a) {
            f.kf(f.S(a, d), a)
        };
        f.lf = function(b, a) {
            return parseInt(b, a || 10)
        };
        var n = parseFloat;
        f.yc = n;
        f.Bf = function(b, a) {
            var c = g.body;
            while (a && b !== a && c !== a) try {
                a = a.parentNode
            } catch (d) {
                return h
            }
            return b === a
        };

        function U(d, c, b) {
            var a = d.cloneNode(!c);
            !b && f.Vd(a, "id");
            return a
        }
        f.ib = U;
        f.Pb = function(e, g) {
            var a = new Image;

            function b(e, d) {
                f.U(a, "load", b);
                f.U(a, "abort", c);
                f.U(a, "error", c);
                g && g(a, d)
            }

            function c(a) {
                b(a, d)
            }
            if (nb() && l < 11.6 || !e) b(!e);
            else {
                f.f(a, "load", b);
                f.f(a, "abort", c);
                f.f(a, "error", c);
                a.src = e
            }
        };
        f.mf = function(d, a, e) {
            var c = d.length + 1;

            function b(b) {
                c--;
                if (a && b && b.src == a.src) a = b;
                !c && e && e(a)
            }
            m(d, function(a) {
                f.Pb(a.src, b)
            });
            b()
        };
        f.kd = function(b, g, i, h) {
            if (h) b = U(b);
            var c = O(b, g);
            if (!c.length) c = a.Fe(b, g);
            for (var f = c.length - 1; f > -1; f--) {
                var d = c[f],
                    e = U(i);
                w(e, w(d));
                a.fc(e, d.style.cssText);
                a.lc(e, d);
                a.Sb(d)
            }
            return b
        };

        function Db(c) {
            var q = this,
                o = "",
                r = ["av", "pv", "ds", "dn"],
                d = [],
                p, k = 0,
                h = 0,
                e = 0;

            function i() {
                G(c, p, d[e || k || h & 2 || h])
            }

            function b() {
                k = 0;
                i();
                f.U(g, "mouseup", b);
                f.U(g, "touchend", b);
                f.U(g, "touchcancel", b)
            }

            function n(a) {
                if (e) f.hc(a);
                else {
                    k = 4;
                    i();
                    f.f(g, "mouseup", b);
                    f.f(g, "touchend", b);
                    f.f(g, "touchcancel", b)
                }
            }
            q.ld = function(a) {
                if (a != j) {
                    h = a & 2 || a & 1;
                    i()
                } else return h
            };
            q.od = function(a) {
                if (a == j) return !e;
                e = a ? 0 : 3;
                i()
            };
            c = f.sb(c);
            var l = a.xe(w(c));
            if (l) o = l.shift();
            m(r, function(a) {
                d.push(o + a)
            });
            p = Z(" ", d);
            d.unshift("");
            f.f(c, "mousedown", n);
            f.f(c, "touchstart", n)
        }
        f.gc = function(a) {
            return new Db(a)
        };
        f.ec = D;
        f.pb = o("overflow");
        f.E = o("top", 2);
        f.D = o("left", 2);
        f.p = o("width", 2);
        f.r = o("height", 2);
        f.Qd = o("marginLeft", 2);
        f.Yd = o("marginTop", 2);
        f.I = o("position");
        f.eb = o("display");
        f.O = o("zIndex", 1);
        f.Ub = function(b, a, c) {
            if (a != j) Bb(b, a, c);
            else return Ab(b)
        };
        f.fc = function(a, b) {
            if (b != j) a.style.cssText = b;
            else return a.style.cssText
        };
        var P = {
                e: f.Ub,
                c: f.E,
                a: f.D,
                zb: f.p,
                Cb: f.r,
                Gb: f.I,
                Nf: f.eb,
                jb: f.O
            },
            u;

        function I() {
            if (!u) u = B({
                Mf: f.Yd,
                Lf: f.Qd,
                i: f.ff,
                tc: f.ve
            }, P);
            return u
        }

        function pb() {
            I();
            u.tc = u.tc;
            return u
        }
        f.jf = I;
        f.df = pb;
        f.ef = function(c, b) {
            I();
            var a = {};
            m(b, function(d, b) {
                if (P[b]) a[b] = P[b](c)
            });
            return a
        };
        f.X = function(c, b) {
            var a = I();
            m(b, function(d, b) {
                a[b] && a[b](c, d)
            })
        };
        f.wf = function(b, a) {
            pb();
            f.X(b, a)
        };
        var E = new function() {
            var a = this;

            function b(d, g) {
                for (var j = d[0].length, i = d.length, h = g[0].length, f = [], c = 0; c < i; c++)
                    for (var k = f[c] = [], b = 0; b < h; b++) {
                        for (var e = 0, a = 0; a < j; a++) e += d[c][a] * g[a][b];
                        k[b] = e
                    }
                return f
            }
            a.rc = function(d, c) {
                var a = b(d, [
                    [c.x],
                    [c.y]
                ]);
                return y(a[0][0], a[1][0])
            }
        };
        f.je = function(d, a, c) {
            var e = b.cos(d),
                f = b.sin(d);
            return [
                [e * a, -f * c],
                [f * a, e * c]
            ]
        };
        f.ie = function(d, c, a) {
            var e = E.rc(d, y(-c / 2, -a / 2)),
                f = E.rc(d, y(c / 2, -a / 2)),
                g = E.rc(d, y(c / 2, a / 2)),
                h = E.rc(d, y(-c / 2, a / 2));
            return y(b.min(e.x, f.x, g.x, h.x) + c / 2, b.min(e.y, f.y, g.y, h.y) + a / 2)
        };
        f.qd = function(l, g, t, r, u, w, j) {
            var d = g;
            if (l) {
                d = {};
                for (var f in g) {
                    var x = w[f] || 1,
                        s = u[f] || [0, 1],
                        e = (t - s[0]) / s[1];
                    e = b.min(b.max(e, 0), 1);
                    e = e * x;
                    var p = b.floor(e);
                    if (e != p) e -= p;
                    var v = r[f] || r.Jb || c.Nc,
                        q = v(e),
                        h, y = l[f];
                    g[f];
                    var m = g[f];
                    if (a.Td(m)) h = y + m * q;
                    else {
                        h = a.q({
                            Nb: {}
                        }, l[f]);
                        a.l(m.Nb, function(c, b) {
                            var a = c * q;
                            h.Nb[b] = a;
                            h[b] += a
                        })
                    }
                    d[f] = h
                }
                if (g.k || g.m) d.tc = {
                    m: d.m || 0,
                    N: d.k,
                    lb: j.lb,
                    Ab: j.Ab
                }
            }
            if (g.i && j.bb) {
                var k = d.i.Nb,
                    o = (k.c || 0) + (k.s || 0),
                    n = (k.a || 0) + (k.t || 0);
                d.a = (d.a || 0) + n;
                d.c = (d.c || 0) + o;
                d.i.a -= n;
                d.i.t -= n;
                d.i.c -= o;
                d.i.s -= o
            }
            if (d.i && a.Ff() && !d.i.c && !d.i.a && d.i.t == j.lb && d.i.s == j.Ab) d.i = i;
            return d
        }
    };

    function l() {
        var b = this,
            d = [];

        function i(a, b) {
            d.push({
                uc: a,
                wc: b
            })
        }

        function h(b, c) {
            a.l(d, function(a, e) {
                a.uc == b && a.wc === c && d.splice(e, 1)
            })
        }
        b.Lb = b.addEventListener = i;
        b.removeEventListener = h;
        b.n = function(b) {
            var c = [].slice.call(arguments, 1);
            a.l(d, function(a) {
                a.uc == b && a.wc.apply(e, c)
            })
        }
    }

    function k(n, z, j, R, P, K) {
        n = n || 0;
        var f = this,
            r, o, p, x, A = 0,
            I, J, H, C, E = 0,
            l = 0,
            u = 0,
            D, m = n,
            k, g, q, y = [],
            B;

        function M(a) {
            k += a;
            g += a;
            m += a;
            l += a;
            u += a;
            E = a
        }

        function Q(a, b) {
            var c = a - k + n * b;
            M(c);
            return g
        }

        function w(h, n) {
            var c = h;
            if (q && (c >= g || c <= k)) c = ((c - k) % q + q) % q + k;
            if (!D || x || n || l != c) {
                var e = b.min(c, g);
                e = b.max(e, k);
                if (!D || x || n || e != u) {
                    if (K) {
                        var i = (e - m) / (z || 1);
                        if (j.Oc) i = 1 - i;
                        var o = a.qd(P, K, i, I, H, J, j);
                        a.l(o, function(b, a) {
                            B[a] && B[a](R, b)
                        })
                    }
                    f.Pc(u - m, e - m)
                }
                u = e;
                a.l(y, function(b, c) {
                    var a = h < l ? y[y.length - c - 1] : b;
                    a.ab(h - E, n)
                });
                var r = l,
                    p = h;
                l = c;
                D = d;
                f.ic(r, p)
            }
        }

        function F(a, c, d) {
            c && a.Xb(g, 1);
            !d && (g = b.max(g, a.wb() + E));
            y.push(a)
        }
        var s = e.requestAnimationFrame || e.webkitRequestAnimationFrame || e.mozRequestAnimationFrame || e.msRequestAnimationFrame;
        if (a.qf() && a.id() < 7) s = i;
        s = s || function(b) {
            a.v(b, j.db)
        };

        function L() {
            if (r) {
                var d = a.gb(),
                    e = b.min(d - A, j.jd),
                    c = l + e * p;
                A = d;
                if (c * p >= o * p) c = o;
                w(c);
                if (!x && c * p >= o * p) N(C);
                else s(L)
            }
        }

        function v(c, e, h) {
            if (!r) {
                r = d;
                x = h;
                C = e;
                c = b.max(c, k);
                c = b.min(c, g);
                o = c;
                p = o < l ? -1 : 1;
                f.td();
                A = a.gb();
                s(L)
            }
        }

        function N(a) {
            if (r) {
                x = r = C = h;
                f.Id();
                a && a()
            }
        }
        f.Jd = function(a, b, c) {
            v(a ? l + a : g, b, c)
        };
        f.Hd = v;
        f.xb = N;
        f.ne = function(a) {
            v(a)
        };
        f.hb = function() {
            return l
        };
        f.Ed = function() {
            return o
        };
        f.Mb = function() {
            return u
        };
        f.ab = w;
        f.Tc = function() {
            w(k, d)
        };
        f.bb = function(a) {
            w(l + a)
        };
        f.Md = function() {
            return r
        };
        f.le = function(a) {
            q = a
        };
        f.Xb = Q;
        f.Ic = M;
        f.vb = function(a) {
            F(a, 0)
        };
        f.Jc = function(a) {
            F(a, 1)
        };
        f.wb = function() {
            return g
        };
        f.ic = f.td = f.Id = f.Pc = a.Bc;
        f.Hc = a.gb();
        j = a.q({
            db: 16,
            jd: 50
        }, j);
        q = j.Ld;
        B = a.q({}, a.jf(), j.Mc);
        k = m = n;
        g = n + z;
        J = j.u || {};
        H = j.C || {};
        I = a.q({
            Jb: a.Rd(j.g) && j.g || c.Nc
        }, j.g)
    }
    var r = new function() {
            var h = this;

            function g(b, a, c) {
                c.push(a);
                b[a] = b[a] || [];
                b[a].push(c)
            }
            h.Ie = function(d) {
                for (var e = [], a, c = 0; c < d.fb; c++)
                    for (a = 0; a < d.kb; a++) g(e, b.ceil(1e5 * b.random()) % 13, [c, a]);
                return e
            }
        },
        q = function(n, s, p, t, y) {
            var f = this,
                u, g, e, x = 0,
                w = t.Bd,
                q, j = 8;

            function m(g, f) {
                var e = {
                    db: f,
                    j: 1,
                    v: 0,
                    kb: 1,
                    fb: 1,
                    e: 0,
                    k: 0,
                    i: 0,
                    bb: h,
                    Qb: h,
                    Oc: h,
                    Ve: r.Ie,
                    zd: {
                        Te: 0,
                        Ke: 0
                    },
                    g: c.Nc,
                    u: {},
                    bc: [],
                    C: {}
                };
                a.q(e, g);
                if (a.Rd(e.g)) e.g = {
                    Jb: e.g
                };
                e.fe = b.ceil(e.j / e.db);
                e.ee = function(b, a) {
                    b /= e.kb;
                    a /= e.fb;
                    var f = b + "x" + a;
                    if (!e.bc[f]) {
                        e.bc[f] = {
                            zb: b,
                            Cb: a
                        };
                        for (var c = 0; c < e.kb; c++)
                            for (var d = 0; d < e.fb; d++) e.bc[f][d + "," + c] = {
                                c: d * a,
                                t: c * b + b,
                                s: d * a + a,
                                a: c * b
                            }
                    }
                    return e.bc[f]
                };
                if (e.zc) {
                    e.zc = m(e.zc, f);
                    e.Qb = d
                }
                return e
            }

            function o(B, i, c, w, n, l) {
                var z = this,
                    t, u = {},
                    j = {},
                    m = [],
                    f, e, r, p = c.zd.Te || 0,
                    q = c.zd.Ke || 0,
                    g = c.ee(n, l),
                    o = C(c),
                    D = o.length - 1,
                    s = c.j + c.v * D,
                    x = w + s,
                    k = c.Qb,
                    y;
                x += 50;

                function C(a) {
                    var b = a.Ve(a);
                    return a.Oc ? b.reverse() : b
                }
                z.Ad = x;
                z.kc = function(d) {
                    d -= w;
                    var e = d < s;
                    if (e || y) {
                        y = e;
                        if (!k) d = s - d;
                        var f = b.ceil(d / c.db);
                        a.l(j, function(c, e) {
                            var d = b.max(f, c.Ge);
                            d = b.min(d, c.length - 1);
                            if (c.Dd != d) {
                                if (!c.Dd && !k) a.G(m[e]);
                                else d == c.Ee && k && a.V(m[e]);
                                c.Dd = d;
                                a.wf(m[e], c[d])
                            }
                        })
                    }
                };

                function v(b) {
                    a.Jf(b);
                    var c = a.S(b);
                    a.l(c, function(a) {
                        v(a)
                    })
                }
                i = a.ib(i);
                v(i);
                if (a.cb()) {
                    var E = !i["no-image"],
                        A = a.Ce(i);
                    a.l(A, function(b) {
                        (E || b["jssor-slider"]) && a.Ub(b, a.Ub(b), d)
                    })
                }
                a.l(o, function(i, m) {
                    a.l(i, function(G) {
                        var K = G[0],
                            J = G[1],
                            v = K + "," + J,
                            o = h,
                            s = h,
                            x = h;
                        if (p && J % 2) {
                            if (p & 3) o = !o;
                            if (p & 12) s = !s;
                            if (p & 16) x = !x
                        }
                        if (q && K % 2) {
                            if (q & 3) o = !o;
                            if (q & 12) s = !s;
                            if (q & 16) x = !x
                        }
                        c.c = c.c || c.i & 4;
                        c.s = c.s || c.i & 8;
                        c.a = c.a || c.i & 1;
                        c.t = c.t || c.i & 2;
                        var C = s ? c.s : c.c,
                            z = s ? c.c : c.s,
                            B = o ? c.t : c.a,
                            A = o ? c.a : c.t;
                        c.i = C || z || B || A;
                        r = {};
                        e = {
                            c: 0,
                            a: 0,
                            e: 1,
                            zb: n,
                            Cb: l
                        };
                        f = a.q({}, e);
                        t = a.q({}, g[v]);
                        if (c.e) e.e = 2 - c.e;
                        if (c.jb) {
                            e.jb = c.jb;
                            f.jb = 0
                        }
                        var I = c.kb * c.fb > 1 || c.i;
                        if (c.k || c.m) {
                            var H = d;
                            if (a.cb())
                                if (c.kb * c.fb > 1) H = h;
                                else I = h;
                            if (H) {
                                e.k = c.k ? c.k - 1 : 1;
                                f.k = 1;
                                if (a.cb() || a.Zc()) e.k = b.min(e.k, 2);
                                var N = c.m;
                                e.m = N * 360 * (x ? -1 : 1);
                                f.m = 0
                            }
                        }
                        if (I) {
                            if (c.i) {
                                var w = c.Cd || 1,
                                    i = t.Nb = {};
                                if (C && z) {
                                    i.c = g.Cb / 2 * w;
                                    i.s = -i.c
                                } else if (C) i.s = -g.Cb * w;
                                else if (z) i.c = g.Cb * w;
                                if (B && A) {
                                    i.a = g.zb / 2 * w;
                                    i.t = -i.a
                                } else if (B) i.t = -g.zb * w;
                                else if (A) i.a = g.zb * w
                            }
                            r.i = t;
                            f.i = g[v]
                        }
                        var L = o ? 1 : -1,
                            M = s ? 1 : -1;
                        if (c.x) e.a += n * c.x * L;
                        if (c.y) e.c += l * c.y * M;
                        a.l(e, function(b, c) {
                            if (a.Td(b))
                                if (b != f[c]) r[c] = b - f[c]
                        });
                        u[v] = k ? f : e;
                        var D = c.fe,
                            y = b.round(m * c.v / c.db);
                        j[v] = new Array(y);
                        j[v].Ge = y;
                        j[v].Ee = y + D - 1;
                        for (var F = 0; F <= D; F++) {
                            var E = a.qd(f, r, F / D, c.g, c.C, c.u, {
                                bb: c.bb,
                                lb: n,
                                Ab: l
                            });
                            E.jb = E.jb || 1;
                            j[v].push(E)
                        }
                    })
                });
                o.reverse();
                a.l(o, function(b) {
                    a.l(b, function(c) {
                        var f = c[0],
                            e = c[1],
                            d = f + "," + e,
                            b = i;
                        if (e || f) b = a.ib(i);
                        a.X(b, u[d]);
                        a.pb(b, "hidden");
                        a.I(b, "absolute");
                        B.He(b);
                        m[d] = b;
                        a.G(b, !k)
                    })
                })
            }

            function v() {
                var a = this,
                    b = 0;
                k.call(a, 0, u);
                a.ic = function(c, a) {
                    if (a - b > j) {
                        b = a;
                        e && e.kc(a);
                        g && g.kc(a)
                    }
                };
                a.nb = q
            }
            f.Ae = function() {
                var a = 0,
                    c = t.Lc,
                    d = c.length;
                if (w) a = x++ % d;
                else a = b.floor(b.random() * d);
                c[a] && (c[a].rb = a);
                return c[a]
            };
            f.De = function(w, x, i, k, a) {
                q = a;
                a = m(a, j);
                var h = k.ud,
                    d = i.ud;
                h["no-image"] = !k.Zb;
                d["no-image"] = !i.Zb;
                var l = h,
                    r = d,
                    v = a,
                    c = a.zc || m({}, j);
                if (!a.Qb) {
                    l = d;
                    r = h
                }
                var t = c.Ic || 0;
                g = new o(n, r, c, b.max(t - c.db, 0), s, p);
                e = new o(n, l, v, b.max(c.db - t, 0), s, p);
                g.kc(0);
                e.kc(0);
                u = b.max(g.Ad, e.Ad);
                f.rb = w
            };
            f.Ib = function() {
                n.Ib();
                g = i;
                e = i
            };
            f.Se = function() {
                var a = i;
                if (e) a = new v;
                return a
            };
            if (a.cb() || a.Zc() || y && a.Xc() < 537) j = 16;
            l.call(f);
            k.call(f, -1e7, 1e7)
        },
        f = function(p, ec) {
            var n = this;

            function Cc() {
                var a = this;
                k.call(a, -1e8, 2e8);
                a.Qe = function() {
                    var c = a.Mb(),
                        d = b.floor(c),
                        f = t(d),
                        e = c - b.floor(c);
                    return {
                        rb: f,
                        Oe: d,
                        Gb: e
                    }
                };
                a.ic = function(c, a) {
                    var e = b.floor(a);
                    if (e != a && a > c) e++;
                    Sb(e, d);
                    n.n(f.Ne, t(a), t(c), a, c)
                }
            }

            function Bc() {
                var b = this;
                k.call(b, 0, 0, {
                    Ld: r
                });
                a.l(C, function(a) {
                    D & 1 && a.le(r);
                    b.Jc(a);
                    a.Ic(ib / ac)
                })
            }

            function Ac() {
                var a = this,
                    b = Rb.yb;
                k.call(a, -1, 2, {
                    g: c.F,
                    Mc: {
                        Gb: Yb
                    },
                    Ld: r
                }, b, {
                    Gb: 1
                }, {
                    Gb: -2
                });
                a.ac = b
            }

            function pc(m, l) {
                var a = this,
                    c, e, g, j, b;
                k.call(a, -1e8, 2e8, {
                    jd: 100
                });
                a.td = function() {
                    R = d;
                    V = i;
                    n.n(f.de, t(y.hb()), y.hb())
                };
                a.Id = function() {
                    R = h;
                    j = h;
                    var a = y.Qe();
                    n.n(f.ce, t(y.hb()), y.hb());
                    !a.Gb && Ec(a.Oe, q)
                };
                a.ic = function(h, f) {
                    var a;
                    if (j) a = b;
                    else {
                        a = e;
                        if (g) {
                            var d = f / g;
                            a = o.ge(d) * (e - c) + c
                        }
                    }
                    y.ab(a)
                };
                a.Wb = function(b, f, d, h) {
                    c = b;
                    e = f;
                    g = d;
                    y.ab(b);
                    a.ab(0);
                    a.Hd(d, h)
                };
                a.we = function(c) {
                    j = d;
                    b = c;
                    a.Jd(c, i, d)
                };
                a.Kf = function(a) {
                    b = a
                };
                y = new Cc;
                y.vb(m);
                y.vb(l)
            }

            function qc() {
                var c = this,
                    b = Wb();
                a.O(b, 0);
                a.ec(b, "pointerEvents", "none");
                c.yb = b;
                c.He = function(c) {
                    a.J(b, c);
                    a.G(b)
                };
                c.Ib = function() {
                    a.V(b);
                    a.bd(b)
                }
            }

            function zc(p, g) {
                var c = this,
                    s, x, I, y, j, B = [],
                    G, u, U, H, P, F, e, w, m;
                k.call(c, -v, v + 1, {});

                function E(a) {
                    x && x.jc();
                    s && s.jc();
                    R(p, a);
                    F = d;
                    s = new N.o(p, N, 1);
                    x = new N.o(p, N);
                    x.Tc();
                    s.Tc()
                }

                function X() {
                    s.Hc < N.Hc && E()
                }

                function J(p, r, m) {
                    if (!H) {
                        H = d;
                        if (j && m) {
                            var e = m.width,
                                b = m.height,
                                l = e,
                                k = b;
                            if (e && b && o.Kb) {
                                if (o.Kb & 3 && (!(o.Kb & 4) || e > L || b > K)) {
                                    var i = h,
                                        q = L / K * b / e;
                                    if (o.Kb & 1) i = q > 1;
                                    else if (o.Kb & 2) i = q < 1;
                                    l = i ? e * K / b : L;
                                    k = i ? K : b * L / e
                                }
                                a.p(j, l);
                                a.r(j, k);
                                a.E(j, (K - k) / 2);
                                a.D(j, (L - l) / 2)
                            }
                            a.I(j, "absolute");
                            n.n(f.If, g)
                        }
                    }
                    a.V(r);
                    p && p(c)
                }

                function W(b, d, e, f) {
                    if (f == V && q == g && S)
                        if (!Dc) {
                            var a = t(b);
                            A.De(a, g, d, c, e);
                            d.oe();
                            bb.Xb(a, 1);
                            bb.ab(a);
                            z.Wb(b, b, 0)
                        }
                }

                function ab(b) {
                    if (b == V && q == g) {
                        if (!e) {
                            var a = i;
                            if (A)
                                if (A.rb == g) a = A.Se();
                                else A.Ib();
                            X();
                            e = new wc(p, g, a, c.Gf(), c.Hf());
                            e.rd(m)
                        }!e.Md() && e.vc()
                    }
                }

                function Q(f, d, h) {
                    if (f == g) {
                        if (f != d) C[d] && C[d].Ye();
                        else !h && e && e.sf();
                        m && m.od();
                        var j = V = a.gb();
                        c.Pb(a.Z(i, ab, j))
                    } else {
                        var l = b.abs(g - f),
                            k = v + o.vf - 1;
                        (!P || l <= k) && c.Pb()
                    }
                }

                function db() {
                    if (q == g && e) {
                        e.xb();
                        m && m.uf();
                        m && m.pf();
                        e.md()
                    }
                }

                function gb() {
                    q == g && e && e.xb()
                }

                function Z(a) {
                    !O && n.n(f.of, g, a)
                }

                function M() {
                    m = w.pInstance;
                    e && e.rd(m)
                }
                c.Pb = function(c, b) {
                    b = b || y;
                    if (B.length && !H) {
                        a.G(b);
                        if (!U) {
                            U = d;
                            n.n(f.Ef, g);
                            a.l(B, function(b) {
                                if (!a.dc(b, "src")) {
                                    b.src = a.A(b, "src2");
                                    a.eb(b, b["display-origin"])
                                }
                            })
                        }
                        a.mf(B, j, a.Z(i, J, c, b))
                    } else J(c, b)
                };
                c.Cf = function() {
                    if (A) {
                        var b = A.Ae(r);
                        if (b) {
                            var e = V = a.gb(),
                                c = g + Vb,
                                d = C[t(c)];
                            return d.Pb(a.Z(i, W, c, d, b, e), y)
                        }
                    }
                    cb(q + o.cc * Vb)
                };
                c.xc = function() {
                    Q(g, g, d)
                };
                c.Ye = function() {
                    m && m.uf();
                    m && m.pf();
                    c.Wd();
                    e && e.te();
                    e = i;
                    E()
                };
                c.oe = function() {
                    a.V(p)
                };
                c.Wd = function() {
                    a.G(p)
                };
                c.Pe = function() {
                    m && m.od()
                };

                function R(b, e, c) {
                    if (a.dc(b, "jssor-slider")) return;
                    c = c || 0;
                    if (!F) {
                        if (b.tagName == "IMG") {
                            B.push(b);
                            if (!a.dc(b, "src")) {
                                P = d;
                                b["display-origin"] = a.eb(b);
                                a.V(b)
                            }
                        }
                        a.cb() && a.O(b, (a.O(b) || 0) + 1);
                        if (o.Xd && a.Xc())(!Y || a.Xc() < 534 || !fb && !a.cf()) && a.We(b)
                    }
                    var f = a.S(b);
                    a.l(f, function(f) {
                        var i = f.tagName,
                            k = a.A(f, "u");
                        if (k == "player" && !w) {
                            w = f;
                            if (w.pInstance) M();
                            else a.f(w, "dataavailable", M)
                        }
                        if (k == "caption") {
                            if (!a.be() && !e) {
                                var g = a.ib(f, h, d);
                                a.lc(g, f, b);
                                a.Sb(f, b);
                                f = g;
                                e = d
                            }
                        } else if (!F && !c && !j) {
                            if (i == "A") {
                                if (a.A(f, "u") == "image") j = a.Ue(f, "IMG");
                                else j = a.H(f, "image", d);
                                if (j) {
                                    G = f;
                                    a.X(G, T);
                                    u = a.ib(G, d);
                                    a.eb(u, "block");
                                    a.X(u, T);
                                    a.Ub(u, 0);
                                    a.ec(u, "backgroundColor", "#000")
                                }
                            } else if (i == "IMG" && a.A(f, "u") == "image") j = f;
                            if (j) {
                                j.border = 0;
                                a.X(j, T)
                            }
                        }
                        R(f, e, c + 1)
                    })
                }
                c.Pc = function(c, b) {
                    var a = v - b;
                    Yb(I, a)
                };
                c.Gf = function() {
                    return s
                };
                c.Hf = function() {
                    return x
                };
                c.rb = g;
                l.call(c);
                var D = a.H(p, "thumb", d);
                if (D) {
                    c.Le = a.ib(D);
                    a.Vd(D, "id");
                    a.V(D)
                }
                a.G(p);
                y = a.ib(eb);
                a.O(y, 1e3);
                a.f(p, "click", Z);
                E(d);
                c.Zb = j;
                c.Pd = u;
                c.ud = p;
                c.ac = I = p;
                a.J(I, y);
                n.Lb(203, Q);
                n.Lb(28, gb);
                n.Lb(24, db)
            }

            function wc(E, i, p, u, t) {
                var b = this,
                    l = 0,
                    w = 0,
                    m, g, c, e, j, r, v, s, o = C[i];
                k.call(b, 0, 0);

                function x() {
                    a.bd(P);
                    cc && j && o.Pd && a.J(P, o.Pd);
                    a.G(P, !j && o.Zb)
                }

                function y() {
                    if (r) {
                        r = h;
                        n.n(f.ze, i, c, l, g, c, e);
                        b.ab(g)
                    }
                    b.vc()
                }

                function z(a) {
                    s = a;
                    b.xb();
                    b.vc()
                }
                b.vc = function() {
                    var a = b.Mb();
                    if (!B && !R && !s && q == i) {
                        if (!a) {
                            if (m && !j) {
                                j = d;
                                b.md(d);
                                n.n(f.ue, i, l, w, m, e)
                            }
                            x()
                        }
                        var h, p = f.Sd;
                        if (a != e)
                            if (a == c) h = e;
                            else if (a == g) h = c;
                        else if (!a) h = g;
                        else if (a > c) {
                            r = d;
                            h = c;
                            p = f.pe
                        } else h = b.Ed();
                        n.n(p, i, a, l, g, c, e);
                        var k = S && (!H || I);
                        if (a == e)(c != e && !(H & 12) || k) && o.Cf();
                        else(k || a != c) && b.Hd(h, y)
                    }
                };
                b.sf = function() {
                    c == e && c == b.Mb() && b.ab(g)
                };
                b.te = function() {
                    A && A.rb == i && A.Ib();
                    var a = b.Mb();
                    a < e && n.n(f.Sd, i, -a - 1, l, g, c, e)
                };
                b.md = function(b) {
                    p && a.pb(kb, b && p.nb.nd ? "" : "hidden")
                };
                b.Pc = function(b, a) {
                    if (j && a >= m) {
                        j = h;
                        x();
                        o.Wd();
                        A.Ib();
                        n.n(f.rf, i, l, w, m, e)
                    }
                    n.n(f.af, i, a, l, g, c, e)
                };
                b.rd = function(a) {
                    if (a && !v) {
                        v = a;
                        a.Lb($JssorPlayer$.Re, z)
                    }
                };
                p && b.Jc(p);
                m = b.wb();
                b.wb();
                b.Jc(u);
                g = u.wb();
                c = g + (a.yc(a.A(E, "idle")) || oc);
                t.Ic(c);
                b.vb(t);
                e = b.wb()
            }

            function Yb(g, f) {
                var e = w > 0 ? w : jb,
                    c = Ab * f * (e & 1),
                    d = Bb * f * (e >> 1 & 1);
                c = b.round(c);
                d = b.round(d);
                a.D(g, c);
                a.E(g, d)
            }

            function Mb() {
                rb = R;
                Ib = z.Ed();
                F = y.hb()
            }

            function fc() {
                Mb();
                if (B || !I && H & 12) {
                    z.xb();
                    n.n(f.bf)
                }
            }

            function dc(e) {
                if (!B && (I || !(H & 12)) && !z.Md()) {
                    var c = y.hb(),
                        a = b.ceil(F);
                    if (e && b.abs(G) >= o.Eb) {
                        a = b.ceil(c);
                        a += hb
                    }
                    if (!(D & 1)) a = b.min(r - v, b.max(a, 0));
                    var d = b.abs(a - c);
                    d = 1 - b.pow(1 - d, 5);
                    if (!O && rb) z.ne(Ib);
                    else if (c == a) {
                        ub.Pe();
                        ub.xc()
                    } else z.Wb(c, a, d * Tb)
                }
            }

            function Gb(b) {
                !a.A(a.dd(b), "nodrag") && a.hc(b)
            }

            function tc(a) {
                Xb(a, 1)
            }

            function Xb(b, c) {
                b = a.Kd(b);
                var k = a.dd(b);
                if (!M && !a.A(k, "nodrag") && uc() && (!c || b.touches.length == 1)) {
                    B = d;
                    zb = h;
                    V = i;
                    a.f(g, c ? "touchmove" : "mousemove", Cb);
                    a.gb();
                    O = 0;
                    fc();
                    if (!rb) w = 0;
                    if (c) {
                        var j = b.touches[0];
                        vb = j.clientX;
                        wb = j.clientY
                    } else {
                        var e = a.vd(b);
                        vb = e.x;
                        wb = e.y
                    }
                    G = 0;
                    db = 0;
                    hb = 0;
                    n.n(f.zf, t(F), F, b)
                }
            }

            function Cb(e) {
                if (B) {
                    e = a.Kd(e);
                    var f;
                    if (e.type != "mousemove") {
                        var l = e.touches[0];
                        f = {
                            x: l.clientX,
                            y: l.clientY
                        }
                    } else f = a.vd(e);
                    if (f) {
                        var j = f.x - vb,
                            k = f.y - wb;
                        if (b.floor(F) != F) w = w || jb & M;
                        if ((j || k) && !w) {
                            if (M == 3)
                                if (b.abs(k) > b.abs(j)) w = 2;
                                else w = 1;
                            else w = M;
                            if (Y && w == 1 && b.abs(k) - b.abs(j) > 3) zb = d
                        }
                        if (w) {
                            var c = k,
                                i = Bb;
                            if (w == 1) {
                                c = j;
                                i = Ab
                            }
                            if (!(D & 1)) {
                                if (c > 0) {
                                    var g = i * q,
                                        h = c - g;
                                    if (h > 0) c = g + b.sqrt(h) * 5
                                }
                                if (c < 0) {
                                    var g = i * (r - v - q),
                                        h = -c - g;
                                    if (h > 0) c = -g - b.sqrt(h) * 5
                                }
                            }
                            if (G - db < -2) hb = 0;
                            else if (G - db > 2) hb = -1;
                            db = G;
                            G = c;
                            tb = F - G / i / (ab || 1);
                            if (G && w && !zb) {
                                a.hc(e);
                                if (!R) z.we(tb);
                                else z.Kf(tb)
                            }
                        }
                    }
                }
            }

            function pb() {
                rc();
                if (B) {
                    B = h;
                    a.gb();
                    a.U(g, "mousemove", Cb);
                    a.U(g, "touchmove", Cb);
                    O = G;
                    z.xb();
                    var b = y.hb();
                    n.n(f.ye, t(b), b, t(F), F);
                    H & 12 && Mb();
                    dc(d)
                }
            }

            function jc(c) {
                if (O) {
                    a.gf(c);
                    var b = a.dd(c);
                    while (b && u !== b) {
                        b.tagName == "A" && a.hc(c);
                        try {
                            b = b.parentNode
                        } catch (d) {
                            break
                        }
                    }
                }
            }

            function nc(a) {
                C[q];
                q = t(a);
                ub = C[q];
                Sb(a);
                return q
            }

            function Ec(a, b) {
                w = 0;
                nc(a);
                n.n(f.me, t(a), b)
            }

            function Sb(b, c) {
                xb = b;
                a.l(Q, function(a) {
                    a.cd(t(b), b, c)
                })
            }

            function uc() {
                var b = f.hd || 0,
                    a = ob;
                if (Y) a & 1 && (a &= 1);
                f.hd |= a;
                return M = a & ~b
            }

            function rc() {
                if (M) {
                    f.hd &= ~ob;
                    M = 0
                }
            }

            function Wb() {
                var b = a.tb();
                a.X(b, T);
                a.I(b, "absolute");
                return b
            }

            function t(a) {
                return (a % r + r) % r
            }

            function kc(a, c) {
                if (c)
                    if (!D) {
                        a = b.min(b.max(a + xb, 0), r - v);
                        c = h
                    } else if (D & 2) {
                    a = t(a + xb);
                    c = h
                }
                cb(a, o.qb, c)
            }

            function yb() {
                a.l(Q, function(a) {
                    a.Yc(a.sc.M <= I)
                })
            }

            function hc() {
                if (!I) {
                    I = 1;
                    yb();
                    if (!B) {
                        H & 12 && dc();
                        H & 3 && C[q].xc()
                    }
                }
            }

            function gc() {
                if (I) {
                    I = 0;
                    yb();
                    B || !(H & 12) || fc()
                }
            }

            function ic() {
                T = {
                    zb: L,
                    Cb: K,
                    c: 0,
                    a: 0
                };
                a.l(W, function(b) {
                    a.X(b, T);
                    a.I(b, "absolute");
                    a.pb(b, "hidden");
                    a.V(b)
                });
                a.X(eb, T)
            }

            function nb(b, a) {
                cb(b, a, d)
            }

            function cb(f, e, k) {
                if (Ob && (!B || o.Zd)) {
                    R = d;
                    B = h;
                    z.xb();
                    if (e == j) e = Tb;
                    var c = Db.Mb(),
                        a = f;
                    if (k) {
                        a = c + f;
                        if (f > 0) a = b.ceil(a);
                        else a = b.floor(a)
                    }
                    if (D & 2) a = t(a);
                    if (!(D & 1)) a = b.max(0, b.min(a, r - v));
                    var i = (a - c) % r;
                    a = c + i;
                    var g = c == a ? 0 : e * b.abs(i);
                    g = b.min(g, e * v * 1.5);
                    z.Wb(c, a, g || 1)
                }
            }
            n.Df = cb;
            n.Jd = function() {
                if (!S) {
                    S = d;
                    C[q] && C[q].xc()
                }
            };
            n.tf = function() {
                return O
            };

            function Z() {
                return a.p(x || p)
            }

            function lb() {
                return a.r(x || p)
            }
            n.lb = Z;
            n.Ab = lb;

            function Eb(c, d) {
                if (c == j) return a.p(p);
                if (!x) {
                    var b = a.tb(g);
                    a.Ud(b, a.Ud(p));
                    a.fc(b, a.fc(p));
                    a.eb(b, "block");
                    a.I(b, "relative");
                    a.E(b, 0);
                    a.D(b, 0);
                    a.pb(b, "visible");
                    x = a.tb(g);
                    a.I(x, "absolute");
                    a.E(x, 0);
                    a.D(x, 0);
                    a.p(x, a.p(p));
                    a.r(x, a.r(p));
                    a.nf(x, "0 0");
                    a.J(x, b);
                    var k = a.S(p);
                    a.J(p, x);
                    a.ec(p, "backgroundImage", "");
                    var i = {
                        navigator: X && X.N == h,
                        arrowleft: E && E.N == h,
                        arrowright: E && E.N == h,
                        thumbnavigator: J && J.N == h,
                        thumbwrapper: J && J.N == h
                    };
                    a.l(k, function(c) {
                        a.J(i[a.A(c, "u")] ? p : b, c)
                    })
                }
                ab = c / (d ? a.r : a.p)(x);
                a.qe(x, ab);
                var f = d ? ab * Z() : c,
                    e = d ? c : ab * lb();
                a.p(p, f);
                a.r(p, e);
                a.l(Q, function(a) {
                    a.Dc(f, e)
                })
            }
            n.Ec = Eb;
            n.pd = function(a) {
                var d = b.ceil(t(ib / ac)),
                    c = t(a - q + d);
                if (c > v) {
                    if (a - q > r / 2) a -= r;
                    else if (a - q <= -r / 2) a += r
                } else a = q + c - d;
                return a
            };
            l.call(n);
            n.yb = p = a.sb(p);
            var o = a.q({
                Kb: 0,
                vf: 1,
                Cc: 0,
                Vb: h,
                nc: 1,
                Xd: d,
                Zd: d,
                cc: 1,
                Ob: 3e3,
                Hb: 1,
                qb: 500,
                ge: c.xd,
                Eb: 20,
                Fb: 0,
                P: 1,
                oc: 0,
                qc: 1,
                ub: 1,
                Rb: 1
            }, ec);
            if (o.xf != j) o.Ob = o.xf;
            if (o.kb != j) o.P = o.kb;
            var jb = o.ub & 3,
                Vb = (o.ub & 4) / -4 || 1,
                gb = o.Od,
                N = a.q({
                    o: s,
                    ed: 1,
                    fd: 1
                }, o.Af),
                X = o.Fc,
                E = o.Qc,
                J = o.Rc,
                U = !o.qc,
                x, u = a.H(p, "slides", U),
                eb = a.H(p, "loading", U) || a.tb(g),
                Hb = a.H(p, "navigator", U),
                bc = a.H(p, "arrowleft", U),
                Zb = a.H(p, "arrowright", U),
                Fb = a.H(p, "thumbnavigator", U),
                mc = a.p(u),
                lc = a.r(u),
                T, W = [],
                vc = a.S(u);
            a.l(vc, function(b) {
                if (b.tagName == "DIV" && !a.A(b, "u")) W.push(b);
                else a.cb() && a.O(b, (a.O(b) || 0) + 1)
            });
            var q = -1,
                xb, ub, r = W.length,
                L = o.yf || mc,
                K = o.re || lc,
                Ub = o.Fb,
                Ab = L + Ub,
                Bb = K + Ub,
                ac = jb & 1 ? Ab : Bb,
                v = b.min(o.P, r),
                kb, w, M, zb, Q = [],
                Nb, Pb, Lb, cc, Dc, S, H = o.Hb,
                oc = o.Ob,
                Tb = o.qb,
                sb, fb, ib, Ob = v < r,
                D = Ob ? o.nc : 0,
                ob, O, I = 1,
                R, B, V, vb = 0,
                wb = 0,
                G, db, hb, Db, y, bb, z, Rb = new qc,
                ab;
            S = o.Vb;
            n.sc = ec;
            ic();
            a.dc(p, "jssor-slider", d);
            a.O(u, a.O(u) || 0);
            a.I(u, "absolute");
            kb = a.ib(u, d);
            a.lc(kb, u);
            if (gb) {
                cc = gb.gd;
                sb = gb.o;
                fb = v == 1 && r > 1 && sb && (!a.be() || a.id() >= 8)
            }
            ib = fb || v >= r || !(D & 1) ? 0 : o.oc;
            ob = (v > 1 || ib ? jb : -1) & o.Rb;
            var Qb = u,
                C = [],
                A, P, Y = a.Je().ke,
                F, rb, Ib, tb;
            bb = new Ac;
            if (fb) A = new sb(Rb, L, K, gb, Y);
            a.J(kb, bb.ac);
            a.pb(u, "hidden");
            P = Wb();
            a.ec(P, "backgroundColor", "#000");
            a.Ub(P, 0);
            a.lc(P, Qb.firstChild, Qb);
            for (var qb = 0; qb < W.length; qb++) {
                var xc = W[qb],
                    yc = new zc(xc, qb);
                C.push(yc)
            }
            a.V(eb);
            Db = new Bc;
            z = new pc(Db, bb);
            if (ob) {
                a.f(u, "mousedown", Xb);
                a.f(u, "touchstart", tc);
                a.f(u, "dragstart", Gb);
                a.f(u, "selectstart", Gb);
                a.f(g, "mouseup", pb);
                a.f(g, "touchend", pb);
                a.f(g, "touchcancel", pb);
                a.f(e, "blur", pb)
            }
            H &= Y ? 10 : 5;
            if (Hb && X) {
                Nb = new X.o(Hb, X, Z(), lb());
                Q.push(Nb)
            }
            if (E && bc && Zb) {
                E.nc = D;
                E.P = v;
                Pb = new E.o(bc, Zb, E, Z(), lb());
                Q.push(Pb)
            }
            if (Fb && J) {
                J.Cc = o.Cc;
                Lb = new J.o(Fb, J);
                Q.push(Lb)
            }
            a.l(Q, function(a) {
                a.Uc(r, C, eb);
                a.Lb(m.mc, kc)
            });
            Eb(Z());
            a.f(u, "click", jc);
            a.f(p, "mouseout", a.Yb(hc, p));
            a.f(p, "mouseover", a.Yb(gc, p));
            yb();
            o.Sc && a.f(g, "keydown", function(a) {
                if (a.keyCode == 37) nb(-1);
                else a.keyCode == 39 && nb(1)
            });
            var mb = o.Cc;
            if (!(D & 1)) mb = b.max(0, b.min(mb, r - v));
            z.Wb(mb, mb, 0)
        };
    f.of = 21;
    f.zf = 22;
    f.ye = 23;
    f.de = 24;
    f.ce = 25;
    f.Ef = 26;
    f.If = 27;
    f.bf = 28;
    f.Ne = 202;
    f.me = 203;
    f.ue = 206;
    f.rf = 207;
    f.af = 208;
    f.Sd = 209;
    f.pe = 210;
    f.ze = 211;
    var m = {
            mc: 1
        },
        o = function(e, D) {
            var f = this;
            l.call(f);
            e = a.sb(e);
            var t, u, s, r, n = 0,
                c, o, k, y, z, j, g, q, p, C = [],
                A = [];

            function x(a) {
                a != -1 && A[a].ld(a == n)
            }

            function v(a) {
                f.n(m.mc, a * o)
            }
            f.yb = e;
            f.cd = function(a) {
                if (a != r) {
                    var d = n,
                        c = b.floor(a / o);
                    n = c;
                    r = a;
                    x(d);
                    x(c)
                }
            };
            f.Yc = function(b) {
                a.G(e, b)
            };
            var B;
            f.Dc = function(f, b) {
                if (!B || c.N == h) {
                    c.Q & 1 && a.D(e, (f - u) / 2);
                    c.Q & 2 && a.E(e, (b - s) / 2);
                    B = d
                }
            };
            var w;
            f.Uc = function(D) {
                if (!w) {
                    t = b.ceil(D / o);
                    n = 0;
                    var m = q + y,
                        r = p + z,
                        l = b.ceil(t / k) - 1;
                    u = q + m * (!j ? l : k - 1);
                    s = p + r * (j ? l : k - 1);
                    a.p(e, u);
                    a.r(e, s);
                    for (var f = 0; f < t; f++) {
                        var B = a.he();
                        a.Xe(B, f + 1);
                        var h = a.kd(g, "numbertemplate", B, d);
                        a.I(h, "absolute");
                        var x = f % (l + 1);
                        a.D(h, !j ? m * x : f % k * m);
                        a.E(h, j ? r * x : b.floor(f / (l + 1)) * r);
                        a.J(e, h);
                        C[f] = h;
                        c.K & 1 && a.f(h, "click", a.Z(i, v, f));
                        c.K & 2 && a.f(h, "mouseover", a.Yb(a.Z(i, v, f), h));
                        A[f] = a.gc(h)
                    }
                    w = d
                }
            };
            f.sc = c = a.q({
                Db: 0,
                Bb: 0,
                W: 1,
                K: 1
            }, D);
            g = a.H(e, "prototype");
            q = a.p(g);
            p = a.r(g);
            a.Sb(g, e);
            o = c.yd || 1;
            k = c.Tb || 1;
            y = c.Db;
            z = c.Bb;
            j = c.W - 1
        },
        p = function(c, f, j, o) {
            var b = this;
            l.call(b);
            var v, u, e, g, k, r = a.p(c),
                p = a.r(c);

            function n(a) {
                b.n(m.mc, a, d)
            }

            function s(b) {
                a.G(c, b || !j.nc && e == 0);
                a.G(f, b || !j.nc && e >= u - j.P);
                v = b
            }
            b.cd = function(b, a, c) {
                if (c) e = a;
                else {
                    e = b;
                    s(v)
                }
            };
            b.Yc = s;
            var t;
            b.Dc = function(e, b) {
                if (!t || g.N == h) {
                    if (g.Q & 1) {
                        a.D(c, (o - r) / 2);
                        a.D(f, (o - r) / 2)
                    }
                    if (g.Q & 2) {
                        a.E(c, (b - p) / 2);
                        a.E(f, (b - p) / 2)
                    }
                    t = d
                }
            };
            var q;
            b.Uc = function(b) {
                u = b;
                e = 0;
                if (!q) {
                    a.f(c, "click", a.Z(i, n, -k));
                    a.f(f, "click", a.Z(i, n, k));
                    a.gc(c);
                    a.gc(f);
                    q = d
                }
            };
            b.sc = g = a.q({
                yd: 1
            }, j);
            k = g.yd
        },
        n = function(k, B) {
            var i = this,
                y, p, c, v = [],
                z, x, e, q, r, u, t, o, s, g, n;
            l.call(i);
            k = a.sb(k);

            function A(l, f) {
                var g = this,
                    b, k, j;

                function o() {
                    k.ld(p == f)
                }

                function h() {
                    if (!s.tf()) {
                        var a = e - f % e,
                            b = s.pd((f + a) / e - 1),
                            c = b * e + e - a;
                        i.n(m.mc, c)
                    }
                }
                g.rb = f;
                g.wd = o;
                j = l.Le || l.Zb || a.tb();
                g.ac = b = a.kd(n, "thumbnailtemplate", j, d);
                k = a.gc(b);
                c.K & 1 && a.f(b, "click", h);
                c.K & 2 && a.f(b, "mouseover", a.Yb(h, b))
            }
            i.cd = function(c, d, f) {
                var a = p;
                p = c;
                a != -1 && v[a].wd();
                v[c].wd();
                !f && s.Df(s.pd(b.floor(d / e)))
            };
            i.Yc = function(b) {
                a.G(k, b)
            };
            i.Dc = a.Bc;
            var w;
            i.Uc = function(F, D) {
                if (!w) {
                    y = F;
                    b.ceil(y / e);
                    p = -1;
                    o = b.min(o, D.length);
                    var i = c.W & 1,
                        m = u + (u + q) * (e - 1) * (1 - i),
                        l = t + (t + r) * (e - 1) * i,
                        B = m + (m + q) * (o - 1) * i,
                        n = l + (l + r) * (o - 1) * (1 - i);
                    a.I(g, "absolute");
                    a.pb(g, "hidden");
                    c.Q & 1 && a.D(g, (z - B) / 2);
                    c.Q & 2 && a.E(g, (x - n) / 2);
                    a.p(g, B);
                    a.r(g, n);
                    var j = [];
                    a.l(D, function(l, f) {
                        var h = new A(l, f),
                            d = h.ac,
                            c = b.floor(f / e),
                            k = f % e;
                        a.D(d, (u + q) * k * (1 - i));
                        a.E(d, (t + r) * k * i);
                        if (!j[c]) {
                            j[c] = a.tb();
                            a.J(g, j[c])
                        }
                        a.J(j[c], d);
                        v.push(h)
                    });
                    var E = a.q({
                        Xd: h,
                        Vb: h,
                        Zd: h,
                        yf: m,
                        re: l,
                        Fb: q * i + r * (1 - i),
                        Eb: 12,
                        qb: 200,
                        Hb: 1,
                        ub: c.W,
                        Rb: c.Kc ? 0 : c.W
                    }, c);
                    s = new f(k, E);
                    w = d
                }
            };
            i.sc = c = a.q({
                Db: 3,
                Bb: 3,
                P: 1,
                W: 1,
                Q: 3,
                K: 1
            }, B);
            if (c.fb != j) c.Tb = c.fb;
            z = a.p(k);
            x = a.r(k);
            g = a.H(k, "slides", d);
            n = a.H(g, "prototype");
            u = a.p(n);
            t = a.r(n);
            a.Sb(n, g);
            e = c.Tb || 1;
            q = c.Db;
            r = c.Bb;
            o = c.P
        };

    function s() {
        k.call(this, 0, 0);
        this.jc = a.Bc
    }
    var t = function(p, h, f) {
        var c = this,
            g, n = f ? h.ed : h.fd,
            e = h.ae,
            o = {
                nb: "t",
                v: "d",
                j: "du",
                x: "x",
                y: "y",
                m: "r",
                k: "z",
                e: "f",
                mb: "b"
            },
            d = {
                Jb: function(b, a) {
                    if (!isNaN(a.ob)) b = a.ob;
                    else b *= a.Be;
                    return b
                },
                e: function(b, a) {
                    return this.Jb(b - 1, a)
                }
            };
        d.k = d.e;
        k.call(c, 0, 0);

        function l(r, m) {
            var k = [],
                i, j = [],
                c = [];

            function h(c, d) {
                var b = {};
                a.l(o, function(g, h) {
                    var e = a.A(c, g + (d || ""));
                    if (e) {
                        var f = {};
                        if (g == "t") f.ob = e;
                        else if (e.indexOf("%") + 1) f.Be = a.yc(e) / 100;
                        else f.ob = a.yc(e);
                        b[h] = f
                    }
                });
                return b
            }

            function p() {
                return e[b.floor(b.random() * e.length)]
            }

            function g(f) {
                var h;
                if (f == "*") h = p();
                else if (f) {
                    var d = e[a.lf(f)] || e[f];
                    if (a.Ac(d)) {
                        if (f != i) {
                            i = f;
                            c[f] = 0;
                            j[f] = d[b.floor(b.random() * d.length)]
                        } else c[f]++;
                        d = j[f];
                        if (a.Ac(d)) {
                            d = d.length && d[c[f] % d.length];
                            if (a.Ac(d)) d = d[b.floor(b.random() * d.length)]
                        }
                    }
                    h = d;
                    if (a.Nd(h)) h = g(h)
                }
                return h
            }
            var q = a.S(r);
            a.l(q, function(b) {
                var c = [];
                c.yb = b;
                var e = a.A(b, "u") == "caption";
                a.l(f ? [0, 3] : [2], function(k, o) {
                    if (e) {
                        var j, f;
                        if (k != 2 || !a.A(b, "t3")) {
                            f = h(b, k);
                            if (k == 2 && !f.nb) {
                                f.v = f.v || {
                                    ob: 0
                                };
                                f = a.q(h(b, 0), f)
                            }
                        }
                        if (f && f.nb) {
                            j = g(f.nb.ob);
                            if (j) {
                                var i = a.q({
                                    v: 0
                                }, j);
                                a.l(f, function(c, a) {
                                    var b = (d[a] || d.Jb).apply(d, [i[a], f[a]]);
                                    if (!isNaN(b)) i[a] = b
                                });
                                if (!o)
                                    if (f.mb) i.mb = f.mb.ob || 0;
                                    else if (n & 2) i.mb = 0
                            }
                        }
                        c.push(i)
                    }
                    if (m % 2 && !o) c.S = l(b, m + 1)
                });
                k.push(c)
            });
            return k
        }

        function m(w, c, z) {
            var g = {
                    g: c.g,
                    u: c.u,
                    C: c.C,
                    Oc: f && !z
                },
                m = w,
                r = a.se(w),
                l = a.p(m),
                j = a.r(m),
                y = a.p(r),
                x = a.r(r),
                h = {},
                e = {},
                i = c.Cd || 1;
            if (c.e) e.e = 1 - c.e;
            g.lb = l;
            g.Ab = j;
            if (c.k || c.m) {
                e.k = (c.k || 2) - 2;
                if (a.cb() || a.Zc()) e.k = b.min(e.k, 1);
                h.k = 1;
                var B = c.m || 0;
                e.m = B * 360;
                h.m = 0
            } else if (c.i) {
                var s = {
                        c: 0,
                        t: l,
                        s: j,
                        a: 0
                    },
                    v = a.q({}, s),
                    d = v.Nb = {},
                    u = c.i & 4,
                    p = c.i & 8,
                    t = c.i & 1,
                    q = c.i & 2;
                if (u && p) {
                    d.c = j / 2 * i;
                    d.s = -d.c
                } else if (u) d.s = -j * i;
                else if (p) d.c = j * i;
                if (t && q) {
                    d.a = l / 2 * i;
                    d.t = -d.a
                } else if (t) d.t = -l * i;
                else if (q) d.a = l * i;
                g.bb = c.bb;
                e.i = v;
                h.i = s
            }
            var n = 0,
                o = 0;
            if (c.x) n -= y * c.x;
            if (c.y) o -= x * c.y;
            if (n || o || g.bb) {
                e.a = n;
                e.c = o
            }
            var A = c.j;
            h = a.q(h, a.ef(m, e));
            g.Mc = a.df();
            return new k(c.v, A, g, m, h, e)
        }

        function i(b, d) {
            a.l(d, function(a) {
                var e, h = a.yb,
                    d = a[0],
                    k = a[1];
                if (d) {
                    e = m(h, d);
                    b = e.Xb(d.mb == j ? b : d.mb, 1)
                }
                b = i(b, a.S);
                if (k) {
                    var f = m(h, k, 1);
                    f.Xb(b, 1);
                    c.vb(f);
                    g.vb(f)
                }
                e && c.vb(e)
            });
            return b
        }
        c.jc = function() {
            c.ab(c.wb() * (f || 0));
            g.Tc()
        };
        g = new k(0, 0);
        i(0, n ? l(p, 1) : [])
    };
    jssor_sliderb_starter = function(j) {
        var h = [{
                j: 1200,
                x: -.3,
                C: {
                    a: [.3, .7]
                },
                g: {
                    a: c.Y,
                    e: c.F
                },
                e: 2
            }, {
                j: 1200,
                x: .3,
                Qb: d,
                g: {
                    a: c.Y,
                    e: c.F
                },
                e: 2
            }],
            i = new f(j, {
                Vb: d,
                cc: 1,
                Ob: 4e3,
                Hb: 1,
                Sc: d,
                qb: 500,
                Eb: 20,
                Fb: 0,
                P: 1,
                oc: 0,
                qc: 1,
                ub: 1,
                Rb: 3,
                Od: {
                    o: q,
                    Lc: h,
                    Bd: 1,
                    gd: d
                },
                Fc: {
                    o: o,
                    M: 2,
                    Tb: 1,
                    Db: 10,
                    Bb: 10
                },
                Qc: {
                    o: p,
                    M: 2
                },
                Rc: {
                    o: n,
                    M: 2,
                    K: 0,
                    Kc: d
                }
            });

        function g() {
            var c = a.Wc().x;
            if (c) i.Ec(b.min(c, 600));
            else a.v(g, 30)
        }
        g();
        a.f(e, "load", g);
        a.f(e, "resize", a.ad(e, g));
        a.f(e, "orientationchange", g)
    };
    jssor_slider1_starter = function(k) {
        var i = [{
                j: 1200,
                x: -.3,
                C: {
                    a: [.3, .7]
                },
                g: {
                    a: c.Y,
                    e: c.F
                },
                e: 2,
                nd: d
            }, {
                j: 1200,
                x: .3,
                Qb: d,
                g: {
                    a: c.Y,
                    e: c.F
                },
                e: 2,
                nd: d
            }],
            g = [];
        g.L = {
            j: 800,
            x: .6,
            g: {
                a: c.z
            },
            e: 2
        };
        g.R = {
            j: 800,
            x: -.6,
            g: {
                a: c.z
            },
            e: 2
        };
        g.T = {
            j: 800,
            y: .6,
            g: {
                c: c.z
            },
            e: 2
        };
        g.B = {
            j: 800,
            y: -.6,
            g: {
                c: c.z
            },
            e: 2
        };
        g.TL = {
            j: 800,
            x: .6,
            y: .6,
            g: {
                a: c.z,
                c: c.z
            },
            e: 2
        };
        g.TR = {
            j: 800,
            x: -.6,
            y: .6,
            g: {
                a: c.z,
                c: c.z
            },
            e: 2
        };
        g.BL = {
            j: 800,
            x: .6,
            y: -.6,
            g: {
                a: c.z,
                c: c.z
            },
            e: 2
        };
        g.BR = {
            j: 800,
            x: -.6,
            y: -.6,
            g: {
                a: c.z,
                c: c.z
            },
            e: 2
        };
        g["CLIP|LR"] = {
            j: 600,
            i: 3,
            g: c.Gc
        };
        g["MCLIP|L"] = {
            j: 600,
            i: 1,
            bb: d,
            g: c.Gc
        };
        g["LISTH|L"] = {
            j: 1e3,
            x: .8,
            i: 1,
            g: c.Gc,
            Cd: .8,
            e: 2,
            C: {
                a: [.4, .6],
                i: [0, .4],
                e: [.4, .6]
            }
        };
        g["WAVE|L"] = {
            j: 1300,
            x: .6,
            y: .3,
            g: {
                a: c.F,
                c: c.sd
            },
            e: 2,
            u: {
                c: 2.5
            }
        };
        g["JUMPDN|R"] = {
            j: 1e3,
            x: -.6,
            y: .4,
            g: {
                a: c.F,
                c: c.Ze
            },
            u: {
                c: 1.5
            }
        };
        g["DDG|TR"] = {
            j: 1200,
            x: -.3,
            y: .3,
            k: 1,
            g: {
                a: c.pc,
                c: c.pc
            },
            e: 2,
            C: {
                a: [0, .8],
                c: [0, .8]
            },
            u: {
                a: .8,
                c: .8
            }
        };
        g["DODGEDANCE|L"] = {
            j: 1200,
            x: .3,
            y: -.3,
            k: 1,
            g: {
                a: c.pc,
                c: c.pc,
                k: c.xd
            },
            e: 2,
            C: {
                a: [0, .8],
                c: [0, .8]
            },
            u: {
                a: .8,
                c: 2.5
            }
        };
        g["FLUTTER|L"] = {
            j: 600,
            x: .2,
            y: -.1,
            g: {
                a: c.F,
                c: c.sd
            },
            e: 2,
            u: {
                c: 1.3
            }
        };
        g["TORTUOUS|VB"] = {
            j: 1200,
            y: -.2,
            k: 1,
            g: {
                c: c.hf,
                k: c.Me
            },
            e: 2,
            C: {
                c: [0, .7]
            },
            u: {
                c: 1.3
            }
        };
        g.FADE = {
            j: 600,
            e: 2
        };
        g["ZMF|10"] = {
            j: 600,
            k: 11,
            g: {
                k: c.Vc,
                e: c.F
            },
            e: 2
        };
        g["RTT|10"] = {
            j: 600,
            k: 11,
            m: 1,
            g: {
                k: c.Vc,
                e: c.F,
                m: c.Vc
            },
            e: 2,
            u: {
                m: .8
            }
        };
        g["RTTL|BR"] = {
            j: 600,
            x: -.6,
            y: -.6,
            k: 11,
            m: 1,
            g: {
                a: c.Y,
                c: c.Y,
                k: c.Y,
                e: c.F,
                m: c.Y
            },
            e: 2,
            u: {
                m: .8
            }
        };
        var j = new f(k, {
            Vb: d,
            cc: 1,
            Ob: 4e3,
            Hb: 1,
            Sc: d,
            qb: 500,
            Eb: 20,
            Fb: 0,
            P: 1,
            oc: 0,
            qc: 1,
            ub: 1,
            Rb: 1,
            Od: {
                o: q,
                Lc: i,
                Bd: 1,
                gd: d
            },
            Af: {
                o: t,
                ae: g,
                ed: 1,
                fd: 3
            },
            Fc: {
                o: o,
                M: 2,
                K: 3,
                Tb: 2,
                Db: 10,
                Bb: 10
            },
            Qc: {
                o: p,
                M: 1
            },
            Rc: {
                o: n,
                M: 2,
                K: 0,
                Kc: d,
                W: 2
            }
        });

        function h() {
            var c = a.Wc().x;
            if (c) j.Ec(b.min(c, 600));
            else a.v(h, 30)
        }
        h();
        a.f(e, "load", h);
        a.f(e, "resize", a.ad(e, h));
        a.f(e, "orientationchange", h)
    };
    jssor_slider2_starter = function(h) {
        var g = new f(h, {
            Vb: d,
            cc: 1,
            Ob: 6e3,
            Hb: 1,
            Sc: d,
            qb: 500,
            Eb: 20,
            Fb: 0,
            P: 1,
            oc: 0,
            qc: 1,
            ub: 1,
            Rb: 1,
            Fc: {
                o: o,
                M: 2,
                K: 1,
                Q: 2,
                Tb: 1,
                Db: 10,
                Bb: 10,
                W: 2
            },
            Qc: {
                o: p,
                M: 2,
                Q: 0
            },
            Rc: {
                o: n,
                M: 2,
                K: 0,
                Kc: d,
                W: 2
            }
        });

        function c() {
            var d = a.Wc().x;
            if (d) g.Ec(b.min(d, 800));
            else a.v(c, 30)
        }
        c();
        a.f(e, "load", c);
        a.f(e, "resize", a.ad(e, c));
        a.f(e, "orientationchange", c)
    }
})(window, document, Math, null, true, false)
</script>
 
 