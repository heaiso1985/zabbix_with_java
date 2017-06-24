/*
 * FusionCharts JavaScript Library jQuery Plugin Copyright FusionCharts
 * Technologies LLP License Information at <http://www.fusioncharts.com/license>
 * 
 * @author FusionCharts Technologies LLP
 * 
 * @version fusioncharts/3.3.1-sr3.21100
 */
(function() {
	var o;
	o = FusionCharts(["private", "HTMLTableDataHandler"]);
	if (o !== void 0) {
		var i = function(a) {
			var b, c, e = [];
			c = 0;
			for (b = a.length; c < b; c += 1)
				a[c].nodeType !== 3 && e.push(a[c]);
			return e
		}, A = function(a) {
			
			var b = i(a.childNodes);
			if (b.length)
				if (b[0].nodeName === "TBODY")
					return b[0];
				else if (b[0].nodeName === "THEAD" && b[1]
						&& b[1].nodeName === "TBODY")
					return b[1];
			return a
		}, u = function(a) {
			a = i(a.childNodes);
			if (a.length && a[0].nodeName === "THEAD" && a[1]
					&& a[1].nodeName === "TBODY")
				return a[0].childNodes;
			return []
		}, x = function(a) {
			return a.innerText !== void 0 ? a.innerText : a.textContent
		}, B = function(a) {
			var b, c, e, f, d, h, l = 1, m, j = {}, p = [];
			b = 0;
			for (e = a.length; b < e; b += 1) {
				d = i(a[b].childNodes);
				l = 1;
				c = h = 0;
				for (f = d.length; c < f; c += 1) {
					m = c + l + h - 1;
					j[m] && b - j[m].rowNum < j[m].row
							&& (h += j[m].col, m += j[m].col);
					if (parseInt(d[c].getAttribute("rowspan"), 10) > 1)
						j[m] || (j[m] = {}), j[m].rowNum = b, j[m].row = parseInt(
								d[c].getAttribute("rowspan"), 10), j[m].col = parseInt(
								d[c].getAttribute("colspan"), 10) > 1
								? parseInt(d[c].getAttribute("colspan"), 10)
								: 1;
					for (; p.length <= m;)
						p.push({
									childNodes : []
								});
					p[m].childNodes.push(d[c]);
					parseInt(d[c].getAttribute("colspan"), 10) > 1
							&& (l += parseInt(d[c].getAttribute("colspan"), 10)
									- 1)
				}
			}
			return p
		}, y = function(a, b) {
			for (var c = a.length; c;)
				if (c -= 1, a[c] === b)
					return !0;
			return !1
		}, a = 0, h = function(g, b, c) {
			var e, f, d, k, l = null, m = [], j = [], p = 0, n, p = {}, o = 0;
			if (typeof c === "undefined") {
				k = i(g[0].childNodes);
				d = 0;
				for (e = k.length; d < e; d += 1)
					if (g = d + o, m[g] = "__fcBLANK__" + (g + 1), n = parseInt(
							k[d].getAttribute("colspan"), 10), n = n > 1
							? n
							: parseInt(k[d].getAttribute("rowspan"), 10), n > 1) {
						for (c = 1; c < n; c += 1)
							m[g + c] = "__fcBLANK__" + (g + c + 1);
						o += n - 1
					}
				f = 0;
				c = d + o;
				for (e = b.length; f < e; f += 1)
					b[f] > 0 ? delete m[b[f] - 1] : delete m[c + b[f]];
				return {
					index : -1,
					labelObj : m
				}
			} else if (c === 0) {
				f = 0;
				for (c = g.length; f < c; f += 1) {
					k = i(g[f].childNodes);
					d = p = j[f] = 0;
					for (e = k.length; d < e; d += 1)
						if (!y(b, d + 1) && !y(b, d - e))
							if (n = x(k[d]), n.replace(/^\s*/, "").replace(
									/\s*$/, "") === "")
								j[f] += 1;
							else if (parseFloat(n) != n && (p += 1, p > 1))
								return h(g, b, f + 1);
					f > 0
							&& (j[f - 1] > j[f] ? l = f - 1 : j[f - 1] < j[f]
									&& (l = f))
				}
				return l !== null ? h(g, b, l + 1) : h(g, b)
			}
			c < 0 ? c += g.length : c > 0 && (c -= 1);
			k = i(g[c].childNodes);
			m = g[0].nodeType !== void 0 ? !0 : !1;
			d = j = 0;
			for (e = k.length; d < e; d += 1) {
				l = 0;
				m
						? k[d].getAttribute("colspan") !== "1"
								&& (l = parseInt(k[d].getAttribute("colspan"),
										10))
						: k[d].getAttribute("rowspan") !== "1"
								&& (l = parseInt(k[d].getAttribute("rowspan"),
										10));
				l = l > 1 ? l : 0;
				n = x(k[d]);
				if (n.replace(/^\s*/, "").replace(/\s*$/, "") !== "")
					p[d + j] = n;
				else {
					a : {
						var t = B(g);
						f = c;
						var o = n = void 0, t = i(t[d].childNodes), s = void 0;
						n = 0;
						for (o = t.length; n < o; n += 1)
							if (n != f && (s = x(t[n]), parseFloat(s) == s)) {
								f = !0;
								break a
							}
						f = !1
					}
					f && (p[d + j] = "__fcBLANK__" + a, a += 1)
				}
				if (l > 1) {
					n = p[d + j];
					for (f = 1; f < l; f += 1)
						p[d + j + f] = n + " (" + f + ")";
					j += l - 1
				}
			}
			d = e + j;
			f = 0;
			for (e = b.length; f < e; f += 1)
				b[f] > 0 ? delete p[b[f] - 1] : delete p[d + b[f]];
			return {
				labelObj : p,
				index : c
			}
		};
		o.addDataHandler("HTMLTable", {
			encode : function(a, b, c) {
				b = {
					chartAttributes : {},
					major : "row",
					useLabels : !0,
					useLegend : !0,
					labelSource : 0,
					legendSource : 0,
					ignoreCols : [],
					ignoreRows : [],
					showLabels : !0,
					showLegend : !0,
					seriesColors : [],
					convertBlankTo : "0",
					hideTable : !1,
					labels : [],
					legend : [],
					data : []
				};
				o.extend(b, c);
				var e, f, d, k, l, c = {}, m = {};
				k = a;
				typeof k === "string" && (k = document.getElementById(k));
				typeof jQuery !== "undefined" && k instanceof jQuery
						&& (k = k.get(0));
				if (k) {
					if (b.hideTable)
						k.style.display = "none";
					var j, p, n, v, a = {}, t, s, y, w, z = {};
					e = {};
					k = i(u(k)).concat(i(A(k).childNodes));
					l = k.length;
					var G = 0, F = 0, E = 0;
					b.rowLabelSource = parseInt(b.labelSource, 10);
					b.colLabelSource = parseInt(b.legendSource, 10);
					var C = b.useLabels
							? h(k, b.ignoreCols, b.rowLabelSource)
							: h(k, b.ignoreCols), D = b.useLegend ? h(B(k),
							b.ignoreRows, b.colLabelSource) : h(B(k),
							b.ignoreRows);
					delete C.labelObj[D.index];
					delete D.labelObj[C.index];
					if (b.major === "row")
						for (j in D.labelObj)
							a[j] = {};
					else
						for (j in C.labelObj)
							a[j] = {};
					for (j = 0; j < l; j += 1)
						if (!(C.index === j || D.labelObj[j] === void 0)) {
							G += 1;
							n = i(k[j].childNodes);
							z[j] = 0;
							e[j] = {};
							p = E = 0;
							for (y = n.length; p < y; p += 1) {
								v = n[p];
								s = parseInt(v.getAttribute("colspan"), 10);
								w = parseInt(v.getAttribute("rowspan"), 10);
								t = p + z[j];
								for (var q, r = 0; r < j;) {
									if (e[r])
										for (q in e[r]) {
											if (q > t)
												break;
											j - r <= e[r][q].row
													&& (t += e[r][q].col)
										}
									r += 1
								}
								s > 1 && (z[j] += s - 1);
								w > 1 && (e[j][t] = s > 1 ? {
									row : w - 1,
									col : s
								} : {
									row : w - 1,
									col : 1
								});
								if (!(D.index === t || C.labelObj[t] === void 0)) {
									E += 1;
									v = x(v);
									if (v.replace(/^\s*/, "").replace(/\s*$/,
											"") === "")
										if (b.convertBlankTo)
											v = b.convertBlankTo;
										else
											continue;
									s = s > 1 ? s : 1;
									w = w > 1 ? w : 1;
									if (b.major === "row")
										for (r = 0; r < s;) {
											for (q = 0; q < w;)
												a[j + q][t + r] = parseFloat(v), q += 1;
											r += 1
										}
									else
										for (r = 0; r < s;) {
											for (q = 0; q < w;)
												a[t + r][j + q] = parseFloat(v), q += 1;
											r += 1
										}
								}
							}
							E > F && (F = E)
						}
					e = {
						data : a,
						chartType : G > 1 && F > 1 ? "multi" : "single",
						labelMap : D,
						legendMap : C
					}
				} else
					e = {
						data : null
					};
				q = e.data;
				b.major !== "row"
						? (a = e.legendMap, z = e.labelMap)
						: (a = e.labelMap, z = e.legendMap);
				c.chart = o.extend({}, b.chartAttributes);
				if (e.chartType === "multi") {
					c.categories = [{
								category : []
							}];
					c.dataset = [];
					k = c.categories[0].category;
					l = c.dataset;
					e = 0;
					for (f in q)
						for (d in b.showLabels === !0 ? k.push(o.extend({
							label : a.labelObj[f].indexOf("__fcBLANK__") != "-1"
									? ""
									: a.labelObj[f]
						}, b.labels[e]))
								: k.push({
											label : ""
										}), e += 1, q[f])
							typeof m[d] === "undefined" && (m[d] = []), m[d]
									.push({
												value : q[f][d]
											});
					e = 0;
					for (f in m)
						b.showLegend === !0 ? l.push(o.extend({
							seriesname : z.labelObj[f].indexOf("__fcBLANK__") != "-1"
									? ""
									: z.labelObj[f],
							data : m[f]
						}, b.legend[e]))
								: l.push({
											seriesname : "",
											data : m[f]
										}), e += 1
				} else if (e.chartType === "single")
					if (c.data = [], l = c.data, e = 0, b.showLabels)
						for (f in q)
							for (d in q[f])
								l.push(o.extend({
											label : a.labelObj[f]
													.indexOf("__fcBLANK__") != "-1"
													? ""
													: a.labelObj[f],
											value : q[f][d]
										}, b.labels[e])), e += 1;
					else
						for (f in q)
							for (d in q[f])
								l.push({
											value : q[f][d]
										});
				return {
					data : o.core.transcodeData(c, "JSON", "XML"),
					error : void 0
				}
			},
			decode : function(a, b) {
				o
						.raiseError(b, "07101734", "run",
								"::HTMLTableDataHandler.decode()",
								"FusionCharts HTMLTable data-handler only supports decoding of data.");
				throw "FeatureNotSupportedException()";
			}
		})
	}
})();
(function() {
	var o = FusionCharts(["private", "extensions.jQueryPlugin"]);
	if (o !== void 0) {
		var i = window.jQuery, A, u, x, B = {
			feed : "feedData",
			setdata : "setData",
			setdataforid : "setDataForId",
			getdata : "getData",
			getdataforid : "getDataForId",
			clear : "clearChart",
			stop : "stopUpdate",
			start : "restartUpdate"
		}, y = {
			feedData : function(a) {
				return typeof a === "string" ? [a] : typeof a === "object"
						&& a.stream ? [a.stream] : !1
			},
			getData : function(a) {
				return isNaN(a) ? typeof a === "object" && a.index
						? [a.index]
						: [] : [a]
			},
			getDataForId : function(a) {
				return typeof a === "string" ? [a] : typeof a === "object"
						&& a.id ? [a.id] : []
			},
			setData : function(a, h, g) {
				var b = [];
				typeof a !== "object" ? b = [a, h, g] : (a.value
						&& b.push(a.value), a.label && b.push(a.label));
				return b
			},
			setDataForId : function(a, h, g) {
				var b = [];
				typeof a === "string" || typeof h === "string"
						|| typeof g === "string"
						? b = [a, h, g]
						: typeof a === "object"
								&& (a.value && b.push(a.value), a.label
										&& b.push(a.label));
				return b
			},
			clearChart : function(a) {
				return [a]
			},
			stopUpdate : function(a) {
				return [a]
			},
			restartUpdate : function(a) {
				return [a]
			}
		};
		i.FusionCharts = o.core;
		A = function(a, h) {
			var g, b, c, e;
			b = h instanceof Array || h instanceof i ? Math.min(a.length,h.length) : a.length;
			for (g = 0; g < b; g += 1){
				if (c = h instanceof Array || h instanceof i ? h[g] : h, a[g].parentNode){
					o.core.render(i.extend({}, c, {
								renderAt : a[g]
							}));
				}
				else {
					c = new FusionCharts(i.extend({}, c, {
								renderAt : a[g]
							}));
					if (!i.FusionCharts.delayedRender){
						i.FusionCharts.delayedRender = {};
					}
					i.FusionCharts.delayedRender[c.id] = a[g];
					e = document.createElement("script");
					e.setAttribute("type", "text/javascript");
					/msie/i.test(navigator.userAgent) && !window.opera
							? e.text = "FusionCharts.items['" + c.id
									+ "'].render();"
							: e.appendChild(document
									.createTextNode("FusionCharts.items['"
											+ c.id + "'].render();"));
					a[g].appendChild(e);
				}
			}
				var text=a.find("svg").find("tspan");
				//console.log(jQuery(a).getId());
				if(h.displayLabel&&h.displayLabel.length&&text.length){
					//�޸���ʾ���
					var j=Math.min(h.displayLabel.length,text.length);
					for(var k=0;k<j;k++){
						jQuery(text[k],a).html(h.displayLabel[k]);						
					}
				}
			return a;
		};
		o.addEventListener("*", function(a, h) {
			var g;
			i.extend(a, i.Event("fusioncharts" + a.eventType));
			a.sender && a.sender.options
					? (g = a.sender.options.containerElement
							|| a.sender.options.containerElementId, typeof g === "object"
							? i(g).trigger(a, h)
							: i("#" + g).length
									? i("#" + g).trigger(a, h)
									: i(document).trigger(a, h))
					: i(document).trigger(a, h)
		});
		u = function(a) {
			return a.filter(":FusionCharts").add(a.find(":FusionCharts"))
		};
		x = function(a, h, g) {
			typeof h === "object" && a.each(function() {
						this.configureLink(h, g)
					})
		};
		i.fn.insertFusionCharts = function(a) {
			return A(this, a)
		};
		i.fn.appendFusionCharts = function(a) {
			a.insertMode = "append";
			return A(this, a)
		};
		i.fn.prependFusionCharts = function(a) {
			a.insertMode = "prepend";
			return A(this, a)
		};
		i.fn.attrFusionCharts = function(a, h) {
			var g = [], b = u(this);
			if (h !== void 0)
				return b.each(function() {
							this.FusionCharts.setChartAttribute(a, h)
						}), this;
			if (typeof a === "object")
				return b.each(function() {
							this.FusionCharts.setChartAttribute(a)
						}), this;
			b.each(function() {
						g.push(this.FusionCharts.getChartAttribute(a))
					});
			return g
		};
		i.fn.updateFusionCharts = function(a) {
			var h, g, b, c, e, f, d = {}, i = u(this), l = [["swfUrl", !1],
					["height", !1], ["width", !1], ["bgColor", !0],
					["renderer", !0], ["dataFormat", !1], ["dataSource", !1],
					["detectFlashVersion", !0], ["autoInstallRedirect", !0],
					["lang", !0], ["scaleMode", !0], ["debugMode", !0]];
			h = 0;
			for (g = l.length; h < g; h += 1)
				e = l[h][0], a[e] && (l[h][1] && (c = !0), d[e] = a[e]);
			i.each(function() {
						b = this.FusionCharts;
						if (c) {
							f = b.clone(d);
							if (d.swfUrl)
								f.src = d.swfUrl;
							f.render()
						} else {
							if (d.dataSource !== void 0
									|| d.dataFormat !== void 0)
								d.dataSource === void 0
										? b.setChartData(b.args.dataSource,
												d.dataFormat)
										: d.dataFormat === void 0 ? b
												.setChartData(d.dataSource,
														b.args.dataFormat) : b
												.setChartData(d.dataSource,
														d.dataFormat);
							(d.width !== void 0 || d.height !== void 0)
									&& b.resizeTo(d.width, d.height);
							if (d.swfUrl)
								b.src = d.swfUrl, b.render()
						}
					});
			return this
		};
		i.fn.cloneFusionCharts = function(a, h) {
			var g, b;
			typeof a !== "function" && typeof h === "function"
					&& (b = a, a = h, h = b);
			g = [];
			u(this).each(function() {
						g.push(this.FusionCharts.clone(h, {}, !0))
					});
			a.call(i(g), g);
			return this
		};
		i.fn.disposeFusionCharts = function() {
			u(this).each(function() {
						this.FusionCharts.dispose();
						delete this.FusionCharts;
						this._fcDrillDownLevel === 0
								&& delete this._fcDrillDownLevel
					});
			return this
		};
		i.fn.convertToFusionCharts = function(a, h) {
			var g = [];
			if (typeof a.dataConfiguration === "undefined")
				a.dataConfiguration = {};
			i.extend(!0, a.dataConfiguration, h);
			if (!a.dataSource)
				a.dataSource = this.get(0);
			a.renderAt ? typeof a.renderAt === "string"
					? g.push(i("#" + a.renderAt).insertFusionCharts(a).get(0))
					: typeof a.renderAt === "object"
							&& g.push(i(a.renderAt).insertFusionCharts(a)
									.get(0)) : this.each(function() {
						g.push(i("<div></div>").insertBefore(this)
								.insertFusionCharts(a).get(0))
					});
			return i(g)
		};
		i.fn.drillDownFusionChartsTo = function() {
			var a, h, g, b, c, e = u(this);
			if (typeof this._fcDrillDownLevel === "undefined")
				this._fcDrillDownLevel = 0;
			a = 0;
			for (h = arguments.length; a < h; a += 1)
				if (c = arguments[a], c instanceof Array) {
					g = 0;
					for (b = c.length; g < b; g += 1)
						x(e, c[g], this._fcDrillDownLevel), this._fcDrillDownLevel += 1
				} else
					x(e, c, this._fcDrillDownLevel), this._fcDrillDownLevel += 1;
			return this
		};
		i.fn.streamFusionChartsData = function(a, h, g, b) {
			var c, e, f, d = [], i = u(this);
			e = B[a && a.toLowerCase()];
			if (e === void 0)
				if (arguments.length === 1)
					f = [a], e = B.feed;
				else
					return this;
			else
				f = arguments.length === 1 ? [] : y[e](h, g, b);
			return e === "getData" || e === "getDataForId" ? (i.each(
					function() {
						c = this.FusionCharts;
						typeof c[e] === "function" && d.push(c[e].apply(c, f))
					}), d) : (i.each(function() {
						c = this.FusionCharts;
						typeof c[e] === "function" && c[e].apply(c, f)
					}), this)
		};
		i.extend(i.expr[":"], {
					FusionCharts : function(a) {
						return a.FusionCharts instanceof o.core
					}
				})
	}
})();