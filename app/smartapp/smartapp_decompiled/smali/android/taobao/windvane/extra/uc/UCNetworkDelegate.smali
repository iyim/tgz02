.class public Landroid/taobao/windvane/extra/uc/UCNetworkDelegate;
.super Ljava/lang/Object;
.source "UCNetworkDelegate.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field public static final CHANGE_WEBVIEW_URL:I = 0x114

.field private static final RECEIVE_RESPONSE_CODE:I = 0x112

.field private static final REMOVE_WEBVIEW_CODE:I = 0x113

.field private static final SEND_REQUEST_CODE:I = 0x111

.field private static final TAG:Ljava/lang/String; = "UCNetworkDelegate"

.field private static instance:Landroid/taobao/windvane/extra/uc/UCNetworkDelegate;


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mWebViewsInfoMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/taobao/windvane/extra/uc/WVUCWebView;",
            ">;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    new-instance v0, Landroid/taobao/windvane/extra/uc/UCNetworkDelegate;

    invoke-direct {v0}, Landroid/taobao/windvane/extra/uc/UCNetworkDelegate;-><init>()V

    sput-object v0, Landroid/taobao/windvane/extra/uc/UCNetworkDelegate;->instance:Landroid/taobao/windvane/extra/uc/UCNetworkDelegate;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .locals 2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Landroid/taobao/windvane/extra/uc/UCNetworkDelegate;->mWebViewsInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 37
    new-instance v0, Landroid/taobao/windvane/extra/uc/WVThread;

    const-string v1, "Windvane"

    invoke-direct {v0, v1, p0}, Landroid/taobao/windvane/extra/uc/WVThread;-><init>(Ljava/lang/String;Landroid/os/Handler$Callback;)V

    invoke-virtual {v0}, Landroid/taobao/windvane/extra/uc/WVThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Landroid/taobao/windvane/extra/uc/UCNetworkDelegate;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private assembleRequestData(Ljava/util/Hashtable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ref/WeakReference;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/taobao/windvane/extra/uc/WVUCWebView;",
            ">;)V"
        }
    .end annotation

    .line 217
    invoke-virtual {p4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/taobao/windvane/extra/uc/WVUCWebView;

    if-nez p4, :cond_0

    return-void

    .line 221
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    move-object v0, p2

    :goto_0
    const-string/jumbo v2, "url"

    invoke-virtual {p4, p2, v2, v0}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->insertH5MonitorData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object p3, v1

    :cond_2
    const-string/jumbo v0, "referrer"

    invoke-virtual {p4, p2, v0, p3}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->insertH5MonitorData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p3, "start"

    .line 223
    invoke-virtual {p1, p3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iget-wide v2, p4, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mPageStart:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p2, p3, p1}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->insertH5MonitorData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private assembleResponseData(Ljava/util/Hashtable;Ljava/lang/String;Ljava/lang/ref/WeakReference;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/taobao/windvane/extra/uc/WVUCWebView;",
            ">;)V"
        }
    .end annotation

    .line 259
    invoke-virtual {p3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/taobao/windvane/extra/uc/WVUCWebView;

    if-nez p3, :cond_0

    return-void

    :cond_0
    const-string/jumbo v0, "statusCode"

    .line 263
    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p3, p2, v0, v1}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->insertH5MonitorData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "end"

    .line 264
    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    iget-wide v3, p3, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mPageStart:J

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p2, v0, p1}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->insertH5MonitorData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private dealReceiveResponse(Ljava/lang/Object;)V
    .locals 4

    .line 228
    instance-of v0, p1, Ljava/util/Hashtable;

    if-eqz v0, :cond_4

    .line 229
    nop

    nop

    const-string/jumbo v0, "url"

    .line 230
    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/taobao/windvane/util/WVUrlUtil;->removeScheme(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 231
    invoke-static {v0}, Landroid/taobao/windvane/util/WVUrlUtil;->removeHashCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 233
    iget-object v1, p0, Landroid/taobao/windvane/extra/uc/UCNetworkDelegate;->mWebViewsInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 234
    :cond_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 235
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 236
    iget-object v3, p0, Landroid/taobao/windvane/extra/uc/UCNetworkDelegate;->mWebViewsInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 237
    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 238
    invoke-direct {p0, p1, v0, v2}, Landroid/taobao/windvane/extra/uc/UCNetworkDelegate;->assembleResponseData(Ljava/util/Hashtable;Ljava/lang/String;Ljava/lang/ref/WeakReference;)V

    return-void

    .line 243
    :cond_1
    iget-object v1, p0, Landroid/taobao/windvane/extra/uc/UCNetworkDelegate;->mWebViewsInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 244
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 245
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 246
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/taobao/windvane/extra/uc/WVUCWebView;

    if-nez v3, :cond_3

    goto :goto_0

    .line 250
    :cond_3
    invoke-virtual {v3, v0}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->containsH5MonitorData(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 251
    invoke-direct {p0, p1, v0, v2}, Landroid/taobao/windvane/extra/uc/UCNetworkDelegate;->assembleResponseData(Ljava/util/Hashtable;Ljava/lang/String;Ljava/lang/ref/WeakReference;)V

    :cond_4
    return-void
.end method

.method private dealRemoveWebView(Ljava/lang/Object;)V
    .locals 3

    .line 117
    instance-of v0, p1, Landroid/taobao/windvane/extra/uc/WVUCWebView;

    if-eqz v0, :cond_1

    .line 118
    iget-object v0, p0, Landroid/taobao/windvane/extra/uc/UCNetworkDelegate;->mWebViewsInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_1

    .line 119
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keys()Ljava/util/Enumeration;

    move-result-object v0

    .line 120
    :cond_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 121
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 122
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/taobao/windvane/extra/uc/WVUCWebView;

    if-eqz v2, :cond_0

    .line 123
    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 124
    iget-object p1, p0, Landroid/taobao/windvane/extra/uc/UCNetworkDelegate;->mWebViewsInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method private dealSendRequest(Ljava/lang/Object;)V
    .locals 5

    .line 171
    instance-of v0, p1, Ljava/util/Hashtable;

    if-eqz v0, :cond_5

    .line 172
    nop

    nop

    const-string/jumbo v0, "url"

    .line 173
    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/taobao/windvane/util/WVUrlUtil;->removeScheme(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 174
    invoke-static {v0}, Landroid/taobao/windvane/util/WVUrlUtil;->removeHashCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "referrer"

    .line 175
    invoke-virtual {p1, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/taobao/windvane/util/WVUrlUtil;->removeScheme(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 178
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 180
    iget-object v2, p0, Landroid/taobao/windvane/extra/uc/UCNetworkDelegate;->mWebViewsInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 181
    iget-object v2, p0, Landroid/taobao/windvane/extra/uc/UCNetworkDelegate;->mWebViewsInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->keys()Ljava/util/Enumeration;

    move-result-object v2

    .line 182
    :cond_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 183
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 184
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/taobao/windvane/extra/uc/UCNetworkDelegate;->mWebViewsInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 185
    invoke-direct {p0, p1, v0, v1, v3}, Landroid/taobao/windvane/extra/uc/UCNetworkDelegate;->assembleRequestData(Ljava/util/Hashtable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ref/WeakReference;)V

    goto :goto_0

    .line 191
    :cond_1
    iget-object v2, p0, Landroid/taobao/windvane/extra/uc/UCNetworkDelegate;->mWebViewsInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->keys()Ljava/util/Enumeration;

    move-result-object v2

    .line 192
    :cond_2
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 193
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 194
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/taobao/windvane/extra/uc/WVUCWebView;

    invoke-virtual {v4, v1}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->containsH5MonitorData(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 195
    invoke-direct {p0, p1, v0, v1, v3}, Landroid/taobao/windvane/extra/uc/UCNetworkDelegate;->assembleRequestData(Ljava/util/Hashtable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ref/WeakReference;)V

    goto :goto_0

    .line 202
    :cond_3
    iget-object v2, p0, Landroid/taobao/windvane/extra/uc/UCNetworkDelegate;->mWebViewsInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 203
    iget-object v2, p0, Landroid/taobao/windvane/extra/uc/UCNetworkDelegate;->mWebViewsInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->keys()Ljava/util/Enumeration;

    move-result-object v2

    .line 204
    :cond_4
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 205
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 206
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/taobao/windvane/extra/uc/WVUCWebView;

    .line 207
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Landroid/taobao/windvane/extra/uc/UCNetworkDelegate;->mWebViewsInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 208
    invoke-direct {p0, p1, v0, v1, v3}, Landroid/taobao/windvane/extra/uc/UCNetworkDelegate;->assembleRequestData(Ljava/util/Hashtable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ref/WeakReference;)V

    :cond_5
    :goto_0
    return-void
.end method

.method private dealUrlChange(Ljava/lang/Object;)V
    .locals 5

    .line 138
    instance-of v0, p1, Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 139
    nop

    nop

    const/4 v0, 0x0

    .line 141
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Landroid/taobao/windvane/extra/uc/WVUCWebView;

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 142
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/taobao/windvane/extra/uc/WVUCWebView;

    .line 143
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 144
    invoke-static {p1}, Landroid/taobao/windvane/util/WVUrlUtil;->removeScheme(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 145
    invoke-static {p1}, Landroid/taobao/windvane/util/WVUrlUtil;->removeHashCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 147
    iget-object v1, p0, Landroid/taobao/windvane/extra/uc/UCNetworkDelegate;->mWebViewsInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 148
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 149
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 150
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/taobao/windvane/extra/uc/WVUCWebView;

    if-nez v3, :cond_1

    goto :goto_0

    .line 154
    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 155
    invoke-virtual {v3}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->clearH5MonitorData()V

    .line 156
    iget-object v0, p0, Landroid/taobao/windvane/extra/uc/UCNetworkDelegate;->mWebViewsInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 160
    :cond_2
    iget-object v1, p0, Landroid/taobao/windvane/extra/uc/UCNetworkDelegate;->mWebViewsInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-void
.end method

.method public static declared-synchronized getInstance()Landroid/taobao/windvane/extra/uc/UCNetworkDelegate;
    .locals 2

    const-class v0, Landroid/taobao/windvane/extra/uc/UCNetworkDelegate;

    monitor-enter v0

    .line 32
    :try_start_0
    sget-object v1, Landroid/taobao/windvane/extra/uc/UCNetworkDelegate;->instance:Landroid/taobao/windvane/extra/uc/UCNetworkDelegate;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public getBizCodeByUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 274
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    return-object v1

    .line 277
    :cond_0
    iget-object v0, p0, Landroid/taobao/windvane/extra/uc/UCNetworkDelegate;->mWebViewsInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keys()Ljava/util/Enumeration;

    move-result-object v0

    .line 278
    :cond_1
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 279
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 280
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/taobao/windvane/extra/uc/WVUCWebView;

    if-eqz v3, :cond_1

    .line 282
    iget-object v4, p0, Landroid/taobao/windvane/extra/uc/UCNetworkDelegate;->mWebViewsInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 283
    invoke-static {v2}, Landroid/taobao/windvane/util/WVUrlUtil;->removeQueryParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 284
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Get bizCode : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v3, Landroid/taobao/windvane/extra/uc/WVUCWebView;->bizCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "UCNetworkDelegate"

    invoke-static {v0, p1}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    iget-object p1, v3, Landroid/taobao/windvane/extra/uc/WVUCWebView;->bizCode:Ljava/lang/String;

    return-object p1

    :cond_2
    return-object v1
.end method

.method public getWebViews()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/taobao/windvane/extra/uc/WVUCWebView;",
            ">;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Landroid/taobao/windvane/extra/uc/UCNetworkDelegate;->mWebViewsInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 1

    .line 95
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 103
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-direct {p0, v0}, Landroid/taobao/windvane/extra/uc/UCNetworkDelegate;->dealRemoveWebView(Ljava/lang/Object;)V

    .line 105
    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-direct {p0, p1}, Landroid/taobao/windvane/extra/uc/UCNetworkDelegate;->dealUrlChange(Ljava/lang/Object;)V

    goto :goto_0

    .line 100
    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-direct {p0, p1}, Landroid/taobao/windvane/extra/uc/UCNetworkDelegate;->dealReceiveResponse(Ljava/lang/Object;)V

    goto :goto_0

    .line 97
    :pswitch_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-direct {p0, p1}, Landroid/taobao/windvane/extra/uc/UCNetworkDelegate;->dealSendRequest(Ljava/lang/Object;)V

    :goto_0
    const/4 p1, 0x0

    return p1

    :pswitch_data_0
    .packed-switch 0x111
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onFinish(ILjava/lang/String;)V
    .locals 4

    .line 79
    iget-object v0, p0, Landroid/taobao/windvane/extra/uc/UCNetworkDelegate;->mWebViewsInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 80
    iget-object v0, p0, Landroid/taobao/windvane/extra/uc/UCNetworkDelegate;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x112

    .line 81
    iput v1, v0, Landroid/os/Message;->what:I

    .line 82
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    const-string/jumbo v2, "url"

    .line 83
    invoke-virtual {v1, v2, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v2, "statusCode"

    .line 85
    invoke-virtual {v1, v2, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "end"

    invoke-virtual {v1, v3, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 88
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFinish : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " statusCode: "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "UCNetworkDelegate"

    invoke-static {p2, p1}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    iget-object p1, p0, Landroid/taobao/windvane/extra/uc/UCNetworkDelegate;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public onSendRequest(Ljava/util/Map;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 63
    iget-object v0, p0, Landroid/taobao/windvane/extra/uc/UCNetworkDelegate;->mWebViewsInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 64
    iget-object v0, p0, Landroid/taobao/windvane/extra/uc/UCNetworkDelegate;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x111

    .line 65
    iput v1, v0, Landroid/os/Message;->what:I

    .line 66
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    const-string/jumbo v2, "url"

    .line 67
    invoke-virtual {v1, v2, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "Referer"

    .line 69
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 70
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, ""

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    const-string/jumbo v3, "referrer"

    invoke-virtual {v1, v3, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "start"

    invoke-virtual {v1, v3, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 73
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSendRequest : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " Referer: "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "UCNetworkDelegate"

    invoke-static {p2, p1}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    iget-object p1, p0, Landroid/taobao/windvane/extra/uc/UCNetworkDelegate;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    return-void
.end method

.method public onUrlChange(Landroid/taobao/windvane/extra/uc/WVUCWebView;Ljava/lang/String;)V
    .locals 2

    .line 52
    iget-object v0, p0, Landroid/taobao/windvane/extra/uc/UCNetworkDelegate;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x114

    .line 53
    iput v1, v0, Landroid/os/Message;->what:I

    .line 54
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 56
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 59
    iget-object p1, p0, Landroid/taobao/windvane/extra/uc/UCNetworkDelegate;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public removeWebview(Landroid/taobao/windvane/extra/uc/WVUCWebView;)V
    .locals 2

    .line 45
    iget-object v0, p0, Landroid/taobao/windvane/extra/uc/UCNetworkDelegate;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x113

    .line 46
    iput v1, v0, Landroid/os/Message;->what:I

    .line 47
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 48
    iget-object p1, p0, Landroid/taobao/windvane/extra/uc/UCNetworkDelegate;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
