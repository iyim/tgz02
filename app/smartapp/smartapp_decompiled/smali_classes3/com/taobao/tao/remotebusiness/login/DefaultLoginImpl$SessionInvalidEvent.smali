.class Lcom/taobao/tao/remotebusiness/login/DefaultLoginImpl$SessionInvalidEvent;
.super Ljava/lang/Object;
.source "DefaultLoginImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/tao/remotebusiness/login/DefaultLoginImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SessionInvalidEvent"
.end annotation


# static fields
.field private static final HEADER_KEY:Ljava/lang/String; = "S"


# instance fields
.field public S_STATUS:Ljava/lang/String;

.field public apiName:Ljava/lang/String;

.field public appBackGround:Z

.field public eventName:Ljava/lang/String;

.field public long_nick:Ljava/lang/String;

.field public msgCode:Ljava/lang/String;

.field public processName:Ljava/lang/String;

.field public v:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lmtopsdk/mtop/domain/MtopRequest;)V
    .locals 1

    .line 294
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 295
    invoke-virtual {p1}, Lmtopsdk/mtop/domain/MtopRequest;->getApiName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/tao/remotebusiness/login/DefaultLoginImpl$SessionInvalidEvent;->apiName:Ljava/lang/String;

    .line 296
    invoke-virtual {p1}, Lmtopsdk/mtop/domain/MtopRequest;->getVersion()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/taobao/tao/remotebusiness/login/DefaultLoginImpl$SessionInvalidEvent;->v:Ljava/lang/String;

    .line 297
    sget-object p1, Lcom/taobao/tao/remotebusiness/login/DefaultLoginImpl;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lmtopsdk/common/util/MtopUtils;->getCurrentProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/taobao/tao/remotebusiness/login/DefaultLoginImpl$SessionInvalidEvent;->processName:Ljava/lang/String;

    .line 298
    invoke-static {}, Lmtopsdk/xstate/XState;->isAppBackground()Z

    move-result p1

    iput-boolean p1, p0, Lcom/taobao/tao/remotebusiness/login/DefaultLoginImpl$SessionInvalidEvent;->appBackGround:Z

    return-void
.end method

.method public constructor <init>(Lmtopsdk/mtop/domain/MtopResponse;Ljava/lang/String;)V
    .locals 1

    .line 283
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "SESSION_INVALID"

    .line 284
    iput-object v0, p0, Lcom/taobao/tao/remotebusiness/login/DefaultLoginImpl$SessionInvalidEvent;->eventName:Ljava/lang/String;

    .line 285
    iput-object p2, p0, Lcom/taobao/tao/remotebusiness/login/DefaultLoginImpl$SessionInvalidEvent;->long_nick:Ljava/lang/String;

    .line 286
    invoke-virtual {p1}, Lmtopsdk/mtop/domain/MtopResponse;->getApi()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/taobao/tao/remotebusiness/login/DefaultLoginImpl$SessionInvalidEvent;->apiName:Ljava/lang/String;

    .line 287
    invoke-virtual {p1}, Lmtopsdk/mtop/domain/MtopResponse;->getV()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/taobao/tao/remotebusiness/login/DefaultLoginImpl$SessionInvalidEvent;->v:Ljava/lang/String;

    .line 288
    invoke-virtual {p1}, Lmtopsdk/mtop/domain/MtopResponse;->getRetCode()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/taobao/tao/remotebusiness/login/DefaultLoginImpl$SessionInvalidEvent;->msgCode:Ljava/lang/String;

    .line 289
    invoke-virtual {p1}, Lmtopsdk/mtop/domain/MtopResponse;->getHeaderFields()Ljava/util/Map;

    move-result-object p1

    const-string p2, "S"

    invoke-static {p1, p2}, Lmtopsdk/common/util/HeaderHandlerUtil;->getSingleHeaderFieldByKey(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/taobao/tao/remotebusiness/login/DefaultLoginImpl$SessionInvalidEvent;->S_STATUS:Ljava/lang/String;

    .line 290
    sget-object p1, Lcom/taobao/tao/remotebusiness/login/DefaultLoginImpl;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lmtopsdk/common/util/MtopUtils;->getCurrentProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/taobao/tao/remotebusiness/login/DefaultLoginImpl$SessionInvalidEvent;->processName:Ljava/lang/String;

    .line 291
    invoke-static {}, Lmtopsdk/xstate/XState;->isAppBackground()Z

    move-result p1

    iput-boolean p1, p0, Lcom/taobao/tao/remotebusiness/login/DefaultLoginImpl$SessionInvalidEvent;->appBackGround:Z

    return-void
.end method


# virtual methods
.method public toJSONString()Ljava/lang/String;
    .locals 1

    .line 302
    invoke-static {p0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
