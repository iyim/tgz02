.class public abstract Lcom/alibaba/ailabs/genie/contacts/repository/callback/RtcCallback;
.super Ljava/lang/Object;
.source "RtcCallback.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/alibaba/ailabs/genie/contacts/repository/response/cmrtc/BaseResponse;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/alibaba/ailabs/genie/second/MtopClient$Callback<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final ANDROID_SYS_NETWORK_ERROR:Ljava/lang/String; = "AEC10001"

.field public static final ANDROID_SYS_NO_NETWORK:Ljava/lang/String; = "AEC10000"

.field public static final SUCCESS:Ljava/lang/String; = "200"

.field public static final SUCCESS_0:Ljava/lang/String; = "0"

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private final UIHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/alibaba/ailabs/genie/utils/AppEnv;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "RtcCallback"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/ailabs/genie/contacts/repository/callback/RtcCallback;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/repository/callback/RtcCallback;->UIHandler:Landroid/os/Handler;

    return-void
.end method

.method public static isNoNetWork(Ljava/lang/String;)Z
    .locals 2

    .line 63
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "AEC10000"

    .line 66
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "AEC10001"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static isSuccess(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "200"

    .line 55
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "0"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public synthetic lambda$onError$97$RtcCallback(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const-string v1, "\u7f51\u7edc\u597d\u50cf\u51fa\u4e86\u70b9\u95ee\u9898\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc"

    .line 48
    invoke-virtual {p0, v0, p1, v1}, Lcom/alibaba/ailabs/genie/contacts/repository/callback/RtcCallback;->onFailure(Lcom/alibaba/ailabs/genie/contacts/repository/response/cmrtc/BaseResponse;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$onError$98$RtcCallback(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 50
    invoke-virtual {p0, v0, p1, p2}, Lcom/alibaba/ailabs/genie/contacts/repository/callback/RtcCallback;->onFailure(Lcom/alibaba/ailabs/genie/contacts/repository/response/cmrtc/BaseResponse;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$onSuccess$95$RtcCallback(Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;)V
    .locals 0

    .line 38
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;->getData()Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/contacts/repository/response/cmrtc/BaseResponse;

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/contacts/repository/callback/RtcCallback;->onSuccess(Lcom/alibaba/ailabs/genie/contacts/repository/response/cmrtc/BaseResponse;)V

    return-void
.end method

.method public synthetic lambda$onSuccess$96$RtcCallback(Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;)V
    .locals 2

    .line 40
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;->getData()Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/contacts/repository/response/cmrtc/BaseResponse;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;->getData()Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData;

    move-result-object v1

    check-cast v1, Lcom/alibaba/ailabs/genie/contacts/repository/response/cmrtc/BaseResponse;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/contacts/repository/response/cmrtc/BaseResponse;->getMsgCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;->getData()Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/contacts/repository/response/cmrtc/BaseResponse;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/repository/response/cmrtc/BaseResponse;->getMsgInfo()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/alibaba/ailabs/genie/contacts/repository/callback/RtcCallback;->onFailure(Lcom/alibaba/ailabs/genie/contacts/repository/response/cmrtc/BaseResponse;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 46
    sget-object v0, Lcom/alibaba/ailabs/genie/contacts/repository/callback/RtcCallback;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "errorCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",msg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/contacts/repository/callback/RtcCallback;->isNoNetWork(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/contacts/repository/callback/RtcCallback;->UIHandler:Landroid/os/Handler;

    new-instance v0, Lcom/alibaba/ailabs/genie/contacts/repository/callback/-$$Lambda$RtcCallback$ETlZhAZXhDKlxRdtTuV2KUA58os;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/ailabs/genie/contacts/repository/callback/-$$Lambda$RtcCallback$ETlZhAZXhDKlxRdtTuV2KUA58os;-><init>(Lcom/alibaba/ailabs/genie/contacts/repository/callback/RtcCallback;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/repository/callback/RtcCallback;->UIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/alibaba/ailabs/genie/contacts/repository/callback/-$$Lambda$RtcCallback$dl4sqksg1vYyEe3uHZ8axKxnbiA;

    invoke-direct {v1, p0, p1, p2}, Lcom/alibaba/ailabs/genie/contacts/repository/callback/-$$Lambda$RtcCallback$dl4sqksg1vYyEe3uHZ8axKxnbiA;-><init>(Lcom/alibaba/ailabs/genie/contacts/repository/callback/RtcCallback;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public abstract onFailure(Lcom/alibaba/ailabs/genie/contacts/repository/response/cmrtc/BaseResponse;Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onSuccess(Lcom/alibaba/ailabs/genie/contacts/repository/response/cmrtc/BaseResponse;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public onSuccess(Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse<",
            "TT;>;)V"
        }
    .end annotation

    .line 36
    sget-object v0, Lcom/alibaba/ailabs/genie/contacts/repository/callback/RtcCallback;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mtop traceId === "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;->getTraceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;->getData()Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/contacts/repository/response/cmrtc/BaseResponse;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/contacts/repository/response/cmrtc/BaseResponse;->getStatusCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/contacts/repository/callback/RtcCallback;->isSuccess(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/repository/callback/RtcCallback;->UIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/alibaba/ailabs/genie/contacts/repository/callback/-$$Lambda$RtcCallback$BiU5DO4myHZaR0bDMbQl1Cw8wOI;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/ailabs/genie/contacts/repository/callback/-$$Lambda$RtcCallback$BiU5DO4myHZaR0bDMbQl1Cw8wOI;-><init>(Lcom/alibaba/ailabs/genie/contacts/repository/callback/RtcCallback;Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/repository/callback/RtcCallback;->UIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/alibaba/ailabs/genie/contacts/repository/callback/-$$Lambda$RtcCallback$qtqxNW0wLaKUwvFTNgTlla2iKrc;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/ailabs/genie/contacts/repository/callback/-$$Lambda$RtcCallback$qtqxNW0wLaKUwvFTNgTlla2iKrc;-><init>(Lcom/alibaba/ailabs/genie/contacts/repository/callback/RtcCallback;Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method
