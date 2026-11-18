.class public Lcom/taobao/android/ultron/common/UltronTestReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UltronTestReceiver.java"


# static fields
.field public static final KET_MTOP_INTERCEPT:Ljava/lang/String; = "mtopIntercept"

.field private static final TAG:Ljava/lang/String; = "UltronTestReceiver"

.field private static mUltronInterceptor:Lanetwork/channel/interceptor/Interceptor;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$000()Lanetwork/channel/interceptor/Interceptor;
    .locals 1

    .line 25
    sget-object v0, Lcom/taobao/android/ultron/common/UltronTestReceiver;->mUltronInterceptor:Lanetwork/channel/interceptor/Interceptor;

    return-object v0
.end method

.method private static addNetworkInterceptor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .line 61
    new-instance v0, Lcom/taobao/android/ultron/common/UltronTestReceiver$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/taobao/android/ultron/common/UltronTestReceiver$1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    sput-object v0, Lcom/taobao/android/ultron/common/UltronTestReceiver;->mUltronInterceptor:Lanetwork/channel/interceptor/Interceptor;

    .line 78
    sget-object p0, Lcom/taobao/android/ultron/common/UltronTestReceiver;->mUltronInterceptor:Lanetwork/channel/interceptor/Interceptor;

    invoke-static {p0}, Lanetwork/channel/interceptor/InterceptorManager;->addInterceptor(Lanetwork/channel/interceptor/Interceptor;)V

    const-string p0, "add Interceptor"

    .line 79
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    const-string p1, "UltronTestReceiver"

    invoke-static {p1, p0}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private static addNetworkInterceptorForGrey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .line 85
    new-instance v0, Lcom/taobao/android/ultron/common/UltronTestReceiver$2;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/taobao/android/ultron/common/UltronTestReceiver$2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    sput-object v0, Lcom/taobao/android/ultron/common/UltronTestReceiver;->mUltronInterceptor:Lanetwork/channel/interceptor/Interceptor;

    .line 111
    sget-object p0, Lcom/taobao/android/ultron/common/UltronTestReceiver;->mUltronInterceptor:Lanetwork/channel/interceptor/Interceptor;

    invoke-static {p0}, Lanetwork/channel/interceptor/InterceptorManager;->addInterceptor(Lanetwork/channel/interceptor/Interceptor;)V

    const-string p0, "add Interceptor"

    .line 112
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    const-string p1, "UltronTestReceiver"

    invoke-static {p1, p0}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private static isEmpty(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 52
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    .line 53
    new-array v1, p0, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is empty"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v0

    const-string p1, "UltronTestReceiver"

    invoke-static {p1, v1}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    return p0

    :cond_0
    return v0
.end method

.method public static processSwitch(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    if-eqz p0, :cond_a

    if-nez p1, :cond_0

    goto/16 :goto_0

    :cond_0
    const-string p0, "mtopIntercept"

    .line 122
    invoke-virtual {p1, p0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v0

    :cond_1
    const-string p0, "isOpen"

    .line 126
    invoke-virtual {p1, p0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 128
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_3

    .line 131
    sget-object p0, Lcom/taobao/android/ultron/common/UltronTestReceiver;->mUltronInterceptor:Lanetwork/channel/interceptor/Interceptor;

    if-eqz p0, :cond_2

    .line 132
    invoke-static {p0}, Lanetwork/channel/interceptor/InterceptorManager;->removeInterceptor(Lanetwork/channel/interceptor/Interceptor;)V

    :cond_2
    const-string p0, "mtop\u62e6\u622a\u5df2\u5173\u95ed"

    return-object p0

    :cond_3
    const-string p0, "isHeader"

    .line 138
    invoke-virtual {p1, p0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 139
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    const-string v0, "api"

    .line 140
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "headerKey"

    .line 141
    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "headerValue"

    .line 142
    invoke-virtual {p1, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz p0, :cond_5

    .line 144
    invoke-static {v1, v0}, Lcom/taobao/android/ultron/common/UltronTestReceiver;->isEmpty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 145
    invoke-static {v3, v2}, Lcom/taobao/android/ultron/common/UltronTestReceiver;->isEmpty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 146
    invoke-static {v5, v4}, Lcom/taobao/android/ultron/common/UltronTestReceiver;->isEmpty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    const-string p0, "mtop\u62e6\u622a \u53c2\u6570\u4e0d\u6b63\u786e"

    return-object p0

    :cond_5
    const/4 v0, 0x0

    if-eqz p0, :cond_6

    .line 151
    invoke-static {v1, v3, v5, v0}, Lcom/taobao/android/ultron/common/UltronTestReceiver;->addNetworkInterceptor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 152
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "mtop\u62e6\u622a\u5df2\u6dfb\u52a0header, \napi: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n,headerKey: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n,headerValue: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6
    const-string p0, "isGrey"

    .line 157
    invoke-virtual {p1, p0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 158
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    const-string v1, "passtoken"

    .line 159
    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "tb_eagleeyex_gray"

    .line 160
    invoke-virtual {p1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "tb_eagleeyex_t"

    .line 161
    invoke-virtual {p1, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p0, :cond_8

    .line 163
    invoke-static {v2, v1}, Lcom/taobao/android/ultron/common/UltronTestReceiver;->isEmpty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "tbEagleeyexGray"

    .line 164
    invoke-static {v3, v1}, Lcom/taobao/android/ultron/common/UltronTestReceiver;->isEmpty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "tbEagleeyexT"

    .line 165
    invoke-static {p1, v1}, Lcom/taobao/android/ultron/common/UltronTestReceiver;->isEmpty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_7
    const-string p0, "\u7070\u5ea6\u62e6\u622a \u53c2\u6570\u4e0d\u6b63\u786e"

    return-object p0

    :cond_8
    if-eqz p0, :cond_9

    .line 170
    invoke-static {v2, v3, p1, v0}, Lcom/taobao/android/ultron/common/UltronTestReceiver;->addNetworkInterceptorForGrey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 171
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mtop\u62e6\u622a\u5df2\u6dfb\u52a0grey\u73af\u5883, \npasstoken: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n,tbEagleeyexGray: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n,tbEagleeyexT: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_9
    const-string p0, "\u65e0\u6709\u6548\u53c2\u6570"

    return-object p0

    :cond_a
    :goto_0
    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 31
    invoke-static {p1}, Lcom/taobao/android/ultron/utils/DebugUtils;->isDebuggable(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string p1, "onReceive UltronTestReceiver"

    .line 34
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const-string v0, "UltronTestReceiver"

    invoke-static {v0, p1}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    .line 35
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p1, "extra is null"

    .line 37
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    return-void

    :cond_1
    const-string p2, "api"

    .line 40
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "headerKey"

    .line 41
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "headerValue"

    .line 42
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 43
    invoke-static {v0, p2}, Lcom/taobao/android/ultron/common/UltronTestReceiver;->isEmpty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 44
    invoke-static {v2, v1}, Lcom/taobao/android/ultron/common/UltronTestReceiver;->isEmpty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 45
    invoke-static {p1, v3}, Lcom/taobao/android/ultron/common/UltronTestReceiver;->isEmpty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_0

    :cond_2
    const/4 p2, 0x1

    .line 48
    invoke-static {v0, v2, p1, p2}, Lcom/taobao/android/ultron/common/UltronTestReceiver;->addNetworkInterceptor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_3
    :goto_0
    return-void
.end method
