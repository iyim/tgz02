.class public Lcom/alibaba/ailabs/genie/pay/GeniePayAudioService;
.super Ljava/lang/Object;
.source "GeniePayAudioService.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/router/ipc/IpcServer$AsyncServer;


# static fields
.field public static final ERR_CODE_FAILED:I = -0x1

.field public static final ERR_CODE_MTOP_NOT_SUCCESS:I = -0x4

.field public static final ERR_CODE_RESPONSE_DATA_IS_NULL:I = -0x3

.field public static final ERR_CODE_RESPONSE_IS_NULL:I = -0x2

.field public static final ERR_CODE_RESPONSE_MODEL_IS_NULL:I = -0x5

.field public static final ERR_CODE_RESPONSE_MSG_CODE:I = -0x6

.field public static final METHOD_GENIE_PAY_AUDIO_DATA:I = 0x1312d02

.field public static final TAG:Ljava/lang/String; = "GenieAudioPayService"

.field private static mInstance:Lcom/alibaba/ailabs/genie/pay/GeniePayAudioService;

.field private static sHasInit:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    new-instance v0, Lcom/alibaba/ailabs/genie/pay/GeniePayAudioService;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/pay/GeniePayAudioService;-><init>()V

    sput-object v0, Lcom/alibaba/ailabs/genie/pay/GeniePayAudioService;->mInstance:Lcom/alibaba/ailabs/genie/pay/GeniePayAudioService;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static declared-synchronized getInstance()Lcom/alibaba/ailabs/genie/pay/GeniePayAudioService;
    .locals 2

    const-class v0, Lcom/alibaba/ailabs/genie/pay/GeniePayAudioService;

    monitor-enter v0

    .line 40
    :try_start_0
    sget-object v1, Lcom/alibaba/ailabs/genie/pay/GeniePayAudioService;->mInstance:Lcom/alibaba/ailabs/genie/pay/GeniePayAudioService;
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
.method public method(Landroid/os/Bundle;Lcom/alibaba/ailabs/genie/router/ipc/IpcServer$AsyncServerCallback;)V
    .locals 3

    .line 45
    sget-boolean v0, Lcom/alibaba/ailabs/genie/pay/GeniePayAudioService;->sHasInit:Z

    if-nez v0, :cond_0

    .line 46
    invoke-static {}, Lcom/alibaba/ailabs/genie/utils/ContextUtils;->get()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/pay/GeniePay;->init(Landroid/app/Application;)V

    const/4 v0, 0x1

    .line 47
    sput-boolean v0, Lcom/alibaba/ailabs/genie/pay/GeniePayAudioService;->sHasInit:Z

    :cond_0
    if-eqz p1, :cond_1

    const-string v0, "payParam"

    const-string v1, ""

    .line 51
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 52
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get geniePay data, req param="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "GenieAudioPayService"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    invoke-static {v0}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    .line 56
    invoke-static {}, Lcom/alibaba/ailabs/genie/pay/GeniePay;->getInstance()Lcom/alibaba/ailabs/genie/pay/GeniePay;

    move-result-object v0

    new-instance v1, Lcom/alibaba/ailabs/genie/pay/GeniePayAudioService$1;

    invoke-direct {v1, p0, p2}, Lcom/alibaba/ailabs/genie/pay/GeniePayAudioService$1;-><init>(Lcom/alibaba/ailabs/genie/pay/GeniePayAudioService;Lcom/alibaba/ailabs/genie/router/ipc/IpcServer$AsyncServerCallback;)V

    invoke-virtual {v0, p1, v1}, Lcom/alibaba/ailabs/genie/pay/GeniePay;->pay(Lcom/alibaba/fastjson/JSONObject;Lcom/alibaba/ailabs/genie/pay/GeniePayCallback;)V

    :cond_1
    return-void
.end method
